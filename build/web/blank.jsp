<%-- 
    Document   : blank
    Created on : 27/01/2021, 16:48:38
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
        <%@include file="head.jsp" %>
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

        <%@include file="menu.jsp" %>

        <div class="page-wrapper" style="min-height: 250px;">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb bg-white">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title text-uppercase font-medium font-14">Profile Page</h4>
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
        <div id="features" class="tabs">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>FEATURES</h2>
                        <div class="p-heading p-large">Leno was designed based on input from personal development coaches and popular trainers so it offers all</div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">

                    <!-- Tabs Links -->
                    <ul class="nav nav-tabs" id="lenoTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true"><i class="fas fa-cog"></i>CONFIGURING</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false"><i class="fas fa-binoculars"></i>TRACKING</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="nav-tab-3" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false"><i class="fas fa-search"></i>MONITORING</a>
                        </li>
                    </ul>
                    <!-- end of tabs links -->


                    <!-- Tabs Content-->
                    <div class="tab-content" id="lenoTabsContent">

                        <!-- Tab -->
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
                            <div class="container">
                                <div class="row">

                                    <!-- Icon Cards Pane -->
                                    <div class="col-lg-4">
                                        <div class="card left-pane first">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Goal Setting</h4>
                                                    <p>Like any self improving process, everything starts with setting your goals and committing to them</p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="far fa-compass"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card left-pane">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Visual Editor</h4>
                                                    <p>Leno provides a well designed and ergonomic visual editor for you to edit your notes and input data</p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="far fa-file-code"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card left-pane">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Refined Options</h4>
                                                    <p>Each option packaged in the app's menus is provided in order to improve your personal development status</p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="far fa-gem"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of icon cards pane -->

                                    <!-- Image Pane -->
                                    <div class="col-lg-4">
                                        <img class="img-fluid" src="images/features-iphone-1.png" alt="alternative">
                                    </div>
                                    <!-- end of image pane -->

                                    <!-- Icon Cards Pane -->
                                    <div class="col-lg-4">
                                        <div class="card right-pane first">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="far fa-calendar-check"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Calendar Input</h4>
                                                    <p>Schedule your appointments, meetings and periodical evaluations using the provided in-app calendar option</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card right-pane">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="far fa-bookmark"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Easy Reading</h4>
                                                    <p>Reading focus mode for long form articles, ebooks and other materials which involve large text areas</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card right-pane">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="fas fa-cube"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Good Foundation</h4>
                                                    <p>Get a solid foundation for your self development efforts. Try Leno mobile app for any mobile platform</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of icon cards pane -->

                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        <!-- Tab -->
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
                            <div class="container">
                                <div class="row">

                                    <!-- Image Pane -->
                                    <div class="col-md-4">
                                        <img class="img-fluid" src="images/features-iphone-2.png" alt="alternative">
                                    </div>
                                    <!-- end of image pane -->

                                    <!-- Text And Icon Cards Area -->
                                    <div class="col-md-8">
                                        <div class="text-area">
                                            <h3>Track Result Based On Your</h3>
                                            <p>After you've configured the app and settled on the data gathering techniques you can not start the information trackers and start collecting those <a class="turquoise" href="#your-link">interesting details</a>. You can always change them.</p>
                                        </div> <!-- end of text-area -->

                                        <div class="icon-cards-area">
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="fas fa-cube"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Good Foundation</h4>
                                                    <p>Get a solid foundation for your self development efforts. Try Leno mobile app for any mobile platform</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-bookmark"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Easy Reading</h4>
                                                    <p>Reading focus mode for long form articles, ebooks and other materials which involve large text areas</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-calendar-check"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Calendar Input</h4>
                                                    <p>Schedule your appointments, meetings and periodical evaluations using the provided in-app calendar option</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-file-code"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Visual Editor</h4>
                                                    <p>Leno provides a well designed and ergonomic visual editor for you to edit your notes and input data</p>
                                                </div>
                                            </div>
                                        </div> <!-- end of icon cards area -->
                                    </div> <!-- end of col-md-8 -->
                                    <!-- end of text and icon cards area -->

                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        <!-- Tab -->
                        <div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
                            <div class="container">
                                <div class="row">

                                    <!-- Text And Icon Cards Area -->
                                    <div class="col-md-8">
                                        <div class="icon-cards-area">
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-calendar-check"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Calendar Input</h4>
                                                    <p>Schedule your appointments, meetings and periodical evaluations using the provided in-app calendar option</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-file-code"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Visual Editor</h4>
                                                    <p>Leno provides a well designed and ergonomic visual editor for you to edit your notes and input data</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="fas fa-cube"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Good Foundation</h4>
                                                    <p>Get a solid foundation for your self development efforts. Try Leno mobile app for any mobile platform</p>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-icon">
                                                    <i class="far fa-bookmark"></i>
                                                </div>
                                                <div class="card-body">
                                                    <h4 class="card-title">Easy Reading</h4>
                                                    <p>Reading focus mode for long form articles, ebooks and other materials which involve large text areas</p>
                                                </div>
                                            </div>
                                        </div> <!-- end of icon cards area -->

                                        <div class="text-area">
                                            <h3>Monitoring Tools Evaluation</h3>
                                            <p>Monitor the evolution of your finances and health state using tools integrated in Leno. The generated real time reports can be filtered based on any <a class="turquoise" href="#your-link">desired criteria</a>.</p>
                                        </div> <!-- end of text-area -->
                                    </div> <!-- end of col-md-8 -->
                                    <!-- end of text and icon cards area -->

                                    <!-- Image Pane -->
                                    <div class="col-md-4">
                                        <img class="img-fluid" src="images/features-iphone-3.png" alt="alternative">
                                    </div>
                                    <!-- end of image pane -->

                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div><!-- end of tab-pane -->
                        <!-- end of tab -->

                    </div> <!-- end of tab-content -->
                    <!-- end of tabs content -->

                </div> <!-- end of row --> 
            </div> <!-- end of container --> 
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