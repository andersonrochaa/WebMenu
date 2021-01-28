package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class blank_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/head.jsp");
    _jspx_dependants.add("/validarsessao.jsp");
    _jspx_dependants.add("/menu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html dir=\"ltr\" lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");

   if (session == null) {

      out.write("\n");
      out.write("        ");
      if (true) {
        _jspx_page_context.forward("index.jsp");
        return;
      }
      out.write('\n');
    }
else {

      out.write('\n');
      if (true) {
        _jspx_page_context.forward("cardapio.jsp");
        return;
      }
      out.write('\n');
}
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"keywords\"\n");
      out.write("              content=\"wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, Ample lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Ample admin lite dashboard bootstrap 4 dashboard template\">\n");
      out.write("        <meta name=\"description\"\n");
      out.write("              content=\"Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework\">\n");
      out.write("        <meta name=\"robots\" content=\"noindex,nofollow\">\n");
      out.write("        <title>Dashboard</title>\n");
      out.write("        <!-- Favicon icon -->\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"plugins/images/favicon.png\">\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"css_dashboard/style.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    </head>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- Preloader - style you can find in spinners.css -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <div class=\"preloader\">\n");
      out.write("        <div class=\"lds-ripple\">\n");
      out.write("            <div class=\"lds-pos\"></div>\n");
      out.write("            <div class=\"lds-pos\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- Main wrapper - style you can find in pages.scss -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <div id=\"main-wrapper\" data-layout=\"vertical\" data-navbarbg=\"skin5\" data-sidebartype=\"full\"\n");
      out.write("        data-sidebar-position=\"absolute\" data-header-position=\"absolute\" data-boxed-layout=\"full\">\n");
      out.write("\n");
      out.write("        ");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"topbar\" data-navbarbg=\"skin5\">\n");
      out.write("            <nav class=\"navbar top-navbar navbar-expand-md navbar-dark\">\n");
      out.write("                <div class=\"navbar-header\" data-logobg=\"skin6\">\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- Logo -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <a class=\"navbar-brand\" href=\"dashboard.jsp\">\n");
      out.write("                        <!-- Logo icon -->\n");
      out.write("                        <b class=\"logo-icon\">\n");
      out.write("                            <!-- Dark Logo icon -->\n");
      out.write("                            <img src=\"plugins/images/logo-icon.png\" alt=\"homepage\" />\n");
      out.write("                        </b>\n");
      out.write("                        <!--End Logo icon -->\n");
      out.write("                        <!-- Logo text -->\n");
      out.write("                        <span class=\"logo-text\">\n");
      out.write("                            <!-- dark Logo text -->\n");
      out.write("                            <img src=\"plugins/images/logo-text.png\" alt=\"homepage\" />\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- End Logo -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- toggle and nav items -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <a class=\"nav-toggler waves-effect waves-light text-dark d-block d-md-none\"\n");
      out.write("                       href=\"javascript:void(0)\"><i class=\"ti-menu ti-close\"></i></a>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- End Logo -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"navbar-collapse collapse\" id=\"navbarSupportedContent\" data-navbarbg=\"skin5\">\n");
      out.write("                    <ul class=\"navbar-nav d-none d-md-block d-lg-none\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-toggler nav-link waves-effect waves-light text-white\"\n");
      out.write("                               href=\"javascript:void(0)\"><i class=\"ti-menu ti-close\"></i></a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- Right side toggle and nav items -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <ul class=\"navbar-nav ml-auto d-flex align-items-center\">\n");
      out.write("\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                        <!-- Search -->\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                        <li class=\" in\">\n");
      out.write("                            <form role=\"search\" class=\"app-search d-none d-md-block mr-3\">\n");
      out.write("                                <input type=\"text\" placeholder=\"Search...\" class=\"form-control mt-0\">\n");
      out.write("                                <a href=\"\" class=\"active\">\n");
      out.write("                                    <i class=\"fa fa-search\"></i>\n");
      out.write("                                </a>\n");
      out.write("                            </form>\n");
      out.write("                        </li>\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                        <!-- User profile and search -->\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                        <li>\n");
      out.write("                            <a class=\"profile-pic\" href=\"#\">\n");
      out.write("                                <img src=\"plugins/images/users/");
out.print(session.getAttribute("user_image"));
      out.write("\" alt=\"user-img\" width=\"36\"\n");
      out.write("                                     class=\"img-circle\"><span class=\"text-white font-medium\">");
out.print(session.getAttribute("user_name"));
      out.write("</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                        <!-- User profile and search -->\n");
      out.write("                        <!-- ============================================================== -->\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- End Topbar header -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- Left Sidebar - style you can find in sidebar.scss  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <aside class=\"left-sidebar\" data-sidebarbg=\"skin6\">\n");
      out.write("            <!-- Sidebar scroll-->\n");
      out.write("            <div class=\"scroll-sidebar\">\n");
      out.write("                <!-- Sidebar navigation-->\n");
      out.write("                <nav class=\"sidebar-nav\">\n");
      out.write("                    <ul id=\"sidebarnav\">\n");
      out.write("                        <!-- User Profile-->\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"cardapio.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-list-ul\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Meu Cardápio</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"estabelecimento.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-warehouse\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Meu Estabelecimento</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"endereco.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-map-marker-alt\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Endereço</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"qrcode.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-qrcode\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">QrCode</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item pt-2\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"estatistica.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fas fa-chart-bar\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Estatística</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"blank.jsp\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fa fa-columns\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Blank Page</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sidebar-item\">\n");
      out.write("                            <a class=\"sidebar-link waves-effect waves-dark sidebar-link\" href=\"404.html\"\n");
      out.write("                               aria-expanded=\"false\">\n");
      out.write("                                <i class=\"fa fa-info-circle\" aria-hidden=\"true\"></i>\n");
      out.write("                                <span class=\"hide-menu\">Error 404</span>\n");
      out.write("                            </a>\n");
      out.write("                        </li>                    \n");
      out.write("                        <li class=\"text-center p-20 upgrade-btn\">\n");
      out.write("                            <hr>\n");
      out.write("                            <a href=\"SairServlet\"\n");
      out.write("                               class=\"btn btn-block btn-danger text-white\" target=\"_self\">\n");
      out.write("                                Sair</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                </nav>\n");
      out.write("                <!-- End Sidebar navigation -->\n");
      out.write("            </div>\n");
      out.write("            <!-- End Sidebar scroll-->\n");
      out.write("        </aside>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"page-wrapper\" style=\"min-height: 250px;\">\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- Bread crumb and right sidebar toggle -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <div class=\"page-breadcrumb bg-white\">\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("                        <h4 class=\"page-title text-uppercase font-medium font-14\">Profile Page</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-9 col-sm-8 col-md-8 col-xs-12\">\n");
      out.write("                        <div class=\"d-md-flex\">\n");
      out.write("                            <ol class=\"breadcrumb ml-auto\">\n");
      out.write("                                <li><a href=\"#\">Dashboard</a></li>\n");
      out.write("                            </ol>\n");
      out.write("                            <a href=\"https://wrappixel.com/templates/ampleadmin/\" target=\"_blank\"\n");
      out.write("                                class=\"btn btn-danger  d-none d-md-block pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light\">Upgrade\n");
      out.write("                                to Pro</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.col-lg-12 -->\n");
      out.write("            </div>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- End Bread crumb and right sidebar toggle -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- Container fluid  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- Start Page Content -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"white-box\">\n");
      out.write("                            <h3 class=\"box-title\">Blank Page</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- End PAge Content -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- Right sidebar -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- .right-sidebar -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- End Right sidebar -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("            </div>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- End Container fluid  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- footer -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <footer class=\"footer text-center\"> 2020 © Ample Admin brought to you by <a\n");
      out.write("                    href=\"https://www.wrappixel.com/\">wrappixel.com</a>\n");
      out.write("            </footer>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- End footer -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("        </div>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- End Page wrapper  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("    </div>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- End Wrapper -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- All Jquery -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <script src=\"plugins/bower_components/jquery/dist/jquery.min.js\"></script>\n");
      out.write("    <!-- Bootstrap tether Core JavaScript -->\n");
      out.write("    <script src=\"plugins/bower_components/popper.js/dist/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/app-style-switcher.js\"></script>\n");
      out.write("    <!--Wave Effects -->\n");
      out.write("    <script src=\"js/waves.js\"></script>\n");
      out.write("    <!--Menu sidebar -->\n");
      out.write("    <script src=\"js/sidebarmenu.js\"></script>\n");
      out.write("    <!--Custom JavaScript -->\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
