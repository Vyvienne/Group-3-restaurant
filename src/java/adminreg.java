import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class adminreg extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        //get the variables value from the page
            String name = request.getParameter("uname");
            String mail = request.getParameter("email");
            String passw = request.getParameter("pw");
            request.getRequestDispatcher("adminpg.html").include(request, response); //print the successful message in the page
            out.println("<br><br><br><br><br><br><br> <br><br><br><br><br><br> <b> <p style='position: relative;font-size: 20px;' > &nbsp &nbsp "
                    + "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp "
                    + "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp User added to database successfully! </p> </b> ");
            
            try{     //insert the user detail into the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asguser?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "admin");
            PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?)"); //sql query to insert the user information
            
            //set the parameters
            ps.setString(1, name);
            ps.setString(2, mail);
            ps.setString(3, passw);
            
            ps.executeUpdate(); //execute the query

            }
            catch(Exception e){
                
            }
        
    }

   

}
