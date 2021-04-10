function modificar_formulario() {

    var Expresionnombre= new RegExp(/^[a-zA-ZÀ-ÿ\s]{1,30}$/); // Letras y espacios, pueden llevar acentos.
    var Expresioncorreo= new RegExp(/^[a-z0-9_.-]+@[a-z]+\.[a-z]+$/);
    var Expresiontelefono= new RegExp(/^\d{7,14}$/); // 7 a 14 numeros.

    provname=$("#modprovidername").val();
    provphone=$("#modproviderphone").val();
    provemail=$("#modprovidermail").val();
    empname=$("#modcompanyname").val();
    empphone=$("#modcompanyphone").val();
    empemail=$("#modcompanymail").val();
    id=$("#modproviderid").val();
    
    if (provname === ""||provphone === ""||provemail === ""||empname === ""||empphone === ""||empemail === "") {
        alert("Todos los campos son obligatorios!!");
        return false;
    }
    
    else if (!Expresionnombre.test(provname)) {
        alert("El nombre del Proveedor solo puede contener un maximo de 30 caracteres desde la A a la Z");
        return false;
    }
    
    else if (!Expresiontelefono.test(provphone)) {
        alert("El telefono solo puede contener numeros y debe tener minimo 7 y maximo 14 dígitos");
        return false;
    }
    
    else if (!Expresioncorreo.test(provemail)) {
        alert("El Correo de Proveedor es invalido... revise que no tenga mayúsculas o caracteres que no correspondan y vuelva a intentarlo");
        return false;
    }
    
    else if (!Expresionnombre.test(empname)) {
        alert("El nombre de la Empresa solo puede contener un maximo de 30 caracteres desde la A a la Z");
        return false;
    }
    
    else  if (!Expresiontelefono.test(empphone)) {
        alert("El telefono solo puede contener numeros y debe tener minimo 7 y maximo 14 dígitos");
        return false;
    }

    else if (!Expresioncorreo.test(empemail)) {
        alert("El Correo de la Empresa  es invalido... revise que no tenga mayúsculas o caracteres que no correspondan y vuelva a intentarlo");
        return false;
    }

    
}

