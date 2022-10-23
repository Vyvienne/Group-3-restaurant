import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

public class logIn extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            
            //get the username and password input from the page
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            request.getRequestDispatcher("loginPg.jsp").include(request, response);
               
            try{
            //database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/asguser?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "admin");
            Statement stmt = con.createStatement();
            
            //execute the sql statement to find the match username and password. 
            ResultSet rs = stmt.executeQuery("select * from reg where uname='"+name+"' and pw='"+password+"'");
           
            if(rs.next()){ //if rs has value (user input a correct pair of id and password)
                
                request.setAttribute("name", name);
                request.getRequestDispatcher("home.jsp").forward(request, response);
                
            }else{ //user input wrong id and password, print the message
                out.println("<center> <b> <p style='position: relative; top: 450px; left: 180px' > Wrong username or password! </p> </b> </center>");
            }
            con.close();//close the database connection
                
            }catch (Exception e){
                
                
            }
            
    }

}
