
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
            function goToHomePage()
            {
                window.location.href = "./admin.jsp";
            }
            history.pushState(null, null, '');
            window.addEventListener('popstate', function (event) {
                history.pushState(null, null, 'admin.jsp')
            });
        </script>
        <title>Login</title>
    </head>
    <body id="body">


        <br>

        <div class="row" id="main">
            <div class="col-sm-1"></div>
            <div class="col-sm-6" style="margin:auto;">
                <div class="w3-card-4" style="width:0 auto; margin: auto; height: 280px;">

                    <!-- Modal content-->
                    <div class="modal-header" style=" background-color:#005b96; padding:5px 5px;">
                        <center>    <h4 style="color: #ffffff;"><span class="glyphicon glyphicon-log-in"></span> Login</h4></center>
                    </div>
                    <form action="admin_login.jsp">
                        <br>
                        <input type="text"  required placeholder="User Name" name="email" class="form-control">
                        <br>
                        <input type="password" required placeholder="Password" name="pass" class="form-control">
                        <br>
                        <input type="Submit" value="Submit" class="btn btn-primary">
                    </form>
                 
                </div>

                <%                    
            String msg = request.getParameter("msg");
                    if (msg != null) {
                %>
                <div class="alert alert-danger fade in" >
                    <a href="#" class="close" data-dismiss="alert" label="close">&times;</a>
                    <strong><%=msg%> !</strong> 

                </div>

                <%

                    }


                %>
            </div>
        </div>
        <div class="container-fluid footer" style=" color: #000000;">
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
