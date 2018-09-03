
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

            ArrayList<String> student = new ArrayList<String>();
            ArrayList<String> belts = new ArrayList<String>();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from student");
            while (rs.next()) {
                String name = rs.getString("Stud_Id");
                student.add(name);
            }
            Statement stmt1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs1 = stmt1.executeQuery("select * from rank_belt");
            while (rs1.next()) {
                String namew = rs1.getString("Rank_Id");
                String color = rs1.getString("Belt_Color");
                String all = namew + "," + color;
                belts.add(all);
            }
            if (student.size() == 0) {
                response.sendRedirect("rank.jsp?msg=Add Students First");
            } else {

        %>
        <form role="form" action="add_rank2.jsp" method="post">
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

            <label>Select the Rank_Id</label>
            <div class="form-group">
                <!--<input type="text" class="form-control " name="attendence_date"/>-->
                <select  class="form-control" name="belt_type" required>
                    <%   for (int i = 0; i < belts.size(); i++) {
                    %>
                    <option><%=belts.get(i)%></option>
                    <%

                        }
                    %>
                </select>
                <%
                        student.clear();
                        belts.clear();
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
