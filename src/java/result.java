/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class result extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                   response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        try {
            String st[]=new String[10];
            for(int i=0;i<st.length;i++)
            {
                int j=i+1;
                st[i]=request.getParameter("radio"+j);
            }
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz?zeroDateTimeBehavior=convertToNull","root", "nivi@123");
            Statement stmt=connection.createStatement();
            ResultSet rs=stmt.executeQuery("Select * from test");
            String ans[]= new String[10];
            
            while(rs.next())
            {
                for(int k=0;k<ans.length;k++){
                     ans[k]=rs.getString("ans");
                k++;
                }
               
            }
            int count=0;
            
            for(int i=0;i<ans.length;i++){
                if(st[i].equals(ans[i]))
                {
                    count++;
                }
                
            }
            out.println("The correct answers are:"+count);
        } 
        catch (ClassNotFoundException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(result.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
