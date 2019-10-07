
package mail;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mail.ejb.MailSenderBean;

public class MailDispatcherServlet extends HttpServlet {
@EJB
 private MailSenderBean mailSender;
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String name=request.getParameter("name");
        String fromEmail=request.getParameter("email");
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");
        
        String toEmail="subjectedu.sync@gmail.com";
        String username="subjectedu.sync";
        String password="subjectEdupass.123";
        
        try (PrintWriter out = response.getWriter()) {
            
            //to call mail sender bean
            
            mailSender.sendEmail(fromEmail, username, password, toEmail, subject, message);
            
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Mail Status</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<center><h1> Mail Status!!!</h1></center>");
            out.println("<center><h2 style='color:green;'> Mail Sent Successfully.</h2></center><br>");
            out.println("<center>Thank you <span style='color:red;'>"+name+"</span>, your message has been submitted to us.</center>");
            out.println("<center>click <a href='contact.jsp'>here</a> to go back.</center>");
            out.println("</body>");
            out.println("</html>");
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
