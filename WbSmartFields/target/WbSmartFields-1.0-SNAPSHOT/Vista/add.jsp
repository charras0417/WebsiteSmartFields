<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">    
        <link href="CSS/Estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../JS/style.css">
        <%-- librerias para funciones ajax--%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <%-- librerias para funciones reloj--%>
        <link rel="stylesheet" href="http://weareoutman.github.io/clockpicker/dist/bootstrap-clockpicker.min.css">
        <script src="http://weareoutman.github.io/clockpicker/dist/bootstrap-clockpicker.min.js"></script>

        <title>Registrar Proveedor</title>

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Tienda <sup>Ton</sup></div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Interface
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Components</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Components:</h6>
                            <a class="collapse-item" href="buttons.html">Buttons</a>
                            <a class="collapse-item" href="cards.html">Cards</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Utilities</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Utilities:</h6>
                            <a class="collapse-item" href="utilities-color.html">Colors</a>
                            <a class="collapse-item" href="utilities-border.html">Borders</a>
                            <a class="collapse-item" href="utilities-animation.html">Animations</a>
                            <a class="collapse-item" href="utilities-other.html">Other</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Addons
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Login Screens:</h6>
                            <a class="collapse-item" href="login.html">Login</a>
                            <a class="collapse-item" href="register.html">Register</a>
                            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                            <div class="collapse-divider"></div>
                            <h6 class="collapse-header">Other Pages:</h6>
                            <a class="collapse-item" href="404.html">404 Page</a>
                            <a class="collapse-item" href="blank.html">Blank Page</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <li class="nav-item active">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Tables</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <form class="form-inline">
                            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                                <i class="fa fa-bars"></i>
                            </button>
                        </form>

                        <!-- Topbar Search -->
                        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Buscar..." aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>


                            <!-- Dropdown - Messages -->


                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Sergio Delgado</span>
                                    <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Información Personal
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Salir
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Input editar inforamcion usuario -->

                        <form  method="get" action="ProveedorServlet"  onsubmit="return validar_formulario();">
                            <div class="container">
                                <%-- esta es la estructura del formulario--%>

                                <h1><strong>AGREGAR PROVEEDORES</strong></h1>
                                <br>
                                <%-- formulario ingreso de datos del proveedor--%>
                                <div><h2>Datos del Proveedor</h2>

                                    <div class="row separador">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="providername" class="form-control" type="text" name="txtnomProv" placeholder="Nombre del Proveedor">
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="providerphone" class="form-control" type="tel" name="txtTelProv" placeholder="Teléfono del Proveedor" >
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="providermail" class="form-control" type="text" name="txtCorreoProv" placeholder="Email del Proveedor" >
                                        </div>
                                    </div>

                                    <%-- formulario ingreso de datos de la empresa--%>

                                    <h2>Datos de la Empresa</h2>

                                    <div class="row separador">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="companyname" class="form-control" type="text" name="txtnomEmp" placeholder="Nombre de la Empresa" >
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="companyphone" class="form-control" type="tel" name="txtTelEmp" placeholder="Teléfono de la Empresa" >
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <input id="companymail" class="form-control" type="text" name="txtCorreoEmp" placeholder="Correo de la Empresa" >
                                        </div>
                                    </div>

                                    <%-- formulario ingreso de datos del Pedido--%>

                                    <h2>Dias Disponibles</h2>

                                    <div class="row separador">

                                        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                            <label>Dia de Pedido</label>
                                        </div>

                                        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                            <select id="dia" class="form-control" type="text" name="selectDiaPedido" placeholder="Seleccione Dia Disponible">
                                                <option>Lunes</option>
                                                <option>Martes</option>
                                                <option>Miercoles</option>
                                                <option>Jueves</option>
                                                <option>Viernes</option>
                                                <option>Sabado</option>
                                                <option>Domingo</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row separador">

                                        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                            <label>Hora Disponibilidad</label>
                                        </div>
                                        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4 ">
                                            <input id="hora" class="form-control" type="time" placeholder="Seleccione la Hora" >

                                        </div>

                                        <div class="col-sm-4 col-md-4 col-lg-4 col-xl-4">
                                            <button onclick="add()" class="form-control bg-primary text-white" type="button">Añadir</button>
                                        </div>
                                    </div>
                                </div>


                                <br> <br> 

                                <!-- DataTales Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Información</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-center"  width="100%" cellspacing="0">
                                                <thead class="bg-primary text-white">
                                                    <tr>
                                                        <th>DIA</th>
                                                        <th>HORA</th>
                                                        <th>ACCION</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="contenedor">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                                <div class="container col-lg-3 ">
                                    <input class="form-control bg-primary text-white" type="submit" name="accion" value="Registrar Proveedor">
                                    <br>
                                </div>
                        </form>   
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2020</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="JS/js.js"></script>
        <script src="JS/script.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/datatables-demo.js"></script>

        <script src="js/getall.js" type="text/javascript"></script>

        <script src="JS/formulario.js" type="text/javascript"></script>

    </body>

</html>
