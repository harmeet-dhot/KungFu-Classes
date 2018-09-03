<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.*;" %>

<%
    int cid = Integer.parseInt(request.getParameter("cid"));
//    String msg = request.getParameter("cid");
    System.out.println("hello");
    String F_name = request.getParameter("F_name");
    System.out.println(F_name);
    String L_name = request.getParameter("L_name");
    System.out.println(L_name);
    String Dob = request.getParameter("Dob");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String province = request.getParameter("province");
    String zip = request.getParameter("zip");
    String econtact_name = request.getParameter("econtact_name");
    String econtact_number = request.getParameter("econtact_number");
    String date_joined = request.getParameter("date_joined");

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    ResultSet rs = stmt.executeQuery("select * from student where Stud_Id='" + cid + "'");
    if (rs.next()) {

        rs.updateString("Stud_FName",F_name);
        rs.updateString("Stud_LName",L_name);
        rs.updateString("Stud_DOB",Dob);
        rs.updateString("Stud_Gender",gender);
        rs.updateString("Stud_Email",email);
        rs.updateString("Stud_Phone",phone);
        rs.updateString("Stud_Address",address);
        rs.updateString("Stud_City",city);
        rs.updateString("Stud_Province",province);
        rs.updateString("Stud_Zip",zip);
        rs.updateString("Stud_EContact_Name",econtact_name);
        rs.updateString("Stud_EContact_Phone",econtact_number);
        rs.updateString("Stud_Date_Joined",date_joined);
        rs.updateRow();
        response.sendRedirect("temp.jsp?msg=Record updated Successfully");
    } else {
        response.sendRedirect("temp.jsp?msg=Record not found");
    }


%>