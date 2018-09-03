<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Students</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%

            int cid = Integer.parseInt(request.getParameter("cid"));
            
            System.out.println(cid);

        %>

        <%            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from student where Stud_Id='" + cid + "'");
            if (rs.next()) {
                String F_name = rs.getString("Stud_FName");
                String L_name = rs.getString("Stud_LName");
                String Dob = rs.getString("Stud_DOB");
                String gender = rs.getString("Stud_Gender");
                String email = rs.getString("Stud_Email");
                String phone = rs.getString("Stud_Phone");
                String address = rs.getString("Stud_Address");
                String city = rs.getString("Stud_City");
                String province = rs.getString("Stud_Province");
                String zip = rs.getString("Stud_Zip");
                String econtact_name = rs.getString("Stud_EContact_Name");
                String econtact_number = rs.getString("Stud_EContact_Phone");
                String date_joined = rs.getString("Stud_Date_Joined");
        %>
        <form role="form" action="edit_students2.jsp?cid=<%=cid%>" method="post">
            <label>First_Name</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="F_name" value="<%=F_name%>"/>
            </div> 
            <label>Last_Name</label>
            <div class="form-group">

                <input type="text" class="form-control " required name="L_name" value="<%=L_name%>"/>
            </div>
            <label>Date_Of_Birth</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="Dob" value="<%=Dob%>"/>
            </div>
            <label>Gender</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="gender" value="<%=gender%>"/>
            </div>
            <label>Email</label>
            <div class="form-group">
                <input type="text" class="form-control " name="email" value="<%=email%>"/>
            </div>
            <label>Phone</label>
            <div class="form-group">
                <input type="text" class="form-control " name="phone" value="<%=phone%>"/>
            </div>
            <label>Address</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="address" value="<%=address%>"/>
            </div>
            <label>City</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="city" value="<%=city%>"/>
            </div>
            <label>Province</label>
            <div class="form-group">
                <input type="text" class="form-control "required  name="province" value="<%=province%>"/>
            </div>
            <label>Zip_Code</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="zip" value="<%=zip%>"/>
            </div>
            <label>Emergency_Contact_Name</label>
            <div class="form-group">
                <input type="text" class="form-control "required  name="econtact_name" value="<%=econtact_name%>"/>
            </div>
            <label>Emergency_Contact_Number</label>
            <div class="form-group">
                <input type="text" class="form-control " required name="econtact_number" value="<%=econtact_number%>"/>
            </div>
            <label>Joining_Date</label>
            <div class="form-group">
                <input type="date" class="form-control " required name="date_joined" value="<%=date_joined%>"/>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary pull-right" value="Save"/>
            </div>
        </form>
        <%
            }
        %>
    </body>
</html>
