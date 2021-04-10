$(document).ready(function getall()
{
    $('#MostrarProveedor').dataTable().fnDestroy();

    $.ajax({

        url: "ProveedorServlet",
        contentType: "application/json; charset=UTF-8",
        type: "POST",
        dataType: "JSON",

        success: function (data)
        {
            console.log(data);
            $('#MostrarProveedor').dataTable({

                "aaData": data,
                "scrollX": true,
                
                "aoColumns": [
                    {"sTitle": "Nombre Proveedor", "mData": "nameProv"},
                    {"sTitle": "Telefono Proveedor", "mData": "phoneProv"},
                    {"sTitle": "Correo Proveedor", "mData": "emailProv"},
                    {"sTitle": "Nombre Empresa", "mData": "nameEmp"},
                    {"sTitle": "Telefono Empresa", "mData": "phoneEmp"},
                    {"sTitle": "Correo Empresa", "mData": "emailEmp"},

                    {
                        "sTitle":
                                "Edit",
                        "mData": "id",
                        "render": function (mData, type, row, meta)
                        {
                            return '<a class="btn btn-success" href="ProveedorServlet?accion=Editar&id=' + mData + '"> Editar </a>';
                        }

                    },

                    {
                        "sTitle":
                                "Delete",
                        "mData": "id",
                        "render": function (mData, type, row, meta)
                        {
                            return '<a class="btn btn-danger" href="ProveedorServlet?accion=Eliminar&id=' + mData + '"> Eliminar </a>';
                        }

                    },
                ]

            });

        }

    });

});

