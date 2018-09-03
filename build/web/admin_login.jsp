<%@page import="java.sql.*;" %>

<%
    
    String  email= request.getParameter("email");

   String password = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from admin where Admin_UserName='"+email+"' and Admin_Password='"+password+"'");
    if(rs.next())
    {
        
        response.sendRedirect("temp.jsp");
    }
    else
    {
        response.sendRedirect("admin.jsp?msg=Invalid Username/Password");
    }
    
%>