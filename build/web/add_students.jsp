<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Students</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="w3.css" rel="stylesheet" type="text/css"/>
        <style> 

            .footer 
            {
                position: fixed;
                bottom: 0px;
                padding-top:20px;
                color:#fff;
            }
        </style>
        <script>

            history.pushState(null, null, '');
            window.addEventListener('popstate', function (event) {
                history.pushState(null, null, 'add_students.jsp')
            });
        </script>

        <script>
            
            function validate()
            {
                var email = document.getElementById("email").value;
                var fn = document.getElementById("firstname").value;
                var ln = document.getElementById("lastname").value;
                var ulen = fn.length;
                var ph = document.getElementById("phonenumber").value;
                var gender = document.getElementById("gender").value;
                var ecn = document.getElementById("Econtactname").value;
                var ecp = document.getElementById("Ephoneno").value;
                var city = document.getElementById("city").value;
                var province = document.getElementById("province").value;
                var Erelation = document.getElementById("Erelation").value;
                var Dob = document.getElementById("Dob").value;
                var Date = document.getElementById("date").value;
                
                
//                var elen = email.length;
//                var i = email.indexOf('@');
//                var j = email.indexOf('.');
//                var subemail = email.substring(i, elen);
//                var k = subemail.indexOf('.');
                if (ulen > 15)
                {
                alert("First name cannot be of more than 15 characters");
                        return false;
                }
                else if (ln.length > 15)
                {
                alert("Last name cannot be of more than 15 characters");
                        return false;
                }
                else if (ecn.length > 15)
                {
                alert("Emergency Name cannot be of more than 15 characters");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(fn))
                {
                alert("First Name cannot have number ");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(ln))
                {
                alert("Last name cannot have number");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(gender))
                {
                alert("Gender cannot have number");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(city))
                {
                alert("City cannot have number");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(province))
                {
                alert("Province cannot have number");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(ecn))
                {
                alert("Emergency Name cannot have number ");
                        return false;
                }
                else if (!/^[a-zA-Z]+$/.test(Erelation))
                {
                alert("Relation cannot have number");
                        return false;
                }

//                else if (j === (i + 1))
//                {
//
//                alert(j);
//                        alert("Invalid E-mail format");
//                        return false;
//                }
//                else if (j === - 1 || i === 0)
//                {
//                alert("Invalid E-mail format");
//                        return false;
//                }
//                else if (i === 0)
//                {
//                alert("Invalid E-mail format");
//                        return false;
//                }
                else if (isNaN(ph) || ph.length < 10 || isNaN(ecp) || ecp.length < 10)
                {
                alert("invalid phone number");
                        //alert(ph);
                        return false;
                }
                
                else
                {
                    return true;
                }

            }
        </script>

    </head>
    <body id="body">
        <%@include file="user_menu.jsp" %>
        <br>
        <div class="row" id="main">
            <div class="col-sm-1"></div>
            <div class="col-sm-6">
                <div class="w3-card-8" style="width:auto; height: 550px;">
                    <div class="modal-header" style=" background-color:#005b96; padding:5px 5px;">
                        <h4 style="color: #ffffff;"><span class="glyphicon glyphicon-log-out"></span>Add Student</h4>
                    </div>

                    <form action="addstudent" method="post">
                        <br>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="firstname" id="firstname" required class="form-control input-sm floatlabel" placeholder="First Name">
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="lastname" id="lastname" required="" class="form-control input-sm" placeholder="Last Name">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text"  placeholder="Email" name="email"class="form-control input-sm floatlabel" required id="email" class="form-control"/>       

                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="gender" id="gender" required="" class="form-control input-sm" placeholder="Gender">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="number" name="phonenumber" required id="phonenumber"  class="form-control input-sm" placeholder="Phone Number">

                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="address" id="address" required class="form-control input-sm" placeholder="Address">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="city" id="city" required  class="form-control input-sm" placeholder="City">
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="zip" id="zip" required class="form-control input-sm" placeholder="Zip Code">

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="province" id="province" required  class="form-control input-sm" placeholder="Province">

                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="Econtactname" id="Econtactname" required class="form-control input-sm floatlabel" placeholder="Emergency Contact Name">

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" required placeholder="Emergency Phone Number" name="Ephoneno"   required id="Ephoneno" class="form-control input-sm"/>  

                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" required placeholder="Emergency Contact Relation" name="Erelation"   required id="Erelation" class="form-control input-sm"/>  

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <label>Date Of Birth</label>
                                    <input type="date" name="Dob" id="Dob" required class="form-control input-sm floatlabel" placeholder="Date Of Birth">

                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">

                                <div class="form-group">
                                    <label>Joining Date</label>
                                    <input type="date"  max="2018-06-21" required name="date" id="date"  class="form-control input-sm"/>  

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <label>Do you live with parents?</label>
                                <div class="form-group">
                                    <select name="select"   class="form-control">

                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <label>Are you a parent?</label>
                                <div class="form-group">
                                    <select name="select1"  class="form-control">

                                        <option>Yes</option>
                                        <option>No</option>
                                    </select>
                                </div>
                            </div>
                        </div>


                        <input type="submit" value="Register" onclick="return validate()" class="btn btn-primary btn-block">
                    </form>

                    <%
                        String msg = request.getParameter("msg");
                        if (msg != null) {
                    %>
                    <label style="color: red; font-style: italic;"><%=msg%></label>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <div class="container-fluid footer" style=" color: #000;">
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
