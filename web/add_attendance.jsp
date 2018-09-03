
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Attendance</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String sts = "Active";
            ArrayList<String> student = new ArrayList<String>();
            ArrayList<String> classes = new ArrayList<String>();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from student");
            while (rs.next()) {
                String name = rs.getString("Stud_Id");
                student.add(name);
            }

            ResultSet rs1 = stmt.executeQuery("select * from class_schedule where Class_Status='" + sts + "'");
            while (rs1.next()) {
                String class_id = rs1.getString("Class_Level_Id");
                String class_day = rs1.getString("Class_Day");
                String class_time = rs1.getString("class_Start_Time");
                String cls = class_id + "," + class_day + "," + class_time;
                classes.add(cls);
            }
            if (student.size() == 0 || classes.size() == 0) {
                response.sendRedirect("attendance.jsp?msg=Add Students First");
            } else {
        %>
        <form role="form" action="add_attendance2.jsp" method="post">
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
            <label>Select the Class_Id,Day and Time</label>
            <div class="form-group">
                <!--<input type="text" class="form-control " name="attendence_date"/>-->
                <select  class="form-control" name="class_id" required>
                    <%   for (int i = 0; i < classes.size(); i++) {
                    %>
                    <option><%=classes.get(i)%></option>
                    <%

                        }
                    %>
                </select>
                <%
                        student.clear();
                        classes.clear();
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
