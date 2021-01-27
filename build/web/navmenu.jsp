<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
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
                    <% if (session != null && session.getAttribute("user_id") != null) {%>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle page-scroll" href="#" id="navbarDropdown"  aria-haspopup="true" aria-expanded="false"><%out.print("<img src='imagens_profile/"+session.getAttribute("user_image")+"' id='imagem_profile' class='rounded-circle' alt='picture' width='30' height='30'>");out.print(" • "+session.getAttribute("user_name"));%></a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#"><span class="item-text">Meu Cardápio</span></a>
                            <a class="dropdown-item" href="#"><span class="item-text">QR Code</span></a>
                            <a class="dropdown-item" href="#"><span class="item-text">Estatísticas</span></a>
                            <a class="dropdown-item" href="configuracao.jsp"><span class="item-text">Configurações</span></a>
                            <div class="dropdown-items-divide-hr"></div>
                            <a class="dropdown-item" href="SairServlet"><span class="item-text">Sair</span></a>
                        </div>
                    </li>
                    <!-- end of dropdown menu -->  
                    <%} else {%>

                    <li class="nav-item">
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-login">ENTRAR</a>
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-register">REGISTRAR</a>
                    </li>              
                    <%}%>
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
</body>