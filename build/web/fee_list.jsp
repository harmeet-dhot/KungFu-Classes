
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fees</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="w3.css" rel="stylesheet" type="text/css"/>
        <style>
            .footer 
            {
                position: fixed;
                bottom: 0px;
                width:auto; 
                padding-top:20px;
                color:#ffffff;
            }</style>
        <script>
            function go3()
            {

                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("add_payment").innerHTML = xmlhttp.responseText;
                    }
                };
                xmlhttp.open("GET", "./add_fees.jsp", true);
                xmlhttp.send();
            }</script>
    <body>
        <div class="w3-container w3-animate-zoom" id="main">
            <div class="row" style="height: 120px;">
                <div class="jumbotron" style="background-image:url(jbg.jpg); background-size: 100%; color: #ffffff; ">
                    <h2>Payment Records..</h2>
                </div>
            </div>


            <div class="row">
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from payment");
                    if (rs.next()) {
                %>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <table class="w3-border-0" cellpadding="10"  style="margin-top: 12px;">
                        <thead>
                            <tr style="color: #ffffff;">
                                <th>Student_Id </th>
                                <th>Payment_Amount</th>
                                <th>Payment_Type</th>
                                <th>Payment_Date</th>

                            </tr>
                        </thead>
                        <%
                            rs.beforeFirst();
                            while (rs.next()) {
                                int cid = rs.getInt("Stud_Id");
                                String Contactname = rs.getString("Payment_Amount");
                                String Contactno = rs.getString("Payment_Type");
                                String rel = rs.getString("Payment_Date");
                        %>
                        <tbody>
                            <tr class="w3-hover-pale-blue">
                                <td><%=cid%></td>
                                <td><%=Contactname%></td>
                                <td><%=Contactno%></td>
                                <td><%=rel%></td>
                            </tr>
                            <%
                                }
                            %>

                        </tbody>
                    </table>
                </div>
            </div>
            <%
            } else {
            %>



            <p style="color: red; font-style: italic">No records found !</p>


            <%
                }
                String msg = request.getParameter("msg");
                if (msg != null) {
            %>
            <div class="alert alert-success fade in">
                <a href="#" class="close" data-dismiss="alert" label="close">&times;</a>
                <strong><%=msg%>!</strong> 
            </div>
            <%
                }

            %>


        </div>   
        <br>

        <label  class="btn btn-link" data-toggle="modal" data-target="#myModal" onclick="go3()" style="color : blue; cursor :pointer;">Add Payment</label>

        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Add Payment</h4>
                    </div>

                    <div id="add_payment" class="modal-body "></div>

                    <!--<div class="modal-footer"></div>-->
                    <br>
                    <br>
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
