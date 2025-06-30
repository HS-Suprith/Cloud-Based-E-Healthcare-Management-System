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
                                    <li><a href="taHome.jsp">Home</a></li>
                                    <li><a href="patientDetails.jsp">Patient Details</a></li>
                                    <li><a style="color: blue" href="doctorDetails.jsp">Doctor Details</a></li>
                                    <li><a href="fileRequest.jsp">File Requests</a></li>
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
                            <h1>Doctor Details</h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <center>
                            <div class="ex1">
                                <table id="customers">
                                    <tr>
                                        <th>Name </th>
                                        <th>Email </th>
                                        <th>DOB</th>
                                        <th>Department</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    <%
                                        Connection con = SQLconnection.getconnection();
                                        Statement st = con.createStatement();
                                        try {
                                            ResultSet rs = st.executeQuery("Select * from doctor_reg ");
                                            while (rs.next()) {
                                    %>
                                    <tr>
                                    <form action="doctorApprove.jsp" method="get">
                                        <input  name="id" value="<%=rs.getString("id")%>" type="hidden" >
                                        <td><input style="background-color: transparent; border: none; color: #000" name="name" value="<%=rs.getString("name")%>"  type="text"  readonly=""></td>
                                        <td><input style="background-color: transparent; border: none; color: #000" name="email" size="30" value="<%=rs.getString("email")%>" type="text" readonly=""></td>
                                        <td class="center"><%=rs.getString("dob")%> </td>
                                        <td class="center"><%=rs.getString("department")%> </td>
                                        <td class="center"><%=rs.getString("phone")%> </td>
                                        <td class="center"><%=rs.getString("address")%> </td>
                                        <td class="center"><%=rs.getString("status")%> </td>
                                        <td><i><button type="submit" class="btn btn-success btn-fill btn-circle fa fa-check">Approve</button></i></td>
                                    </form>
                                    </tr>
                                    <%                                        }
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
