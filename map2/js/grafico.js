$(function () {
        $('#content-window').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'Professores'
            },
            subtitle: {
                text: 'Quantidade de pesquisadores'
            },
            xAxis: {
                categories: [
                    'Especialista',
                    'Mestre',
                    'Doutor'
                    
                ]
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Quantidade'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:.1f} qt</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'Especialista',
                data: [49.9, 71.5, 106.4]
    
            }, {
                name: 'Mestre',
                data: [83.6, 78.8, 98.5]
    
            }, {
                name: 'Doutor',
                data: [48.9, 38.8, 39.3]
    
            }, {
                name: 'Graduado',
                data: [42.4, 33.2, 34.5]
    
            }]
        });
    });