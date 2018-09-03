<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*;" %>

<%
//    int cid = Integer.parseInt(request.getParameter("cid"));
    String stud_id = request.getParameter("stud_id");
    String clss = request.getParameter("class_id");
    String datee = request.getParameter("date");
    StringTokenizer st = new StringTokenizer(clss, ",");
    System.out.println(clss);
    String Class_id = st.nextToken();
    String Class_day = st.nextToken();
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from class_attendence ");
            rs.moveToInsertRow();
            rs.updateString("Stud_Id", stud_id);
            rs.updateString("Class_Id", Class_id);
            rs.updateString("Attendence_Day", Class_day);
            rs.updateString("Attendence_Date",datee);
            rs.insertRow();

            response.sendRedirect("attendance.jsp?msg=Attendance Added Successfully");



%>