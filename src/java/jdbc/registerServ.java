
package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nivedita pathania
 */
public class registerServ extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        try {
            String fullname=request.getParameter("fullname");
             String emailid=request.getParameter("emailid");
              String username=request.getParameter("username");
               String password=request.getParameter("password");
               
               String sql="insert into registration(fullname, emailid, username, password) values(?,?,?,?)";
               
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=convertToNull","root","nivi@123");
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1, fullname);
            ps.setString(2, emailid);
            ps.setString(3, username);
            ps.setString(4, password);
            
            ps.executeUpdate();
            con.close();
            PrintWriter out=response.getWriter();
            out.println("<h3 style='color:green'>*You have successfully registered</h3>");
            out.println("<h4>Please <a href='login.jsp'>Login</a> to continue..</h4>");
            getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
             
        } 
        
        catch (ClassNotFoundException ex) {
            Logger.getLogger(registerServ.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registerServ.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

}
