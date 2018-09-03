
<%@page import="java.sql.*;" %>

<%
//    int cid = Integer.parseInt(request.getParameter("cid"));
    String stud_id = request.getParameter("stud_id");
    String payment = request.getParameter("payment");
    String payment_type = request.getParameter("payment_type");
    String datee = request.getParameter("date");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from payment ");
    rs.moveToInsertRow();
    rs.updateString("Stud_Id", stud_id);
    rs.updateString("Payment_Amount", payment);
    rs.updateString("Payment_Type", payment_type);
    rs.updateString("Payment_Date", datee);
    rs.insertRow();

    response.sendRedirect("fee_list.jsp?msg=Payment Added Successfully");


%>