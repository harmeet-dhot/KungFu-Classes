
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Fees</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String sts = "Active";
            ArrayList<String> student = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from student");
            while (rs.next()) {
                String name = rs.getString("Stud_Id");
                student.add(name);
            }
            if (student.size() == 0) {
                response.sendRedirect("fee_list.jsp?msg=Add Students First");
            } else {

        %>
        <form role="form" action="add_fees2.jsp" method="post">
            <label>Select the Student_Id</label>
            <div class="form-group">
                <!--<input type="text" class="form-control " name="attendence_date"/>-->
                <select  class="form-control" name="stud_id" required>
                    <%   for (int i = 0; i < student.size(); i++) {
                    %>
                    <option><%=student.get(i)%></option>
                    <%

                        }
                    %>
                </select>
            </div>
                <label>Enter the Payment_Amount</label>
                <div class="form-group">
                    <input type="number" class="form-control " required name="payment"/>
                </div>
            <label>Select the Payment_Type</label>
            <div class="form-group">
                <!--<input type="text" class="form-control " name="attendence_date"/>-->
                <select  class="form-control" name="payment_type" required>

                    <option>Membership</option>
                    <option>Test</option>
                    <option>Others</option>
                </select>
                <%
                        student.clear();
                       
                    }
                %>
                <label>Enter the Date</label>
                <div class="form-group">
                    <input type="date" class="form-control " name="date"/>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary pull-right" value="Save"/>
                </div>
        </form>

    </body>
</html>
