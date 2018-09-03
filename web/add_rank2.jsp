
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*;" %>

<%
//    int cid = Integer.parseInt(request.getParameter("cid"));
    String stud_id = request.getParameter("stud_id");
    String payment = request.getParameter("belt_type");
    String datee = request.getParameter("date");
    StringTokenizer st = new StringTokenizer(payment, ",");
    System.out.println(payment);
    String Rid = st.nextToken();
    String ClassId = st.nextToken();

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from rank_award ");
    rs.moveToInsertRow();
    rs.updateString("Stud_Id", stud_id);
    rs.updateString("Rank_Id", Rid);
    rs.updateString("Rank_Date_Awarded", datee);

    rs.insertRow();

    response.sendRedirect("rank.jsp?msg=Rank Added Successfully");


%>