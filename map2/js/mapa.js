var map;
var markers = [];
var markersCampus = [];
var idInfoBoxAberto;
var infoBox = [];
var bermudaTriangle;
var regiaoAlagoas;
var alagoas = 0;
			
function initialize() {
    var latlng = new google.maps.LatLng(-9.9028476, -36.2342064,9);
	
	var options = {
	    zoom : 9,
		center: latlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		mapTypeControl: false,
		streetViewControl: false,
		panControl: true,
		panControlOptions: {
		    position: google.maps.ControlPosition.RIGHT_TOP
		},
		zoomControl: true,
		zoomControlOptions: {
			style: google.maps.ZoomControlStyle.HORIZONTAL_BAR,
			position: google.maps.ControlPosition.RIGHT_TOP
		}
		
	};
	
	map = new google.maps.Map(document.getElementById("map-canvas"), options);
		
	map.controls[google.maps.ControlPosition.TOP_LEFT].push(
						document.getElementById('menu'));
}

initialize();
function info(a) {
	  var dc = document.getElementById('grafico_menu');
	  
	  if(a.value == 2){
	      $(function () {
			$('#grafico_menu').highcharts({
				chart: {
					plotBackgroundColor: null,
					plotBorderWidth: null,
					plotShadow: false
				},
				title: {
					text: 'Distribuição dos Grupos de Pesquisa por Grande Área'
				},
				tooltip: {
					pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				},
				plotOptions: {
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						dataLabels: {
							enabled: true,
							format: '<b>{point.name}</b>: {point.percentage:.1f} %',
							style: {
								color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
							}
						}
					}
				},
				series: [{
					type: 'pie',
					name: 'Total',
					data: [
						['Ciências Biológicas',   2],
						['Ciências da Saúde',       3],
						{
							name: 'Ciências Exatas <br><b>e da Terra</b>',
							y: 21,
							sliced: true,
							selected: true
						},
						['Engenharias',    10],
						['Ciências Agrárias',     5],
						['Linguística, Letras <br><b>e Arte</b>',   7],
						['Ciências Humanas',   15],
						['Ciências Sociais<br><b>e Aplicada</b>',   3]
					]
				}]
			});
		});    
	  }
	  else if(a.value == 3){
	      $(function () {
				$('#grafico_menu').highcharts({
					chart: {
						type: 'area'
					},
					title: {
						text: 'Ingresso de Servidores no IFAL'
					},
					subtitle: {
						text: 'Fonte: IFAL'
					},
					xAxis: {
						categories: ['1992', '2005', '2006', '2007', '2008', '2009', '2010', '2013', '2014'],
						tickmarkPlacement: 'on',
						title: {
							enabled: false
						}
					},
					yAxis: {
						title: {
							text: 'Quantidade'
						},
						labels: {
							formatter: function() {
								return this.value;
							}
						}
					},
					tooltip: {
						shared: true,
						valueSuffix: ' '
					},
					plotOptions: {
						area: {
							stacking: 'normal',
							lineColor: '#666666',
							lineWidth: 1,
							marker: {
								lineWidth: 1,
								lineColor: '#666666'
							}
						}
					},
					series: [{
						name: 'Servidores',
						data: [1, 183, 6, 1, 52, 28, 21, 16, 99, 764, 252]
					}]
				});
			});
	  }
	  else{
	      $(function () {
        $('#grafico_menu').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Alagoas'
            },
            subtitle: {
                text: 'Quantidade de Pesquisadores</a>'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: 0,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
            },
            series: [{
                name: 'Population',
                data: [
                    ['Graduado', 88],
                    ['Especialista', 67],
                    ['Mestre', 55],
                    ['Doutor', 30],
                   
                ],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
	  }
	}
function grafico_ifal() {
	var dc = document.getElementById('desc_menu');
	dc.innerHTML = "Alagoas<br><a target='blanket_' href='http://www2.ifal.edu.br'>www2.ifal.edu.br</a>";
	var cb = document.getElementById('graficos');
	cb.innerHTML = "<hr><b>Graficos</b><select onChange='info(this)'><option value='1'>Professores</option><option value='2'>Distribuição dos Grupos</option><option value='3'>Ingresso de Servidores</option></select>";
	var div = document.getElementById('grafico_menu');
	//div.className = 'home-control';
	div.title = 'Grafico';
	
	
	//div.innerHTML = '';
	$(function () {
        $('#grafico_menu').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Alagoas'
            },
            subtitle: {
                text: 'Quantidade de Pesquisadores</a>'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: 0,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
            },
            series: [{
                name: 'Population',
                data: [
                    ['Graduado', 88],
                    ['Especialista', 67],
                    ['Mestre', 55],
                    ['Doutor', 30],
                   
                ],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
}

function grafico_sertao_alagoano() {
	var cb = document.getElementById('graficos');
	cb.innerHTML = '<hr>';
	var div = document.getElementById('grafico_menu');
	//div.className = 'home-control';
	div.title = 'Grafico';
	//div.innerHTML = '';
	$(function () {
        $('#grafico_menu').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Sertão Alagoano'
            },
            subtitle: {
                text: 'Quantidade de Pesquisadores</a>'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: 0,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
            },
            series: [{
                name: 'Population',
                data: [
                    ['Graduado', 88],
                    ['Especialista', 67],
                    ['Mestre', 55],
                    ['Doutor', 30],
                   
                ],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
}

function grafico_agreste_alagoano() {
	var cb = document.getElementById('graficos');
	cb.innerHTML = '<hr>';
	
	var div = document.getElementById('grafico_menu');
	//div.className = 'home-control';
	div.title = 'Grafico';
	//div.innerHTML = '';
	$(function () {
        $('#grafico_menu').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Agreste Alagoano'
            },
            subtitle: {
                text: 'Quantidade de Pesquisadores</a>'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: 0,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
            },
            series: [{
                name: 'Population',
                data: [
                    ['Graduado', 88],
                    ['Especialista', 67],
                    ['Mestre', 55],
                    ['Doutor', 30],
                   
                ],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
}

function grafico_leste_alagoano() {
	var cb = document.getElementById('graficos');
	cb.innerHTML = '<hr>';
	
	var div = document.getElementById('grafico_menu');
	//div.className = 'home-control';
	div.title = 'Grafico';
	//div.innerHTML = '';
	$(function () {
        $('#grafico_menu').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Leste Alagoano'
            },
            subtitle: {
                text: 'Quantidade de Pesquisadores</a>'
            },
            xAxis: {
                type: 'category',
                labels: {
                    rotation: 0,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
            },
            series: [{
                name: 'Population',
                data: [
                    ['Graduado', 88],
                    ['Especialista', 67],
                    ['Mestre', 55],
                    ['Doutor', 30],
                   
                ],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
}

function abrirInfoBox(id, marker) {
	if (typeof(idInfoBoxAberto) == 'number' && typeof(infoBox[idInfoBoxAberto]) == 'object') {
		infoBox[idInfoBoxAberto].close();
	}

	infoBox[id].open(map, marker);
	idInfoBoxAberto = id;
}


/***** MARKERS *****/
function carregarPontos() {
 
    $.getJSON('js/pontos.json', function(pontos) {
        
		var latlngbounds = new google.maps.LatLngBounds();
		
        $.each(pontos, function(index, ponto) {
 
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(ponto.Latitude, ponto.Longitude),
                title:  ponto.Nome ,
				//icon: 'http://congressos.ifal.edu.br/map/img/red_icon.png',
                map: map
            });
			if(ponto.Id == 1){
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>" ,
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			}else{
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>"  ,
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			}

			infoBox[ponto.Id] = new InfoBox(myOptions);
			infoBox[ponto.Id].marker = marker;
			
			infoBox[ponto.Id].listener = google.maps.event.addListener(marker, 'click', function (e) {
				//abrirInfoBox(ponto.Id, marker);
				map.setCenter(marker.getPosition());
				
				if(ponto.Id == 1 && alagoas == 0 ){
					grafico_ifal();
					alagoas = 1;
					carregarCampus();
					var ctaLayer = new google.maps.KmlLayer('http://congressos.ifal.edu.br/map/camadas/mesoregiao_al.kml');					
					ctaLayer.setMap(map);
					google.maps.event.addListener(ctaLayer, 'click', function(ctaLayer) {
					var text = ctaLayer.featureData.name;					
					
					if(text == "Agreste Alagoano"){					    						
						grafico_agreste_alagoano();		
					}else if(text == "Leste Alagoano")
					    grafico_leste_alagoano();
					else 
					    grafico_sertao_alagoano();
				  });				  
				}else if(ponto.Id == 1 ){
				    grafico_ifal();
				}
				else if(ponto.Id == 2){
				    deletarMark();
				}
			});
		    
			markers.push(marker);
			latlngbounds.extend(marker.position);
        });
	    
		//var markerCluster = new MarkerClusterer(map, markers);
		map.fitBounds(latlngbounds);
    });
 
}
 
function carregarCampus() {
    
    $.getJSON('js/pontosCampus.json', function(pontos) {
        
		var latlngbounds = new google.maps.LatLngBounds();
		
        $.each(pontos, function(index, ponto) {
 
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(ponto.Latitude, ponto.Longitude),
                title:  ponto.Nome ,
				icon: 'img/marcador.png',
                map: map
            });
			if(ponto.Id == 11)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			else if(ponto.Id == 13)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			else if(ponto.Id == 14)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			else if(ponto.Id == 15)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			else if(ponto.Id == 16)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
			else if(ponto.Id == 110)
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};else{
			var myOptions = {
				content: "<p>" + ponto.Descricao + "</p>",
				pixelOffset: new google.maps.Size(-150, 0)
        	};
}
			infoBox[ponto.Id] = new InfoBox(myOptions);
			infoBox[ponto.Id].marker = marker;
			
			infoBox[ponto.Id].listener = google.maps.event.addListener(marker, 'click', function (e) {
				abrirInfoBox(ponto.Id, marker);
				map.setZoom(12);
				map.setCenter(marker.getPosition());
			});
		    
			markersCampus.push(marker);
			latlngbounds.extend(marker.position);
        });
	    
		var markerCluster = new MarkerClusterer(map, markersCampus);
		map.fitBounds(latlngbounds);
    });
 
}
 
carregarPontos();