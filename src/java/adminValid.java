/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nivedita pathania
 */
public class adminValid extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
       
        String adminusername=request.getParameter("adminusername");
        String adminpassword=request.getParameter("adminpassword");
        
        
       if(adminusername.equals("nivedita") && adminpassword.equals("nivedita"))
                  {
                   request.getSession().setAttribute("loggedInUser", adminusername );
                   response.sendRedirect("adminHome.jsp"); 
                  } 
                        else
                        {
                     out.println("<center><h3 style='color:red'>*INVALID ADMIN CREDENTIALS</h3></center>");
                     getServletContext().getRequestDispatcher("/adminLogin.jsp").include(request, response);
                          }

    }

}
