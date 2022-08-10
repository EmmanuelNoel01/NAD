/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import conn.DatabaseConnection.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import conn.DatabaseConnection;

/**
 *
 * @author USER
 */

@WebServlet("/CustomerRegistration")
public class CustomerRegistration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        
         Enumeration en =request.getParameterNames();
         
         
        
        try{
//            try to connect to the class that connects to the database
            Connection con = DatabaseConnection.initializeDatabase();
            
//          creating an sql query to add the data into the table created called users
            
            PreparedStatement st = con.prepareStatement("insert into demo values(?, ?)");
            
            //for the first parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(1, Integer.valueOf(request.getParameter("name")));
                        //for the second parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(2, Integer.valueOf(request.getParameter("gender")));
                        //for the third parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(3, Integer.valueOf(request.getParameter("pref")));
                        //for the forth parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(4, Integer.valueOf(request.getParameter("location")));
                        //for the fifth parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(5, Integer.valueOf(request.getParameter("pass")));
            
            //then you excute the insert command using the executeUpdate() method which makes the changes to the table users in the database
            
            st.executeUpdate();
            
            //close the conections
            st.close();
            con.close();
            
            out.println("<html><body><b>Registered Successfully</b></body></html>");
    }catch(Exception e){}
   }
}