<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*;" %>

<%
    try
        {
    String msg = request.getParameter("msg");
    System.out.println(msg);

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from student where Stud_Id='"+ msg+"'");
    if (rs.next()) {
        rs.deleteRow();
        response.sendRedirect("temp.jsp?msg=Record deleted successfully");
        
    } else {
        response.sendRedirect("temp.jsp?msg=Record not found");
        
    }
        }catch(Exception ex)
            {
            ex.printStackTrace();
        }
%>