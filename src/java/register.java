import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class register extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
            //get the user information from register page
            String name = request.getParameter("uname");
            String mail = request.getParameter("email");
            String passw = request.getParameter("pw");
            request.getRequestDispatcher("reg.jsp").include(request, response);
            
            //print the register successful message
            out.println("<center> <b> <p style='position:relative; font-size: 50px;'> Registered successfully! </p> </b> </center>");
            
            try{               
            //conect the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asguser?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "admin");
            PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?)");//create the sql statement to insert the user information
            
            //assign the values
            ps.setString(1, name);
            ps.setString(2, mail);
            ps.setString(3, passw);
            
            //execute the sql statement : insert new user data to the database
            ps.executeUpdate();
            
            }
            catch(Exception e){
                
            }
        
    }

   

}
