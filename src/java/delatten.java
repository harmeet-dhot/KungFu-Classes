import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class delatten extends HttpServlet
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();
        try
        {
            String msg = request.getParameter("msg");
            System.out.println("delete_attendance");
            System.out.println(msg);
            StringTokenizer st = new StringTokenizer(msg, "^");
            String cid = st.nextToken();
            String ClassId = st.nextToken();
            String Attendance_Day = st.nextToken();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = stmt.executeQuery("select * from class_attendence where Stud_Id='"+cid+"' and Class_Id='"+ClassId+"' and Attendence_Day='"+ Attendance_Day+"'");
            
            if(rs.next())
            {
                rs.deleteRow();
                out.println("Record deleted successfully");
            }
            else
            {
                out.println("Record not found");
            }
        } 
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }
}
