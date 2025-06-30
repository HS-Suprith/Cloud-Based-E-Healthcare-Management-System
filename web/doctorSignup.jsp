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
    <body>

        <div class="wrap">
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <button id="primary-nav-button" type="button">Menu</button>

                            <nav id="primary-nav" class="dropdown cf">
                                <ul class="dropdown menu">
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="patientLogin.jsp">Patient</a></li>
                                    <li><a style="color: blue" href="doctorLogin.jsp">Doctor</a></li>
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
                            <h1>Doctor Register</h1>
                        </div>
                    </div> 
                </div> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <form action="doctorReg" method="post">
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Name :</label><br>
                                        <input type="text" name="username" class="form-control" placeholder="Enter Your Name" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>DOB :</label><br>
                                        <input type="date" name="dob" class="form-control" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Email :</label><br>
                                        <input type="email" name="email" class="form-control" placeholder="Enter Your Email" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Gender :</label><br>
                                        <select name="gender" class="form-control" placeholder="Enter Your Name" required="">
                                            <option value="">Select Your Gender</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                            <option>Others</option>
                                        </select><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Department :</label>
                                        <select name="dept" class="form-control" required="">
                                            <option value="">Select Medical Department</option>
                                            <option>Cardiology</option>
                                            <option>Dermatology</option>
                                            <option>Neurology</option>
                                            <option>Nephrology</option>
                                            <option>Orthopedic</option>
                                        </select>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Phone No :</label><br>
                                        <input type="text" name="phone" class="form-control" placeholder="Enter Your Phone No" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label>Address :</label><br>
                                        <input type="text" name="address" class="form-control" placeholder="Enter Your Address" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <label style="float: left">Password :</label><br>
                                        <input type="password" name="pass" class="form-control" placeholder="Enter Your Password" required=""><br>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <center><button type="submit" class="btn btn-success btn-lg">Sign Up</button></center>
                                    </fieldset>
                                </div>
                            </form>
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
