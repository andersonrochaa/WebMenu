<%-- 
    Document   : cardapio
    Created on : 27/01/2021, 17:29:38
    Author     : Alexandre
--%>

<%@page import="dao.ItemDAO"%>
<%@page import="model.ItemModel"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="model.CategoriaModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    CategoriaModel cat = new CategoriaModel();
    CategoriaDAO catdao = new CategoriaDAO();
    ItemDAO itemdao = new ItemDAO();
    List<CategoriaModel> catList = catdao.listarCategorias((Integer) session.getAttribute("user_id"));
%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

    <head>
        <link rel="stylesheet" href="css/styles-popup.css">
        <%@include file="head.jsp" %>
        <script type="text/javascript">
            function togglePopup() {
                document.getElementById("popup-1").classList.toggle("active");
            }
            function adicionaritem(txt) {
                document.forms['form_itens'].action = txt;
                document.forms['form_itens'].submit();

            }
            function excluiritem(txt) {
                document.forms['form_itens'].action = txt;
                document.forms['form_itens'].submit();

            }
        </script>
        <style>
            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 10px;
                padding: 12px 16px;
                z-index: 1;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
        </style>
    </head>

    <body data-spy="scroll" data-target=".fixed-top">
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

            <%@include file="menu.jsp" %>


            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb bg-white">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 class="page-title text-uppercase font-medium font-14">Meu Cárdapio</h4>
                        </div>
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <div class="d-md-flex">
                                <ol class="breadcrumb ml-auto">
                                    <li><a href="#">Dashboard</a></li>
                                </ol>
                                <a href="#" target="_blank"
                                   class="btn btn-danger  d-none d-md-block pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Ver cardápio</a>
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
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="white-box">
                                <div class="d-md-flex mb-3">
                                    <h3 class="box-title mb-0">Cardápio</h3>
                                    <div class="col-md-2 col-sm-4 col-xs-6 ml-auto">
                                        <!--<button class="btn btn-block btn-danger text-white"> + CATEGORIA</button>-->
                                        <!--<a href="#details-lightbox-categoria" class="btn btn-block btn-danger text-white">+ CATEGORIA</a>-->
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <form method="post" id="form_itens">
                                        <table class="table no-wrap">
                                            <%for (int i = 0; i < catList.size(); i++) {%>                                        
                                            <thead>
                                                <tr>
                                                    <th class="border-top-0">IMAGEM</th>
                                                    <th class="border-top-0"><%out.print(catList.get(i).getNome());%></th>
                                                    <th class="border-top-0">DESCRIÇÃO</th>
                                                    <th class="border-top-0">PREÇO</th>
                                                    <th class="border-top-0"><a href='excluircategoria?keycategoria=<%out.print(catList.get(i).getIdcategoria());%>'><i class="fas fa-trash-alt"></i></a></th>
                                                </tr>
                                            </thead>
                                            <%  catList.get(i).setEstabelecimento_idestabelecimento((Integer) session.getAttribute("user_id"));
                                                List<ItemModel> itens = itemdao.listarItem(catList.get(i));
                                                for (int o = 0; o < itens.size(); o++) {%>
                                            <tbody>
                                                <tr>
                                                    <td class="txt-oflo"><img src="plugins/images/users/<%out.print(session.getAttribute("user_image"));%>" alt="user-img" width="36" class="img-circle"></td>
                                                    <td class="txt-oflo"><%out.print(itens.get(o).getNome());%></td>
                                                    <td class="txt-oflo"><%out.print(itens.get(o).getDescricao());%></td>
                                                    <td class="txt-oflo"><span class="text-success">R$<%out.print(itens.get(o).getPreco());%></span></td>
                                                    <td class="txt-oflo"><div class="dropdown">
                                                            <span><i class="fas fa-angle-down"></i>&nbsp;  mais</span>
                                                            <div class="dropdown-content">
                                                                <a href="#" onclick="javascript:showEdit()" class="editLink"><i class="fas fa-edit"></i>&nbsp;Editar</a><br>
                                                                <a href="javascript:excluiritem('excluiritem?key=<%out.print(itens.get(o).getIditem());%>')"><i class="fas fa-trash-alt"></i>&nbsp;Excluir</a>
                                                            </div>
                                                        </div></td>

                                                </tr>
                                            </tbody>
                                            <%}%>
                                            <tbody>
                                                <tr style="background-color: #EEEFF0;">
                                                    <td class="txt-oflo"><input type="file"></td>
                                                    <td class="txt-oflo"><input type="text" placeholder="Nome" class="form-control p-0 border-0" name="nome<%out.print(catList.get(i).getIdcategoria());%>"></td>
                                                    <td class="txt-oflo"><input type="text" placeholder="Descrição" class="form-control p-0 border-0" name="descricao<%out.print(catList.get(i).getIdcategoria());%>"></td>  
                                                    <td class="txt-oflo"><input type="number" placeholder="Preço" class="form-control p-0 border-0" name="preco<%out.print(catList.get(i).getIdcategoria());%>" ></td> 
                                                    <td class="txt-oflo"><button onclick="javascript:adicionaritem('criaritem?keycategoria=<%out.print(catList.get(i).getIdcategoria());%>')">Add Item</button></td>
                                                </tr>
                                            </tbody>
                                            <%}%>
                                        </table>
                                    </form>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <div class="white-box">
                                <div class="d-md-flex mb-3">
                                    <h3 class="box-title mb-0">Adicionar Categoria</h3>
                                    <div class="col-md-2 col-sm-4 col-xs-6 ml-auto">
                                        <!--<button class="btn btn-block btn-danger text-white"> + CATEGORIA</button>-->
                                        <!--<a href="#details-lightbox-categoria" class="btn btn-block btn-danger text-white">+ CATEGORIA</a>-->
                                    </div>
                                </div>
                                <form action="criarcategoria" method="post">
                                    <input type = "Text" name="nome" placeholder="Nome da Categoria" required="required">
                                    <input type = "Submit" value="Adicionar">
                                </form>
                            </div>
                        </div>
                    </div>   
                </div>
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
                    <div class="popup-container hide"></div>

        <form class="popup-form hide" action="#" method="POST">
            <h1>Editar Item</h1>
            <input class="input-field" type="file" />

            <input class="input-field" type="password" name="password" placeholder="Password" required />
            <input class="input-field submit-btn" type="submit" name="submit" value="Login">

            <!-- close btn -->
            <div class="close-btn">&times;</div>
        </form>
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->

        <script src="js/popup-effect.js"></script>
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