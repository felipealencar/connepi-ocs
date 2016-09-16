/**
 * general.js
 *
 * Copyright (c) 2000-2010 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site-wide common JavaScript functions.
 *
 * $Id$
 */

/**
 * Prompt user for confirmation prior to loading a URL.
 */
function confirmAction(url, msg) {
	if (confirm(msg)) {
		if (url) {
			document.location.href=url;
		}
		return true;
	}
	return false;
}

/**
 * Open window displaying help.
 */
function openHelp(url) {
	window.open(url, 'Help', 'width=700,height=600,screenX=100,screenY=100,toolbar=0,scrollbars=1');
}

/**
 * Open window displaying comments.
 */
function openComments(url) {
	window.open(url, 'Comments', 'width=700,height=600,screenX=100,screenY=100,toolbar=0,resizable=1,scrollbars=1');
}

/**
 * Open window for preview.
 */
function openWindow(url) {
	window.open(url, 'Window', 'width=600,height=550,screenX=100,screenY=100,toolbar=0,resizable=1,scrollbars=1');
}

/**
 * Open window for reading tools.
 */
function openRTWindow(url) {
	window.open(url, 'RT', 'width=700,height=500,screenX=100,screenY=100,toolbar=0,resizable=1,scrollbars=1');
}
function openRTWindowWithToolbar(url) {
	window.open(url, 'RT', 'width=700,height=500,screenX=100,screenY=100,toolbar=1,resizable=1,scrollbars=1');
}

/**
 * browser object availability detection
 * @param objectId string of object needed
 * @param style int (0 or 1) if style object is needed
 * @return javascript object specific to current browser
 */
function getBrowserObject(objectId, style) {
	var isNE4 = 0;
	var currObject;

	// browser object for ie5+ and ns6+
	if (document.getElementById) {
		currObject = document.getElementById(objectId);
	// browser object for ie4+
	} else if (document.all) {
		currObject = document.all[objectId];
	// browser object for ne4
	} else if (document.layers) {
		currObject = document.layers[objectId];
		isNE4 = 1;
	} else {
		// do nothing
	}

	// check if style is needed
	if (style && !isNE4) {
		currObject = currObject.style;
	}

	return currObject;
}

/**
 * Load a URL.
 */
function loadUrl(url) {
	document.location.href=url;
}

function createCookie(name,value,days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}
	else expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

/**
 * Asynchronous request functions
 */
function makeAsyncRequest(){
	var req=(window.XMLHttpRequest)?new XMLHttpRequest():new ActiveXObject('Microsoft.XMLHTTP');
	return req;
}

function sendAsyncRequest(req, url, data, method) {
	var header = 'Content-Type:text/html; Charset=utf-8';
	req.open(method, url, true);
	req.setRequestHeader(header.split(':')[0],header.split(':')[1]);
	req.send(data);
}


/**
 * Change the form action
 * @param formName string
 * @param action string
 */
function changeFormAction(formName, action) {
	document.forms[formName].action = action;
	document.forms[formName].submit();
}

// será que tem problema isto aqui?
var stringAreas = {};
$(document).ready(function(){

		// brutagem ;-)
		if ((baseURL = window.location.origin) == "http://localhost")
		{
			baseURL += '/connepi-ocs/';
		} else {
			baseURL += '/ocs/';
		}

		/* auto complete */
    $.getJSON(baseURL + 'get.php', function(data){
        var ies = [];
        $.each(data, function(key, value){
					if (value.sigla_ies.length <= 1) {
						ies.push(value.no_ies);
					} else {
						ies.push(value.no_ies + ' - ' + value.sigla_ies);
					}
        });
        $('.affiliation-connepi').autocomplete({ source: ies, minLength: 2 });
    });

		/* form - áreas de especialidade */
    var grandesAreas = $('.grandes-areas'),
        areas = $('.areas'),
        subAreas = $('.sub-areas'),
        especialidades = $('.especialidades'),
        elem = $('#discipline');

		// select
    grandesAreas.on('change', function(){

        var self = $(this);
        if(self.val() == undefined)
        {
            return false;
        }

        //se for Multidisciplinar vai rodar algum ajax? acho que não
        if(self.val() == '90000005')
        {
					var option = self.find('option:selected').text();
					stringAreas.grandeArea = option;
					atualizarString(stringAreas);
          return false;
        }

        var option = self.find('option:selected').text();
				stringAreas.grandeArea = option;
				atualizarString(stringAreas);


        $.ajax({
            url : baseURL + 'ajax.php',
            type: 'get',
            data: {
                cod_grande_area : self.val()
            },
            success: function(response)
            {
                var novasOpcoes = '<option value="" disabled selected>Selecione</option>';
                $.each(response, function(indice, obj){
                    novasOpcoes += '<option value="' + obj.cod_area + '">' + obj.nome_area + '</option>';
                });

                areas.empty().append(novasOpcoes);
            },
            error: function(response)
            {
                alert('Entrar em contato com o suporte, algo não está legal. [grandes-areas]');
            }
        });
    }); // end grandesAreas

		// select
    areas.on('change', function(){

        var self = $(this);
        if(self.val() == undefined)
        {
            return false;
        }

        var option = self.find('option:selected').text();
        stringAreas.areas = option;
				atualizarString(stringAreas);

        $.ajax({
            url : baseURL + 'ajax.php',
            type: 'get',
            data: {
                cod_area : self.val()
            },
            success: function(response)
            {
                if(response.length > 0){
                    var novasOpcoes = '';
                    $.each(response, function(indice, obj){
												novasOpcoes += '<label><input type="checkbox" onclick="_subAreas()" name="subAreas[]" id="'+obj.nome_sub_area+'" value="'+obj.cod_sub_area+'" />'+obj.nome_sub_area+'</input></label><br>';
                    });
                }
								else{
                    var novasOpcoes = 'Nada encontrado';
                }

                subAreas.empty().append(novasOpcoes);
            },
            error: function(response)
            {
							alert('Entrar em contato com o suporte, algo não está legal. [areas]');
            }
        });
    }); // end areas
});

function _subAreas(){

	var selecionados = $('input[name="subAreas[]"]:checked');
	var stringSubAreas = [];
	var valuesSubAreas = [];

	if(selecionados.length > 1){
		$.each(selecionados, function(index, val){
			stringSubAreas.push($(val).attr('id'));
			valuesSubAreas.push($(val).val());
		});

		stringAreas.subAreas = stringSubAreas.join(', ');
	}
	else {
		stringAreas.subAreas = selecionados.attr('id');
		valuesSubAreas.push(selecionados.val());
	}
	atualizarString(stringAreas);

	$.ajax({
		url : baseURL + 'ajax.php',
		type: 'get',
		data: {
				cod_sub_area : valuesSubAreas
		},
		success: function(response)
		{
				var hasEspecialidades = 0; /* entendi isso não */
				if(response.length > 0){
					var novasOpcoes = '';
					hasEspecialidades = 1; /* entendi isso não */
					$.each(response, function(index, obj){
						novasOpcoes += '<label><input type="checkbox" onclick="_especialidades()" name="especialidades[]" id="'+obj.nome_especialidade+'" value="'+obj.cod_especialidade+'">'+obj.nome_especialidade+'</input></label><br>';
					});

				}else{
					var novasOpcoes = 'Nada encontrado';
				}

				if(valuesSubAreas[0] != undefined) {
					$('.especialidades').html(novasOpcoes);
				} else {
					$('.especialidades').empty();
				}
				atualizarString(stringAreas);

		},
		error: function(response)
		{
				alert('Entrar em contato com o suporte, algo não está legal.[especialidades]');
		}
	});
}

function _especialidades(){

	var selecionados = $('input[name="especialidades[]"]:checked');
	var stringEspecialidades = [];
	if(selecionados.length > 1){
		$.each(selecionados, function(index, val){
			stringEspecialidades.push($(val).attr('id'));
		});
		stringAreas.especialidades = stringEspecialidades.join(', ');
	}
	else {
		stringAreas.especialidades = selecionados.attr('id');
	}
	atualizarString(stringAreas);
}

function atualizarString(object)
{
	var strArr = [];
	if(!$.isEmptyObject(object)){
		$.each(object, function(index, val){
			if(val != 'Nada Encontrado'){
				strArr.push(val);
			}
		});

		var str = strArr.join(', ');
		str = str.replace(/, +$/, "");
		str = str.replace(/, +$/, "");
		// xiu, tá bonito!
		$('#discipline').val(strArr.join(', ').replace(/, +$/, ""));
	}

}
