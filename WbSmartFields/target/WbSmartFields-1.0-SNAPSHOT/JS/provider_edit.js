
function provider_edit(id)
{
    identificador={id: id}
    dataToSend=JSON.stringify(identificador);
    $.ajax({
        url : "Editar.jsp",
        contentType : "application/json; charset=UTF-8",
        dataType:"JSON",
        type: "GET",
        data: dataToSend,
        success: function(data)
        {
            
            
            
            
        }
    });
}


