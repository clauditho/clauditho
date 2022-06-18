$(document).ready(function()
                      {
                        
                        var t = $('#tabla1').DataTable(
                          
                        
                        
                        
                        {
                          "language": {
                      "decimal": ",",//separador decimales
                      "thousands": "."//Separador miles
                       },
                          
                          paging: false,
                          ordering: false,
                          info: false,
                          searching:false,

                          columnDefs: [
                            {
                                target: 7,
                                visible: false,
                                searchable: false,
                            },
                            
                        ],
                      });
                        var acumulador = 0;
                        //tbody
                        $('#tabla1 tbody').on('click', 'tr', function () {
                          
                          if ($(this).hasClass('selected')) {
                            
                            $(this).removeClass('selected');
                          } else {
                           t.$('tr.selected').removeClass('selected');
                         $(this).addClass('selected');
                      }
                        });

                        $('#borra').click(function () {
                          t.row('.selected').remove().draw(false);
                          });
                       

                            $("#btnagregar").click(function () {
                              if ($("#cantidad").val() != "" && $("#unitario").val() != "" && $("#exento").val() != "" 
                                  && $("#medida option:selected").html() != "Seleccione" && $("#gasto option:selected").html() != "Seleccione"
                              
                              ){
                                var cant = $("#cantidad").val();
                                var med = $("#medida option:selected").html();
                                var opt= $("input[name='prodserv']:checked").val();
                                
                                if (opt=='productos'){
                                    var prodServ = $("#producto option:selected").html();
                                    
                                  } 
                                else if (opt=='servicios'){
                                  var prodServ = $("#servizio").val();
                                }
                                
                                var igasto = $("#gasto option:selected").html();
                                var unit = $("#unitario").val();
                                var excent = $("#exento").val();
                                
                               
                               //var  multUnitario = t.column(4).data().sum() * parseFloat(cant);
                              

                               //resultado = (parseFloat(unit) + parseFloat(excent)) * parseFloat(cant);
                               //console.log(unit);
                                //console.log(excent);
                                uNIT = unit.split(".").join('');
                                eXENT = excent.split(".").join('');
                                console.log('unit',uNIT);
                                console.log('exent',eXENT); 
                               
                                resultado = (parseFloat(uNIT) + parseFloat(eXENT)) * parseFloat(cant);
                                console.log('resultado',resultado);
                                var data = [cant,med,prodServ,igasto,unit,excent,
                                
                                   '<button type="button" id="borra"   class="btn btn-primary"><i class="fa-solid fa-trash-can"></i></button>',
                                   resultado
                                ];
                                t.row.add(data).draw(false);

                                

                                $("#cantidad").val("");
                                $("#unitario").val("");
                                $("#exento").val("");

                                $("#medida").val('0');
                                $("#gasto").val('0');
                                $("#producto").val('0');
                                $("#servizio").val('');

                                if (opt=='productos'){
                                  $("#servv").prop("disabled", true); 
                                    
                                  } 
                                else {
                                  $("#prodserv").prop("disabled", true);
                                }

                                
                                toUni = parseFloat(t.column(7).data().sum());

                                // 123,456.67
                                //nu = Number((toUni).toFixed(2)).toLocaleString();
                                
                                nu = (toUni).toLocaleString("es-CO", {
                                  style: "currency",
                                    currency: "COP"
                                  });
                                
                                console.log('nu',nu);
                                console.log('suma',toUni);
                                $('#totUni').text(nu);
                                
                            
                            
                            };
                      
                      
                      
                      });
                        
                      


                    });