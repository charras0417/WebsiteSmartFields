/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {         
            $.ajax({            
		url : "ServletMostrarTabla",
		contentType : "application/json; charset=UTF-8",
		dataType:"JSON",
		type : "GET",
		success : function(data) {                    
                    $('#addTab').dataTable({
                        "aaData":data,
                        "aoColumns":[
                            {"sTitle": "ID","mData": "IdProducto"},
                            {"sTitle": "NombreProducto","mData": "NombreProducto"},
                            {"sTitle": "Categoria","mData": "categoria"},
                            {"sTitle": "Precio","mData": "Precio"},
                            {"sTitle": "Cantidad","mData": "Cantidad"},
                            {"sTitle": "Ganancia por Unidad","mData": "GananciaPorUnidad"},
                            {
                                "sTitle": 
                                "Edit",
                                "mData": "IdProducto" ,
                                "render" : function(mData,type,row,meta)
                                {                                   
                                    return '<button class="btn btn-success" id=btEdit"> Editar </button>';
                                }
                            
                            },
                             {
                                "sTitle": 
                                "Delete",
                                "mData": "IdProducto",
                                "render" : function(mData,type,row,meta)
                                {
                                    return '<button class="btn btn-danger" id="btElim"> Borrar </button>';
                                }
                            
                                },                            
                        ]
                    });
                }   
            });
            $('#addTab tbody').on( 'click', 'button', function () {
                var data = table.row( $(this).parents('tr') ).data();
                alert( data[1] +"'s salary is: "+ data[5] );
            } );            
            $('#b1').click(function(){
                alert('Exitoso 1')
            });
            $('#b2').click(function(){
                alert('Exitoso 2')
            });            
    })  
    
    
  