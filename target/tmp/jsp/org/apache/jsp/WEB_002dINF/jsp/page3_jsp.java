package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class page3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/WEB-INF/jsp/stdJspIncludes.jsp");
    _jspx_dependants.add("/WEB-INF/jsp/stdFooter.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Page 3</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Load Bootstrap CSS -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/bootstrap-3.3.4/css/bootstrap.min.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Load Bootstrap CSS Themes -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/bootstrap-3.3.4/css/bootstrap-theme.min.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("\r\n");
      out.write("    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/bootstrap-3.3.4/assets/html5shiv.js\"></script>\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/bootstrap-3.3.4/assets/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("        .dropdown:hover .dropdown-menu\r\n");
      out.write("        {\r\n");
      out.write("            /* Cause the bootstrap menus to open when a user hovers over them */\r\n");
      out.write("            display: block;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navbar .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus\r\n");
      out.write("        {\r\n");
      out.write("            /* Set the highlight color of the *top* item (when a user hovers over the menu) */\r\n");
      out.write("            background-color: black;\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navbar .navbar-nav > li\r\n");
      out.write("        {\r\n");
      out.write("            /* Set the color of the border between top menu items */\r\n");
      out.write("            border-left: 1px solid #9d9d9d;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navbar-nav > li > .dropdown-menu\r\n");
      out.write("        {\r\n");
      out.write("            /* Set the background color of the dropdown menu items */\r\n");
      out.write("            color: white;\r\n");
      out.write("\r\n");
      out.write("            /* Light-blue gradient    http://colorzilla.com/gradient-editor/#7abcff+0,4096ee+100 */\r\n");
      out.write("            background: #7abcff; /* Old browsers */\r\n");
      out.write("            background: -moz-linear-gradient(left, #7abcff 0%, #4096ee 100%); /* FF3.6-15 */\r\n");
      out.write("            background: -webkit-linear-gradient(left, #7abcff 0%,#4096ee 100%); /* Chrome10-25,Safari5.1-6 */\r\n");
      out.write("            background: linear-gradient(to right, #7abcff 0%,#4096ee 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */\r\n");
      out.write("            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=1 ); /* IE6-9 */\r\n");
      out.write("         }\r\n");
      out.write("\r\n");
      out.write("        .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus\r\n");
      out.write("        {\r\n");
      out.write("            /* Set the color of the *highlighted* dropdown menu items (when a user hovers over the menu item) */\r\n");
      out.write("            /*background-image:none !important;*/\r\n");
      out.write("            background-color:black;\r\n");
      out.write("            color: black;\r\n");
      out.write("            background: white;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        .darkBlueToBlueGradient {\r\n");
      out.write("            /* Dark Blue Gradient:    http://colorzilla.com/gradient-editor/#001e4a+0,0273d4+99       */\r\n");
      out.write("            background: #001e4a; /* Old browsers */\r\n");
      out.write("            background: -moz-linear-gradient(top, #001e4a 0%, #0273d4 99%); /* FF3.6-15 */\r\n");
      out.write("            background: -webkit-linear-gradient(top, #001e4a 0%, #0273d4 99%); /* Chrome10-25,Safari5.1-6 */\r\n");
      out.write("            background: linear-gradient(to bottom, #001e4a 0%, #0273d4 99%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */\r\n");
      out.write("            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#001e4a', endColorstr='#0273d4', GradientType=0); /* IE6-9 */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .grayToBlackGradient {\r\n");
      out.write("            /* Gray-to-black Gradient:  http://colorzilla.com/gradient-editor/#0e0e0e+0,7d7e7d+100     */\r\n");
      out.write("            background: rgb(14,14,14); /* Old browsers */\r\n");
      out.write("            background: -moz-linear-gradient(top, rgba(14,14,14,1) 0%, rgba(125,126,125,1) 100%); /* FF3.6-15 */\r\n");
      out.write("            background: -webkit-linear-gradient(top, rgba(14,14,14,1) 0%,rgba(125,126,125,1) 100%); /* Chrome10-25,Safari5.1-6 */\r\n");
      out.write("            background: linear-gradient(to bottom, rgba(14,14,14,1) 0%,rgba(125,126,125,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */\r\n");
      out.write("            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0e0e0e', endColorstr='#7d7e7d',GradientType=0 ); /* IE6-9 */        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <div class=\"div-table\" style=\"width: 100%; border: 1px solid black\">\r\n");
      out.write("        <div class=\"div-tr\">\r\n");
      out.write("            <div class=\"div-td\">\r\n");
      out.write("\r\n");
      out.write("                <nav role=\"navigation\" class=\"navbar navbar-inverse navbar-fixed-top darkBlueToBlueGradient\">\r\n");
      out.write("                    <!-- Grouping Brand with Toggle for better mobile display -->\r\n");
      out.write("                    <div class=\"navbar-header\">\r\n");
      out.write("                        <button type=\"button\" data-target=\"#navbarCollapse\" data-toggle=\"collapse\" class=\"navbar-toggle\">\r\n");
      out.write("                            <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                            <span class=\"icon-bar\"></span>\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <a href=\"#\" class=\"navbar-brand\">Cyber Defense</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div id=\"navbarCollapse\" class=\"collapse navbar-collapse\">\r\n");
      out.write("                        <ul class=\"nav navbar-nav\">\r\n");
      out.write("                            <li><a href=\"#\"><span class=\"glyphicon glyphicon-home\"></span> Home</a></li>\r\n");
      out.write("\r\n");
      out.write("                            ");
      out.write("\r\n");
      out.write("                            <li class=\"dropdown\">\r\n");
      out.write("                                 <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-certificate\"></span>\r\n");
      out.write("                                    FBI <b class=\"caret\"></b></a>\r\n");
      out.write("                                    <ul role=\"menu\" class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"#\">Articles</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Interviews</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Forums</a></li>\r\n");
      out.write("                                        <li class=\"divider\"></li>\r\n");
      out.write("                                        <li><a href=\"#\">About Us</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Contact Us</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            ");
      out.write("\r\n");
      out.write("                            <li class=\"dropdown\">\r\n");
      out.write("                                <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-book\"></span>\r\n");
      out.write("                                    NetOps<b class=\"caret\"></b></a>\r\n");
      out.write("                                    <ul role=\"menu\" class=\"dropdown-menu\">\r\n");
      out.write("                                        <li><a href=\"#\">Training</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Placement</a></li>\r\n");
      out.write("                                        <li class=\"divider\"></li>\r\n");
      out.write("                                        <li><a href=\"#\">FAQ's</a></li>\r\n");
      out.write("                                        <li><a href=\"#\">Write Us</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            ");
      out.write("\r\n");
      out.write("                            <li class=\"dropdown\">\r\n");
      out.write("                                <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\r\n");
      out.write("                                    <span class=\"glyphicon glyphicon-book\"></span>\r\n");
      out.write("                                    Data<b class=\"caret\"></b></a>\r\n");
      out.write("                                <ul role=\"menu\" class=\"dropdown-menu\">\r\n");
      out.write("                                    <li><a href=\"#\">Training</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">Placement</a></li>\r\n");
      out.write("                                    <li class=\"divider\"></li>\r\n");
      out.write("                                    <li><a href=\"#\">FAQ's</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">Write Us</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <form role=\"search\" class=\"navbar-form navbar-left\">\r\n");
      out.write("                            <div class=\"form-group\">\r\n");
      out.write("                                ");
      out.write("\r\n");
      out.write("                                <input type=\"text\" placeholder=\"Search\" class=\"form-control\">\r\n");
      out.write("                                <button>Go</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("\r\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("\r\n");
      out.write("                            ");
      out.write("\r\n");
      out.write("                            <li class=\"dropdown\">\r\n");
      out.write("                                <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\r\n");
      out.write("                                    Help<b class=\"caret\"></b></a>\r\n");
      out.write("                                <ul role=\"menu\" class=\"dropdown-menu\">\r\n");
      out.write("                                    <li><a href=\"#\">Training</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">Placement</a></li>\r\n");
      out.write("                                    <li class=\"divider\"></li>\r\n");
      out.write("                                    <li><a href=\"#\">FAQ's</a></li>\r\n");
      out.write("                                    <li><a href=\"#\">Write Us</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li class=\"dropdown\">\r\n");
      out.write("                                <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\"><span class=\"glyphicon glyphicon-user\"></span>\r\n");
      out.write("                                    John Smith<b class=\"caret\"></b></a>\r\n");
      out.write("                                <ul role=\"menu\" class=\"dropdown-menu\">\r\n");
      out.write("                                    <li><a href=\"#\"><span class=\"glyphicon glyphicon-phone\"></span> Friends</a></li>\r\n");
      out.write("                                    <li><a href=\"#\"><span class=\"glyphicon glyphicon-envelope\"></span> Messages</a></li>\r\n");
      out.write("                                    <li><a href=\"#\"><span class=\"glyphicon glyphicon-globe\"></span> Notifications</a></li>\r\n");
      out.write("                                    <li class=\"divider\"></li>\r\n");
      out.write("                                    <li><a href=\"#\"><span class=\"glyphicon glyphicon-cog\"></span> Settings</a></li>\r\n");
      out.write("                                    <li><a href=\"#\"><span class=\"glyphicon glyphicon-off\"></span> Logout</a></li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <br/>\r\n");
      out.write("    <br/>\r\n");
      out.write("    <br/>\r\n");
      out.write("    <br/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <h2>Welcome to Cyber Defense</h2>\r\n");
      out.write("\r\n");
      out.write("    <br/>\r\n");
      out.write("\r\n");
      out.write("    <table class=\"grayToBlackGradient\" style=\"width: 100%; height: 0; min-height:700px\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td align=\"center\" style=\"color:white\">Standard Header is here</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <br/>\r\n");
      out.write("    <br/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <table class=\"darkBlueToBlueGradient\" style=\"width: 100%; height: 0; min-height: 600px\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td align=\"center\" style=\"color:white\">Standard Header is here</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\r\n");
      out.write("    <br/>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    ");
      out.write("<table style=\"width: 100%; border: 1px solid black\">\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/\">Back to Home</a></td>\r\n");
      out.write("        <td align=\"center\">My App</td>\r\n");
      out.write("        <td align=\"right\">Version 1.0.0</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/jquery/jquery-1.11.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/resources/bootstrap-3.3.4/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("contextPath");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }
}
