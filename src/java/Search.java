import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

public class Search extends HttpServlet {

       public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();        
              //get the username to search from the page
              String name=request.getParameter("uname");
              
              try{
                  //connect to database
                     Class.forName("com.mysql.cj.jdbc.Driver");
                     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/asguser?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false", "root", "admin");               
                     PreparedStatement ps=con.prepareStatement("select * from reg where uname=?"); //sql query to get the certain user information from database
                     ps.setString(1,name);       
                     out.print("<link rel=\"stylesheet\" type=\"text/css\" href=\"admincss.css\">");
                     out.print("<center><table width=50% border=1>");
                     out.print("<center><h1>Search result:</h1></center>");
                     ResultSet rs=ps.executeQuery();//execute the query
                     
                     while(rs.next()) //print the user data from database : username, email and password
                    {
                     out.print("<tr>");
                     out.print("<td> Username: </td>");
                        out.print("<td>"+rs.getString(1)+"</td></tr>");
                        out.print("<tr><td> Email: </td>");
                        out.print("<td>"+rs.getString(2)+"</td></tr>");
                        out.print("<tr><td> Password: </td>");
                        out.print("<td>"+rs.getString(3)+"</td></tr>");   
                     }

                     out.print("</table> </center>");
                     con.close();         //close the database connection.
              }catch (Exception e)
                {

                }

       }

} 