<%@ include file="/WEB-INF/jsp/stdJspIncludes.jsp" %>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Page 3</title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Load Bootstrap CSS -->
    <link href="${contextPath}/resources/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen">

    <!-- Load Bootstrap CSS Themes -->
    <link href="${contextPath}/resources/bootstrap-3.3.4/css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${contextPath}/resources/bootstrap-3.3.4/assets/html5shiv.js"></script>
    <script src="${contextPath}/resources/bootstrap-3.3.4/assets/respond.min.js"></script>
    <![endif]-->


    <style type="text/css">

        .dropdown:hover .dropdown-menu
        {
            /* Cause the bootstrap menus to open when a user hovers over them */
            display: block;
        }

        .navbar .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus
        {
            /* Set the highlight color of the *top* item (when a user hovers over the menu) */
            background-color: black;
            color: white;
        }

        .navbar .navbar-nav > li
        {
            /* Set the color of the border between top menu items */
            border-left: 1px solid #9d9d9d;
        }

        .navbar-nav > li > .dropdown-menu
        {
            /* Set the background color of the dropdown menu items */
            color: white;

            /* Light-blue gradient    http://colorzilla.com/gradient-editor/#7abcff+0,4096ee+100 */
            background: #7abcff; /* Old browsers */
            background: -moz-linear-gradient(left, #7abcff 0%, #4096ee 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(left, #7abcff 0%,#4096ee 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to right, #7abcff 0%,#4096ee 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=1 ); /* IE6-9 */
         }

        .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus
        {
            /* Set the color of the *highlighted* dropdown menu items (when a user hovers over the menu item) */
            /*background-image:none !important;*/
            background-color:black;
            color: black;
            background: white;
        }


        .darkBlueToBlueGradient {
            /* Dark Blue Gradient:    http://colorzilla.com/gradient-editor/#001e4a+0,0273d4+99       */
            background: #001e4a; /* Old browsers */
            background: -moz-linear-gradient(top, #001e4a 0%, #0273d4 99%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, #001e4a 0%, #0273d4 99%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, #001e4a 0%, #0273d4 99%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#001e4a', endColorstr='#0273d4', GradientType=0); /* IE6-9 */
        }

        .grayToBlackGradient {
            /* Gray-to-black Gradient:  http://colorzilla.com/gradient-editor/#0e0e0e+0,7d7e7d+100     */
            background: rgb(14,14,14); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(14,14,14,1) 0%, rgba(125,126,125,1) 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, rgba(14,14,14,1) 0%,rgba(125,126,125,1) 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, rgba(14,14,14,1) 0%,rgba(125,126,125,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0e0e0e', endColorstr='#7d7e7d',GradientType=0 ); /* IE6-9 */        }
    </style>
</head>

<body>


    <%-- S T A N D A R D     H E A D E R   --%>
    <div class="div-table" style="width: 100%; border: 1px solid black">
        <div class="div-tr">
            <div class="div-td">

                <nav role="navigation" class="navbar navbar-inverse navbar-fixed-top darkBlueToBlueGradient">
                    <!-- Grouping Brand with Toggle for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="#" class="navbar-brand">Cyber Defense</a>
                    </div>

                    <div id="navbarCollapse" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>

                            <%-- M E N U    # 2   --%>
                            <li class="dropdown">
                                 <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="glyphicon glyphicon-certificate"></span>
                                    FBI <b class="caret"></b></a>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><a href="#">Articles</a></li>
                                        <li><a href="#">Interviews</a></li>
                                        <li><a href="#">Forums</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul>
                            </li>

                            <%-- M E N U    # 2   --%>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="glyphicon glyphicon-book"></span>
                                    NetOps<b class="caret"></b></a>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><a href="#">Training</a></li>
                                        <li><a href="#">Placement</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">FAQ's</a></li>
                                        <li><a href="#">Write Us</a></li>
                                    </ul>
                            </li>

                            <%-- M E N U    # 3   --%>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="glyphicon glyphicon-book"></span>
                                    Data<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">Training</a></li>
                                    <li><a href="#">Placement</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">FAQ's</a></li>
                                    <li><a href="#">Write Us</a></li>
                                </ul>
                            </li>

                        </ul>
                        <form role="search" class="navbar-form navbar-left">
                            <div class="form-group">
                                <%-- S E A R C H     B O X  --%>
                                <input type="text" placeholder="Search" class="form-control">
                                <button>Go</button>
                            </div>
                        </form>

                        <ul class="nav navbar-nav navbar-right">

                            <%-- M E N U    # 4:  Help   --%>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    Help<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#">Training</a></li>
                                    <li><a href="#">Placement</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">FAQ's</a></li>
                                    <li><a href="#">Write Us</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-user"></span>
                                    John Smith<b class="caret"></b></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="#"><span class="glyphicon glyphicon-phone"></span> Friends</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Messages</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-globe"></span> Notifications</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>

    <br/>
    <br/>
    <br/>
    <br/>


    <h2>Welcome to Cyber Defense</h2>

    <br/>

    <table class="grayToBlackGradient" style="width: 100%; height: 0; min-height:700px">
        <tr>
            <td align="center" style="color:white">Standard Header is here</td>
        </tr>
    </table>


    <br/>
    <br/>


    <table class="darkBlueToBlueGradient" style="width: 100%; height: 0; min-height: 600px">
        <tr>
            <td align="center" style="color:white">Standard Header is here</td>
        </tr>
    </table>

    <br/>

    <%-- S T A N D A R D       F O O T E R  --%>
    <%@ include file="/WEB-INF/jsp/stdFooter.jsp" %>

    <%-- Load jQuery (necessary for Bootstrap's JavaScript plugins) --%>
    <script src="${contextPath}/resources/jquery/jquery-1.11.3.min.js" type="text/javascript"></script>

    <%-- Include all compiled plugins (below), or include individual files as needed --%>
    <script src="${contextPath}/resources/bootstrap-3.3.4/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>