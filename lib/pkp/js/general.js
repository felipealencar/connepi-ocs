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

/**
 * Autocomplete
**/
$(document).ready(function(){

    $.getJSON('//localhost/connepi-ocs/get.php', function(data){
        var ies = [];
        $.each(data, function(key, value){
					if (value.sigla_ies.length <= 1) {
						ies.push(value.no_ies);
					} else {
						ies.push(value.no_ies + ' - ' + value.sigla_ies);
					}
        });
        $('.affiliation-connepi').autocomplete({
            source: ies, minLength: 2
        });
    });

    var grandesAreas = $('.grandes-areas'),
        areas = $('.areas'),
        subAreas = $('.sub-areas'),
        especialidades = $('.especialidades'),
        baseURL = window.location.origin + '/connepi-ocs/',
        stringAreas = {};


    grandesAreas.on('change', function(){
        
        var self = $(this);
        if(self.val() == undefined)
        {
            return false;
        }

        //se for Outras vai rodar algum ajax? acho que não
        if(self.val() == '90000005')
        {
            return false;
        }

        var option = self.find('option:selected').text();
        stringAreas.grandeArea = option;
        

        $.ajax({
            url : baseURL + 'ajax.php',
            type: 'get',
            data: {
                cod_grande_area : self.val()
            },
            success: function(response)
            {
                var novasOpcoes = '<option value="">Selecione</option>';
                $.each(response, function(indice, obj){
                    novasOpcoes += '<option value="'+obj.cod_area+'">'+obj.nome_area+'</option>';
                });

                areas.empty().append(novasOpcoes);
            },
            error: function(response)
            {
                alert('Entrar em contato com o suporte, algo não está legal');
            }
        });

    });

    areas.on('change', function(){

        var self = $(this);
        if(self.val() == undefined)
        {
            return false;
        }

        var option = self.find('option:selected').text();
        stringAreas.areas = option;

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
                        novasOpcoes += '<option value="'+obj.cod_sub_area+'">'+obj.nome_sub_area+'</option>';
                    });

                }else{
                    var novasOpcoes = '<option value="">Nada Encontrado</option>';
                }
                
                subAreas.empty().append(novasOpcoes);
            },
            error: function(response)
            {
                alert('Entrar em contato com o suporte, algo não está legal');
            }
        });

    });

    subAreas.on('change', function(){

        var self = $(this);
        if(self.val() == undefined)
        {
            return false;
        }

        var option = $(this).find('option:selected');

        if(option.length > 1){
    		
    		var strOption = [];
    		
    		$.each(option, function(index, val){
    			var text = $(val).text();
    			strOption.push(text);
    		});

    		stringAreas.subAreas = strOption.join(', ');

    	}else{
        	stringAreas.subAreas = option.text();
        }

        $.ajax({
            url : baseURL + 'ajax.php',
            type: 'get',
            data: {
                cod_sub_area : self.val()
            },
            success: function(response)
            {
                if(response.length > 0){
                    var novasOpcoes = '';
                    
                    $.each(response, function(indice, obj){
                        novasOpcoes += '<option value="'+obj.cod_especialidade+'">'+obj.nome_especialidade+'</option>';
                    });

                }else{
                    var novasOpcoes = '<option value="">Nada Encontrado</option>';
                }
                
                especialidades.empty().append(novasOpcoes);

            },
            error: function(response)
            {
                alert('Entrar em contato com o suporte, algo não está legal');
            }
        });

    });

    especialidades.on('change', function(){
    	var strArr = [];

    	var option = $(this).find('option:selected');

    	if(option.length > 1){
    		
    		var strOption = [];
    		
    		$.each(option, function(index, val){
    			var text = $(val).text();
    			strOption.push(text);
    		});
    		stringAreas.especialidades = strOption.join(', ');
    	}else{
        	stringAreas.especialidades = option.text();
        }

		$.each(stringAreas, function(index, val){
			strArr.push(val);
		})

		var str = strArr.join(', ');
		$('#discipline').val(str);
		
    });

});
