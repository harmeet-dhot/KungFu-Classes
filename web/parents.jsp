
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parents</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link href="w3.css" rel="stylesheet" type="text/css"/>
        <style>
            .footer 
            {
                position: fixed;
                bottom: 0px;
                width:fit-content; 
                padding-top:20px;
                color:#ffffff;
            }</style>
       
    <body>
        <div class="w3-container w3-animate-zoom" id="main">
            <div class="row" style="height: 120px;">
                <div class="jumbotron" style="background-image:url(jbg.jpg); background-size: 100%; color: #ffffff; ">
                    <h2>Parents Details..</h2>
                </div>
            </div>


            <div class="row" id="data">
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from parent_details");
                    if (rs.next()) {
                %>
                <div class="col-sm-2" ></div>
                <div class="col-sm-8" >
                    <table class="w3-border-2" cellpadding="10"  style="margin-top: 12px;">
                        <thead>
                            <tr style="color: #ffffff;">
                                <th>Student_Id </th>
                                <th>Parent_Relation </th>
                                <th>Parent_Name </th>
                                <th>Parent_Phone </th>
                                <th>Parent_Email </th>
                            </tr>
                        </thead>
                        <%
                            rs.beforeFirst();
                            while (rs.next()) {
                                int cid = rs.getInt("P_Stud_Id");
                                String Contactname = rs.getString("Parent_Relation");
                                String Contactno = rs.getString("Parent_Name");
                                String rel = rs.getString("Parent_Phone");
                                String rell = rs.getString("Parent_Email");
                        %>
                        <tbody>
                            <tr class="w3-hover-pale-blue">
                                <td><%=cid%></td>
                                <td><%=Contactname%></td>
                                <td><%=Contactno%></td>
                                <td><%=rel%></td>
                                <td><%=rell%></td>
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

        <div class="container-fluid footer" style=" color: #000;">
            <div class="container">

                <div class="row">
                    <div class="row text-center" style="font-family: 'Open Sans'; font-size: 12px;"> &copy;2018
                        STEPHANOS KUNGFU CLUB. All Rights Reserved
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
