<%-- 
    Document   : index
    Created on : 8 Jul, 2021, 11:02:39 AM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Secure Fine-Grained Encrypted Keyword Search</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <style>

        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            font-size: 20px;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 2px solid black;
            align:"center";  cellpadding:"0"; cellspacing:"2";
            padding: 15px;
        }


        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #1DA1F2;
            color: white;
        }
    </style>
    <style>
        div.ex1 {
            width: auto;
            height: auto;
            overflow: scroll;
        }
    </style>
    <body>

        <div class="wrap">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="primary-nav-button" type="button">Menu</button>

                            <nav id="primary-nav" class="dropdown cf">
                                <ul class="dropdown menu">
                                    <li><a href="doctorHome.jsp">Home</a></li>
                                    <li><a href="getSearchToken.jsp">Get Search Token</a></li>
                                    <li><a style="color: blue" href="search.jsp">Search</a></li>
                                    <li><a href="requestedFiles.jsp">Requested Files</a></li>
                                    <li><a href="index.jsp">Logout</a></li>
                                </ul>
                            </nav><!-- / #primary-nav -->
                        </div>
                    </div>
                </div>
            </header>
        </div>

        <section class="banner" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="banner-caption">
                            <h2>HEALTHCARE MANAGEMENT SYSTEM</h2>
                            <div class="line-dec"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-services" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h1>Search Result</h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <div class="ex1">
                                <table id="customers">
                                    <th>Patient ID</th>
                                    <th>Patient Name</th>
                                    <th>File ID</th>
                                    <th>File Name</th>
                                    <th>Uploaded Time</th>
                                    <th>Action</th>
                                        <%
                                            String dept = (String) session.getAttribute("ddept");
                                            String pname = request.getParameter("pname");
                                            String token = request.getParameter("token");
                                            Connection con = SQLconnection.getconnection();
                                            Statement st = con.createStatement();
                                            Statement st1 = con.createStatement();
                                            try {
                                                ResultSet rs1 = st1.executeQuery("Select * from search_token where search_token = '" + token + "' ");
                                                if (rs1.next()) {
                                                    ResultSet rs = st.executeQuery("Select * from data_files where pname LIKE '%" + pname + "%' AND department = '" + dept + "' ");
                                                    if (rs.next()) {
                                        %>
                                    <tr>
                                        <td><%=rs.getString("pid")%></td>
                                        <td><%=rs.getString("pname")%></td>
                                        <td><%=rs.getString("id")%></td>
                                        <td><%=rs.getString("filename")%></td>
                                        <td><%=rs.getString("time")%></td>
                                        <td><a class="btn btn-primary btn-lg" href="request.jsp?fid=<%=rs.getString("id")%>&pid=<%=rs.getString("pid")%>">Request</a></td>
                                    </tr>
                                    <%                                        } else {
                                                    response.sendRedirect("search.jsp?Data_not_found");
                                                }
                                            } else {
                                                response.sendRedirect("search.jsp?Incorrect_Search_token");
                                            }
                                        } catch (Exception ex) {
                                            ex.printStackTrace();
                                        }

                                    %>
                                </table>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </section>

        <div class="sub-footer">
            <br><br><br><br>
            <p>&copy; 2025</p>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/datepicker.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
