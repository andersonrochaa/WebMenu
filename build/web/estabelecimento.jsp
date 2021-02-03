
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <head>
        <%@include file="head.jsp" %>
        

        <script type="text/javascript">
            function updateEstabelecimento(txt) {
                document.forms['form_estabelecimento'].action = txt;
                document.forms['form_estabelecimento'].submit();

            }

        </script>

    </head>

    <body>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
             data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
            <!-- ============================================================== -->
            <%@include file="menu.jsp" %>    
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb bg-white">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 class="page-title text-uppercase font-medium font-14">Meu Estabelecimento</h4>
                        </div>
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <div class="d-md-flex">
                                <ol class="breadcrumb ml-auto">
                                    <li><a href="#">Dashboard</a></li>
                                </ol>
                                <a href="https://wrappixel.com/templates/ampleadmin/" target="_blank"
                                   class="btn btn-danger  d-none d-md-block pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Upgrade
                                    to Pro</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->
                            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-12">
                        <div class="white-box">
                            <div class="user-bg"> <img alt="user" src="plugins/images/large/img1.jpg">
                                <div class="overlay-box">
                                    <div class="user-content">
                                        <a href="javascript:void(0)"><img src="plugins/images/users/${imagem}"
                                                class="thumb-lg img-circle" alt="img"></a>
                                        <h4 class="text-white mt-2">${nome}</h4>
                                        <h5 class="text-white mt-2">Bar&Boteco</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="user-btm-box mt-5 d-md-flex">
                                <p>${descricao}</p>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <form class="form-horizontal form-material" id="form_estabelecimento" method="POST">
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Nome do Estabelecimento</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="text" placeholder="Padaria Pandoca, Bar do zé..."
                                                       class="form-control p-0 border-0" name="nome" value="${nome}"> </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Email</label>
                                            <div class="col-md-6 border-bottom p-0">
                                                <input type="email" placeholder="estabelecimento@web.com"
                                                       class="form-control p-0 border-0"
                                                       id="example-email"  name="email" value="${email}">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Descrição</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="email" placeholder="O melhor estabelecimento do Brasil!"
                                                       class="form-control p-0 border-0"  name="descricao" value="${descricao}" 
                                                       id="example-email">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Telefone</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="tel" placeholder="99999999999" maxlength="11"
                                                       class="form-control p-0 border-0"  name="telefone" value="${telefone}"
                                                       id="example-email">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Imagem de Perfil</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="file" 
                                                       class="form-control p-0 border-0"  name="telefone"
                                                       id="example-email">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Imagem de Banner</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="file" 
                                                       class="form-control p-0 border-0"  name="telefone"
                                                       id="example-email">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <div class="col-sm-12">
                                                <button class="btn btn-success" onclick="javascript:updateEstabelecimento('UpdateEstabelecimento');">Salvar</button>
                                            </div>
                                        </div>
                                        <label style="color: red">${status}</label>
                                    </form>                                   
                                </div>                                   
                            </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
                <!-- ============================================================== -->
                <!-- End Container fluid  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer text-center"> 2020 © Ample Admin brought to you by <a
                        href="https://www.wrappixel.com/">wrappixel.com</a>
                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="plugins/bower_components/popper.js/dist/umd/popper.min.js"></script>
        <script src="bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="js/app-style-switcher.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="js/sidebarmenu.js"></script>
        <!--Custom JavaScript -->
        <script src="js/custom.js"></script>
    </body>

</html>