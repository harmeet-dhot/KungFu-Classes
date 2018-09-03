<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*;" %>

<%
//    int cid = Integer.parseInt(request.getParameter("cid"));
    String msg = request.getParameter("cid");

    StringTokenizer st = new StringTokenizer(msg, ",");
    System.out.println(msg);
    String Cid = st.nextToken();
    String ClassId = st.nextToken();
    String name = request.getParameter("class_id");
    String no = request.getParameter("attendence_day");
    String re = request.getParameter("attendence_date");
    System.out.println(Cid);

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from class_attendence where Stud_Id='" + Cid + "' and Class_Id='" + ClassId + "'");
    if (rs.next()) {
        rs.updateString("Class_Id", name);
        rs.updateString("Attendence_Day", no);
        rs.updateString("Attendence_Date", re);
        rs.updateRow();
        response.sendRedirect("attendance.jsp?msg=Record updated Successfully");
    } else {
        response.sendRedirect("attendance.jsp?msg=Record not found");
    }


%>