
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
            html,body
            {
                height:100%;
            }

            #wrap
            {
                min-height: 100%; 
            }

            #main
            {
                overflow:auto;
                padding-bottom:150px; /* this needs to be bigger than footer height*/
            }

            .footer 
            {
                position: relative;
                margin-top: -50px; /* negative value of footer height */
                height: 50px;
                clear:both;
                padding-top:20px;
                color:#fff;
            } 
            h2 {
                width: 100%; 
                text-align: center; 
                border-bottom: 1px solid #000; 
                line-height: 0.1em;
                margin: 10px 0 20px; 
            } 

            h2 span { 
                background:#fff; 
                padding:0 10px; 
            }
            #top{
                background-color: #000000;
                color: #fff;

            }
        </style>
        <title>Home</title>
    </head>
<body>
 <%@include file="user_menu.jsp" %>
 <br>
 <br>
       <div  id="main">

                <div class="container">
                    <div class="row section">
                        <h2 class="headings">
                            <span>About our Website</span>
                        </h2>
                        <br>
                        <div class="col-sm-12">
                            <p>
                                <b>STEPHANOS KUNGFU CLUB</b>, is a system where you can add new students and view the students record. You can keep track of the various payments received from the students.                  </p>

                        </div>
                    </div>
                </div>

                <br>
                <div class="container">

                    <h2 class="headings">
                        <span>Features</span>
                    </h2>
                    <div class="row facility-row">
                        <br>
                        <div class="col-sm-3 col-sm-offset-2 col-xs-6 text-center secondrow">
                            <span ><i class="fa fa-users fa-fw"></i> </span>
                            <h4>Add/View Students</h4>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">

                            <span ><i class="fa fa-eye fa-fw"></i></span>
                            <h4>Attendance</h4>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <span ><i class="fa fa-users fa-fw"></i> </span>
                            <h4>Fees</h4>
                        </div>
                    </div>
                    <br>

                    <div class="row facility-row">
                        <div class="col-sm-3 col-sm-offset-2 col-xs-6 text-center secondrow">
                            <span ><i class="fa fa-bullseye fa-fw"></i></span>
                            <h4>Parents</h4>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <span ><i class="fa fa-diamond fa-fw"></i></span>
                            <h4>Emergency Contacts</h4>
                        </div>
                        <div class="col-sm-3 col-xs-6 text-center">
                            <span ><i class="fa fa-users fa-fw"></i> </span>
                            <h4>Edit Record</h4>
                        </div>
                    </div>
                </div>
            </div>
<div class="container-fluid footer" style="background-color: #03396c; color: #ffffff;">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12 text-center" style="font-family: 'Open Sans'; font-size: 12px;"> &copy;2018
                        STEPHANOS KUNGFU CLUB. All Rights Reserved
                    </div>
                </div>
            </div>

        </div>

</body>
</html>
