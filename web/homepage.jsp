<%-- 
    Document   : homepage
    Created on : Mar 23, 2021, 11:25:43 PM
    Author     : hiper
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <style>
        body {margin:25px;}

        div.polaroid {
          width: 80%;
          background-color: white;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
          margin-bottom: 25px;
        }

        div.containerr {
          text-align: center;
          padding: 10px 20px;
        }
        </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Digital Agency Template</title>
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Open+Sans:400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="responsive.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Reel Homepage</title>
    </head>
    
    <body>
        <div class="wrapper">
        <header class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-top">
                            <div class="row">
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="logo">
                                        <h2><a href="#">Image Reel</a></h2>
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-12 col-xs-12">
                                    <div class="menu">
                                        <ul class="nav navbar-nav">
                                            <li class="active"><a href="homepage.jsp">HOME</a></li>
                                            <li><a href="ReelUpload.jsp">UPLOAD A REEL</a></li>
                                            <li><a href="LogoutServlet">SIGN OUT</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-carousal owl-carousel owl-theme">
                            <div class="item">
                                <!--<h4>WE ARE</h4>-->
                                <h2>Upload Anonymously</h2>
                                <p>Upload your curiosity on the Internet. 
                                    <br>At Image Reel.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <br><br>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/imagereel", "root", "1234");
                Statement st = con.createStatement();
                String sql = "SELECT filename,userid FROM image_table";
                ResultSet rs = st.executeQuery(sql);
        %>
        <div align="center" class="container" style="width:100%">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row">
        <%
                while (rs.next()) {
                    String filename = rs.getString("filename");
                    String username = rs.getString("userid");
        %>
                <!--<div class="col-sm-4">-->
                <div class="col-sm-4">
                    <div class="polaroid">
                        <image src="<%=filename%>" width="480" height="270" style="width:100%"/>
                        <div class="containerr" >
                            <p style="font-family:'Courier New'">Uploaded by: <%=username%></p>
                        </div>
                    </div>
                </div>

        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
            </div>
        </div>
        <br>
        
        <section class="footer-icon">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-carousal owl-carousel owl-theme">

                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <footer class="footer">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-4 col-sm-5 col-xs-6">
                        <div class="text">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-3 col-xs-4">
                        <div class="footer-logo">
                            <p><a href="#">Image Reel</a></p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-2">
                        <div class="text">
                            <p><span>Made By: Manak Kumar Singh (A12405218061)</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.js"></script>
    <script src="js/masonry.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/active.js"></script>
    </body>
    
</html>
