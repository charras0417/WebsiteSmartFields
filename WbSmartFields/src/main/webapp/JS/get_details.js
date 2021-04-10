
userId = null;

function get_details(id_user){
    
    $.ajax({
        
        type : "POST",
        url : "edit_return.jsp",
        data : {"id_user": id_user},
        
        success: function(data){
            
            isNew = false;
            var obj = JSON.parse(data);
            userId = obj[0].id_user
            
            $('#nombre').val(obj[0].nombre),
            $('#apellido').val(obj[0].apellido),
            $('#cedula').val(obj[0].cedula),
            $('#email').val(obj[0].email)
            
            
        }        
    });
    
}