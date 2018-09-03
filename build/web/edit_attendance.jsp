<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Attendance</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            String msg = request.getParameter("msg");
            StringTokenizer st = new StringTokenizer(msg, "^");
            String cid = st.nextToken();
            String ClassId = st.nextToken();
//            int cid = Integer.parseInt(request.getParameter("cid"));
//            int ClassId = Integer.parseInt(request.getParameter("Contactname"));
        %>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from class_attendence where Stud_Id='" + cid + "' and Class_Id='" + ClassId + "'");
            if (rs.next()) {
                String name = rs.getString("Class_Id");
                String no = rs.getString("Attendence_Day");
                String rel = rs.getString("Attendence_Date");
        %>
        <form role="form" action="edit_attendance2.jsp?cid=<%=cid%>,<%=ClassId%>" method="post">
            <label>Class_Id</label>
            <div class="form-group">
                <input type="text" class="form-control " name="class_id" value="<%=name%>"/>
            </div> 
            <label>Attendance_Day</label>
            <div class="form-group">

                <input type="text" class="form-control " name="attendence_day" value="<%=no%>"/>
            </div>
            <label>Attendance_Date</label>
            <div class="form-group">
                <input type="date" class="form-control " name="attendence_date" value="<%=rel%>"/>
                <!--                    <select name="relation"   class="btn" required>
                                            <option>Friends</option>
                                            <option>Family</option>
                                            <option>Sibling</option>
                                            <option>Business</option>
                                            <option>Other</option>
                                        </select>-->
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
