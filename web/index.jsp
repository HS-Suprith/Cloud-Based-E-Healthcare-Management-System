<%-- 
    Document   : index
    Created on : 8 Jul, 2021, 11:02:39 AM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Healthcare</title>

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
    <body>

        <div class="wrap">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="primary-nav-button" type="button">Menu</button>
                           
                            <nav id="primary-nav" class="dropdown cf">
                                <ul class="dropdown menu">
                                    <li><a style="color: blue" href="index.jsp">Home</a></li>
                                    <li><a href="patientLogin.jsp">Patient</a></li>
                                    <li><a href="doctorLogin.jsp">Doctor</a></li>
                                    <li><a href="taLogin.jsp">Trusted Authority</a></li>
                                    <li><a href="cloudLogin.jsp">Cloud</a></li>
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
                            <h1></h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="featured-item">
                            <p align="justify" style="font-size:19px">
                                E-Healthcare systems are increasingly popular due to the introduction of wearable healthcare devices and sensors.
                                Personal health records (PHRs) are collected by these devices and stored in a remote cloud. Due to privacy concern, these records
                                should not be accessible by any unauthorized party, and the cloud providers should not be able to learn any information from the stored
                                records. To address the above issues, one promising solution is to employ attribute based encryption (ABE) for fine-grained access
                                control and searchable encryption for keyword search on encrypted data. However, most of existing ABE schemes leak the privacy of
                                access policy which may also contain sensitive information. On the other hand, for users’ devices with limited computing power and
                                bandwidth, the mechanism should enable them to be able to search the PHRs efficiently. Unfortunately, most existing works on ABE do
                                not support efficient keyword search on encrypted data. In this work, we propose an efficient hidden policy ABE scheme with keyword
                                search. Our scheme enables efficient keyword search with constant computational overhead and constant storage overhead.
                                Moreover, we enhance the recipient’s privacy which hides the access policy. As of independent interest, we present a trapdoor
                                malleability attack and demonstrate that some of previous schemes may suffer from such attack.
                            </p>
                        </div>
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
