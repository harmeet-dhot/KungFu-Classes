
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Added Successfully</title>
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

                </div>
            </div>


            <div class="row" id="data">
                <%
                    ArrayList<String> student = new ArrayList();
                    ArrayList<String> cls = new ArrayList();
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from student");
                    while (rs.next()) {
                        String stud = rs.getString("Stud_Id");
                        student.add(stud);
                    }
                    ResultSet rs1 = stmt.executeQuery("select * from rank_award");
                    while (rs1.next()) {
                        String stud = rs1.getString("Stud_Id");
                        cls.add(stud);
                    }

                %>
                <div class="col-sm-2" ></div>
                <div class="col-sm-8" >

                </div>
            </div>
            <%
            %>



            <p style="color: red; font-style: italic">No records found !</p>


            <%                String msg = request.getParameter("msg");
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
