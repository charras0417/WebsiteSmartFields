/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function add(){
    dia=$("#dia").val();
    hora=$("#hora").val();
   
    disponibilidad ={
        dia:dia,
        hora:hora
        }

    dataToSend=JSON.stringify(disponibilidad);
    
    $.ajax({
        url : "DisponibilidadServlet",
        contentType : "application/json; charset=UTF-8",
        dataType:"JSON",
        type: "POST",
        data: dataToSend,
        success: function(result) {
            console.log(result);
            alert("Agregado!!");
            pintartabla(result);
        },
        error: function (result) {
        }

    });
}

function pintartabla(data) {
    var m = "<tr>";
    m += "<td>" + data.dia + "</td>";
    m += "<td>" + data.hora + "</td>";
    m += "<td>" + '<button class="btn btn-primary"> Borrar </button>' + "</td>";
    m += "</tr>";
    $("#contenedor").append(m);
}