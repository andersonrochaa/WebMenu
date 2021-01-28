<%-- 
    Document   : index
    Created on : 25/01/2021, 14:52:42
    Author     : Alexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- SEO Meta Tags -->
        <meta name="description" content="Free mobile app HTML landing page template to help you build a great online presence for your app which will convert visitors into users">
        <meta name="author" content="Inovatik">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta property="og:type" content="article" />

        <!-- Website Title -->
        <title>Leno - Free Mobile App Landing Page Template</title>

        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/fontawesome-all.css" rel="stylesheet">
        <link href="css/swiper.css" rel="stylesheet">
        <link href="css/magnific-popup.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

        <!-- Favicon  -->
        <link rel="icon" href="images/favicon.png">


        <script type="text/javascript">
            function registrar(txt) {
                let senha = document.getElementById("senha1_reg").value;
                let senha2 = document.getElementById("senha2_reg").value;
                var msg = document.getElementById("cmsgSubmit");
                if (senha == senha2) {
                    if (senha.length >= 8) {
                        document.forms['form_register'].action = txt;
                        document.forms['form_register'].submit();
                    } else {
                        msg.innerText = "Mínimo de 8 caracteres na senha!";
                    }
                } else {
                    msg.innerText = "Oops! Você digitou senhas diferentes!";
                }
            }

            function entrar(txt) {
                document.forms['form_login'].action = txt;
                document.forms['form_login'].submit();

            }

        </script>



    </head>
    <%@include file="validarsessao.jsp" %>
    <body data-spy="scroll" data-target=".fixed-top">

        <!-- Preloader -->
        <div class="spinner-wrapper">
            <div class="spinner">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
        <!-- end of preloader -->

        <!-- Navbar -->
        <nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top">
            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Leno</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.jsp"><img src="images/logo.svg" alt="alternative"></a> 

            <!-- Mobile Menu Toggle Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-awesome fas fa-bars"></span>
                <span class="navbar-toggler-awesome fas fa-times"></span>
            </button>
            <!-- end of mobile menu toggle button -->

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-login">ENTRAR</a>
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-register">REGISTRAR</a>
                    </li>  
                </ul>

                <!--
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span> -->
            </div> 

        </nav> <!-- end of navbar -->
        <!-- end of navbar -->

        <!-- Header -->
        <header id="header" class="header">
            <div class="header-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="text-container">
                                <h1>CARDÁPIOS <br>PARA <span id="js-rotating"> MERCADOS, ADEGAS, BARES</span></h1>
                                <p class="p-large">Tenha o cardápio do seu estabelecimento de forma 100% digital! Nunca ficou tão fácil de compartilhar seus produtos para seus clientes!</p>
                                <a class="btn-solid-lg popup-with-move-anim" href="#details-lightbox-register">REGISTRE-SE</a>
                                <a class="btn-solid-lg page-scroll" href="#features">CARDÁPIO EXEMPLO</a>
                            </div>
                        </div> <!-- end of col -->
                        <div class="col-lg-6">
                            <div class="image-container">
                                <img class="img-fluid" src="images/header-iphone.png" alt="alternative">
                            </div> <!-- end of image-container -->
                        </div> <!-- end of col -->
                    </div> <!-- end of row -->
                </div> <!-- end of container -->
            </div> <!-- end of header-content -->
        </header> <!-- end of header -->
        <!-- end of header -->


        <!-- Testimonials -->
        <div class="slider-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Card Slider -->
                        <div class="slider-container">
                            <div class="swiper-container card-slider">
                                <div class="swiper-wrapper">

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-1.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">I just finished my trial period and was so amazed with the support and results that I purchased Leno.</p>
                                                <p class="testimonial-author">Jude Thorn - Designer</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-2.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">I don't know how I managed to get work done without Leno. The speed of this application is amazing!</p>
                                                <p class="testimonial-author">Roy Smith - Developer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-3.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">This app has the potential of becoming a mandatory tool in every marketer's day to day operations.</p>
                                                <p class="testimonial-author">Marsha Singer - Marketer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-4.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">Searching for a great marketing automation app was difficult but thankfully I found Leno.</p>
                                                <p class="testimonial-author">Tim Shaw - Designer</p>
                                            </div>
                                        </div>
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-5.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">Leno's support team is amazing. They've helped me with some issues and I am so grateful to them.</p>
                                                <p class="testimonial-author">Lindsay Spice - Marketer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <div class="card">
                                            <img class="card-image" src="images/testimonial-6.jpg" alt="alternative">
                                            <div class="card-body">
                                                <p class="testimonial-text">Who would have thought that Leno can provide such amazing results in just a few weeks of use</p>
                                                <p class="testimonial-author">Ann Black - Developer</p>
                                            </div>
                                        </div>        
                                    </div> <!-- end of swiper-slide -->
                                    <!-- end of slide -->

                                </div> <!-- end of swiper-wrapper -->

                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->

                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of card slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-1 -->
        <!-- end of testimonials -->


        <!-- Features -->
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
        </div> <!-- end of tabs -->
        <!-- end of features -->


        <!-- Video -->
        <div id="preview" class="basic-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>PREVIEW</h2>
                        <div class="p-heading p-large">Target the right customers for your business with the help of Leno's patented segmentation technology</div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Video Preview -->
                        <div class="image-container">
                            <div class="video-wrapper">
                                <a class="popup-youtube" href="https://www.youtube.com/watch?v=fLCjQJCekTs" data-effect="fadeIn">
                                    <img class="img-fluid" src="images/video-frame.jpg" alt="alternative">
                                    <span class="video-play-button">
                                        <span></span>
                                    </span>
                                </a>
                            </div> <!-- end of video-wrapper -->
                        </div> <!-- end of image-container -->
                        <!-- end of video preview -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-1 -->
        <!-- end of video -->


        <!-- Details 1 -->
        <div id="details" class="basic-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <img class="img-fluid" src="images/details-1-iphone.png" alt="alternative">
                    </div> <!-- end of col -->
                    <div class="col-lg-6">
                        <div class="text-container">
                            <h3>Goals Setting</h3>
                            <p>Leno can easily help you track your personal development evolution if you take the time to properly setup your goals at the beginning of the training process. Check out the details</p>
                            <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-1">LIGHTBOX</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-2 -->
        <!-- end of details 1 -->


        <!-- Details 2 -->
        <div class="basic-3">
            <div class="second">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="text-container">
                                <h3>Calendar Input</h3>
                                <p>The calendar input function enables the user to setup training, meditation and relaxation sessions with ease. Just open the feature and start setting up your time as you desire</p>
                                <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-2">LIGHTBOX</a>
                            </div> <!-- end of text-container -->
                        </div> <!-- end of col -->
                        <div class="col-lg-6">
                            <img class="img-fluid" src="images/details-2-iphone.png" alt="alternative">
                        </div> <!-- end of col -->
                    </div> <!-- end of row -->
                </div> <!-- end of container -->
            </div> <!-- end of second -->
        </div> <!-- end of basic-3 -->    
        <!-- end of details 2 -->


        <!-- Details Lightboxes -->
        <!-- Lightbox -->
        <div id="details-lightbox-login" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-5">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>

                <div class="col-lg-6">
                    <h3>ENTRAR</h3>
                    <hr>
                    <form id="form_login" data-toggle="validator" data-focus="false" method="POST">
                        <div class="form-group">
                            <input type="email" class="form-control-input" name="email">
                            <label class="label-control">E-mail</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" name="senha">
                            <label class="label-control">senha</label>
                            <div class="help-block with-errors"></div>
                        
                            <a class="btn-solid-reg" href="#" onclick="entrar('EntrarServlet')">ENTRAR</a>
                        </div>
                        <div class="form-group">
                            <center>
                                <p><a href="">Esqueci minha senha</a></p>
                            </center>
                        </div>                       
                        <div class="form-message">
                            <div id="cmsgSubmit" class="p-small text-center hidden"></div>
                        </div>
                    </form>

                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-register" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-5">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>REGISTRAR</h3>
                    <hr>
                    <form id="form_register" data-toggle="validator" data-focus="false"  method="POST">
                        <div class="form-group">
                            <input type="email" class="form-control-input" name="email">
                            <label class="label-control">E-mail</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" name="senha" id="senha1_reg" maxlength="12">
                            <label class="label-control">Senha</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" id="senha2_reg" size="12">
                            <label class="label-control">Confirmar senha</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <input type="text" class="form-control-input" name="nome">
                            <label class="label-control">Nome</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="tel" class="form-control-input" maxlength="11" name="telefone">
                            <label class="label-control">Telefone</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">                           
                            <a class="btn-solid-reg" href="#" onclick="registrar('CadastrarServlet')">REGISTRAR</a>
                        </div>
                        <div class="form-message">
                            <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                        </div>

                    </form>

                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-1" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-6">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>Goals Setting</h3>
                    <hr>
                    <p>Leno can easily help you track your personal development evolution if you take the time to set it up.</p>
                    <h4>User Feedback</h4>
                    <p>This is a great app which can help you save time and make your live easier. And it will help improve your productivity levels.</p>
                    <p>You should definitely give it a try when you need a good app.</p>
                    <table>
                        <tr><td class="icon-cell"><i class="fas fa-desktop"></i></td><td>Responsive layout</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-bullhorn"></i></td><td>Distinctive CTAs</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-image"></i></td><td>Image gallery slider</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-envelope"></i></td><td>Contact forms</td></tr>
                        <tr><td class="icon-cell"><i class="fab fa-font-awesome-flag"></i></td><td>FontAwesome icons</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-code"></i></td><td>Well-structured code</td></tr>
                    </table>
                    <a class="btn-solid-reg" href="#your-link">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#details">BACK</a> 
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-2" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-6">
                    <img class="img-fluid" src="images/details-lightbox-2.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>Calendar Input</h3>
                    <hr>
                    <p>The calendar input function enables the user to setup training, meditation and relaxation sessions with ease.</p>
                    <h4>User Feedback</h4>
                    <p>This is a great app which can help you save time and make your live easier. And it will help improve your productivity levels.</p>
                    <p>You should definitely give it a try when you need a good app.</p>
                    <table>
                        <tr><td class="icon-cell"><i class="fas fa-desktop"></i></td><td>Responsive layout</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-bullhorn"></i></td><td>Distinctive CTAs</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-image"></i></td><td>Image gallery slider</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-envelope"></i></td><td>Contact forms</td></tr>
                        <tr><td class="icon-cell"><i class="fab fa-font-awesome-flag"></i></td><td>FontAwesome icons</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-code"></i></td><td>Well-structured code</td></tr>
                    </table>
                    <a class="btn-solid-reg" href="#your-link">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#details">BACK</a>
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->
        <!-- end of details lightboxes -->


        <!-- Screenshots -->
        <div class="slider-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Image Slider -->
                        <div class="slider-container">
                            <div class="swiper-container image-slider">
                                <div class="swiper-wrapper">

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-1.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-1.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-2.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-2.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-3.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-3.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-4.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-4.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-5.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-5.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-6.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-6.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-7.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-7.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-8.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-8.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-9.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-9.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-10.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-10.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                </div> <!-- end of swiper-wrapper -->

                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->

                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of image slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-2 -->
        <!-- end of screenshots -->


        <!-- Download -->
        <div class="basic-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-5">
                        <div class="text-container">
                            <h2>Download <span class="blue">Leno</span></h2>
                            <p class="p-large">Target the right customers for your business with the help of Leno's patented technology and increase conversion figures in less than 2 weeks</p>
                            <a class="btn-solid-lg" href="#your-link"><i class="fab fa-apple"></i>APP STORE</a>
                            <a class="btn-solid-lg" href="#your-link"><i class="fab fa-google-play"></i>PLAY STORE</a>
                        </div> <!-- end of text-container -->
                    </div> <!-- end of col -->
                    <div class="col-lg-6 col-xl-7">
                        <div class="image-container">
                            <img class="img-fluid" src="images/download.png" alt="alternative">
                        </div> <!-- end of img-container -->
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of basic-4 -->
        <!-- end of download -->


        <!-- Statistics -->
        <div class="counter">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Counter -->
                        <div id="counter">
                            <div class="cell">
                                <div class="counter-value number-count" data-count="231">1</div>
                                <p class="counter-info">Happy Users</p>
                            </div>
                            <div class="cell">
                                <div class="counter-value number-count" data-count="85">1</div>
                                <p class="counter-info">Issues Solved</p>
                            </div>
                            <div class="cell">
                                <div class="counter-value number-count" data-count="59">1</div>
                                <p class="counter-info">Good Reviews</p>
                            </div>
                            <div class="cell">
                                <div class="counter-value number-count" data-count="127">1</div>
                                <p class="counter-info">Case Studies</p>
                            </div>
                        </div>
                        <!-- end of counter -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of counter -->
        <!-- end of statistics -->


        <!-- Contact -->
        <div id="contact" class="form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>CONTACT</h2>
                        <ul class="list-unstyled li-space-lg">
                            <li class="address">Don't hesitate to give us a call or just use the contact form below</li>
                            <li><i class="fas fa-map-marker-alt"></i>22 Innovative, San Francisco, CA 94043, US</li>
                            <li><i class="fas fa-phone"></i><a class="blue" href="tel:003024630820">+81 720 2212</a></li>
                            <li><i class="fas fa-envelope"></i><a class="blue" href="mailto:office@leno.com">office@leno.com</a></li>
                        </ul>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">

                        <!-- Contact Form -->
                        <form id="contactForm" data-toggle="validator" data-focus="false">
                            <div class="form-group">
                                <input type="text" class="form-control-input" id="cname" required>
                                <label class="label-control" for="cname">Name</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control-input" id="cemail" required>
                                <label class="label-control" for="cemail">Email</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control-textarea" id="cmessage" required></textarea>
                                <label class="label-control" for="cmessage">Your message</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group checkbox">
                                <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I have read and agree to Leno's stated conditions in <a href="privacy-policy.html">Privacy Policy</a> and <a href="terms-conditions.html">Terms Conditions</a> 
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control-submit-button">SUBMIT MESSAGE</button>
                            </div>
                            <div class="form-message">
                                <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                            </div>
                        </form>
                        <!-- end of contact form -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of form -->
        <!-- end of contact -->


        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-col">
                            <h4>About Leno</h4>
                            <p>We're passionate about creating the best mobile apps for personal development</p>
                        </div>
                    </div> <!-- end of col -->
                    <div class="col-md-4">
                        <div class="footer-col middle">
                            <h4>Important Links</h4>
                            <ul class="list-unstyled li-space-lg">
                                <li class="media">
                                    <i class="fas fa-square"></i>
                                    <div class="media-body">Our business partners <a class="turquoise" href="#your-link">startupguide.com</a></div>
                                </li>
                                <li class="media">
                                    <i class="fas fa-square"></i>
                                    <div class="media-body">Read our <a class="turquoise" href="terms-conditions.html">Terms & Conditions</a>, <a class="turquoise" href="privacy-policy.html">Privacy Policy</a></div>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end of col -->
                    <div class="col-md-4">
                        <div class="footer-col last">
                            <h4>Social Media</h4>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-google-plus-g fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-instagram fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-linkedin-in fa-stack-1x"></i>
                                </a>
                            </span>
                        </div> 
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of footer -->  
        <!-- end of footer -->


        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="p-small">Copyright © Leno - Mobile App Landing Page Template by <a href="http://www.inovatik.com">Inovatik</a></p>
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->


        <!-- Scripts -->
        <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
        <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
        <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
        <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
        <script src="js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
        <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
        <script src="js/scripts.js"></script> <!-- Custom scripts -->

        ${registrar_msg}

    </body>
</html>