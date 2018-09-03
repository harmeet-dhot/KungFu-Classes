
import java.io.*;
import java.security.SecureRandom;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.sql.*;

@MultipartConfig
public class addstudent extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String x = request.getParameter("email");
        String email = request.getParameter("email");
        int p = 0;
        System.out.println(email);
        String Dob = request.getParameter("Dob");
        String ddate = request.getParameter("date");
        StringTokenizer st = new StringTokenizer(Dob, "-");
        int year1 = Integer.parseInt(st.nextToken());
        StringTokenizer st1 = new StringTokenizer(ddate, "-");
        int year2 = Integer.parseInt(st1.nextToken());
        
        if(year2-year1<3)
        {
          response.sendRedirect("add_students.jsp?msg=Invalid Date of Birth");  
        }
        char t[] = x.toCharArray();
        for (int i = 0; i < x.length(); i++) {

            if (!(t[i] >= 'A' && t[i] <= 'Z' || t[i] >= 'a' && t[i] <= 'z' || t[i] >= '0' && t[i] <= '9' || t[i] == '.' || t[i] == '_' || t[i] == '@') || t[0] >= '0' && t[0] <= '9' || t[x.length() - 1] >= '0' && t[x.length() - 1] <= '9' || t[i] == '@' && t[i + 1] == '@' || t[i] == '.' && t[i + 1] == '.' || t[i] == '@' && t[i + 1] == '.' || t[i] == '.' && t[i + 1] == '@' || t[x.length() - 1] == '.' || t[x.length() - 1] == '_' || t[x.length() - 1] == '@' || !((x.lastIndexOf('.')) - (x.indexOf('@')) > 1)) {

                p = 1;
                break;
            }
        }

        if (p == 1) {
            response.sendRedirect("add_students.jsp?msg=Invalid Email");
        } else {
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String gender = request.getParameter("gender");
            String phonenumber = request.getParameter("phonenumber");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String zip = request.getParameter("zip");
            String province = request.getParameter("province");
            String Econtactname = request.getParameter("Econtactname");
            String Econtactno = request.getParameter("Ephoneno");
            String Erealtion = request.getParameter("Erelation");
//            String Dob = request.getParameter("Dob");
//            String ddate = request.getParameter("date");
            String Wparents = request.getParameter("select");
            String parents = request.getParameter("select1");
//            System.out.println(firstname);
//            System.out.println(lastname);
//            System.out.println(gender);
//            System.out.println(phonenumber);
//            System.out.println(address);
//            System.out.println(city);
//            System.out.println(province);
//            System.out.println(Econtactname);
//            System.out.println(Econtactno);
//            System.out.println(Erealtion);
//            System.out.println(Dob);
//            System.out.println(ddate);
//            response.setContentType("text/html;charset=UTF-8");

            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from student where Stud_Email='" + email + "'");
                ///  ## CODE Ends Here  ////
                if (rs.next()) {
                    response.sendRedirect("add_students.jsp?msg=EmailId Already Registered");
                }
                rs.moveToInsertRow();
                System.out.println("100");
                rs.updateString("Stud_FName", firstname);
                rs.updateString("Stud_LName", lastname);
                rs.updateString("Stud_DOB", Dob);
                rs.updateString("Stud_Gender", gender);
                rs.updateString("Stud_Email", email);
                rs.updateString("Stud_Phone", phonenumber);
                rs.updateString("Stud_Address", address);
                rs.updateString("Stud_City", city);
                rs.updateString("Stud_Zip", zip);
                rs.updateString("Stud_Province", province);
                rs.updateString("Stud_EContact_name", Econtactname);
                rs.updateString("Stud_EContact_Phone", Econtactno);
                rs.updateString("Stud_EContact_Relation", Erealtion);
                rs.updateString("Stud_live_with_Parent", Wparents);
                rs.updateString("Is_Parent", parents);
                rs.updateString("Stud_Date_Joined", ddate);
                rs.insertRow();

                response.sendRedirect("temp.jsp?msg=You have been Successfully registered.");

//                response.sendRedirect("temp.jsp?msg=You have been Successfully registered.");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
