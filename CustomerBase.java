/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import conn.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class CustomerBase extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
//           Connection con = DatabaseConnection.initializeDatabase();
//            
////          creating an sql query to add the data into the table created called users
//            
//            PreparedStatement st = con.prepareStatement("insert into demo values(?, ?)");
//            
//            //for the first parameter from our form get the data using request object which sets the data to st pointer
//            st.setInt(1, Integer.valueOf(request.getParameter("name")));
//                        //for the second parameter from our form get the data using request object which sets the data to st pointer
//            st.setInt(2, Integer.valueOf(request.getParameter("gender")));
//                        //for the third parameter from our form get the data using request object which sets the data to st pointer
//            st.setInt(3, Integer.valueOf(request.getParameter("pref")));
//                        //for the forth parameter from our form get the data using request object which sets the data to st pointer
//            st.setInt(4, Integer.valueOf(request.getParameter("location")));
        
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CustomerBase</title>");            
            out.println("</head>");
            out.println("<body>");
            Connection con = DatabaseConnection.initializeDatabase();
            
//          creating an sql query to add the data into the table created called users            
            PreparedStatement st = con.prepareStatement("SELECT stp, mtp, ltp, custname, prodname " +
                             "FROM candidates");
            
            //for the first parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(1, Integer.valueOf(request.getParameter("ltp")));
                        //for the second parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(2, Integer.valueOf(request.getParameter("mtp")));
                        //for the third parameter from our form get the data using request object which sets the data to st pointer
            st.setInt(3, Integer.valueOf(request.getParameter("stm")));
            
            
            
            //close the conections
            st.close();
            con.close();
            
            out.println("<html><body><b>Shot-term <br>"+st+"</b></body></html>");
            out.println("<html><body><b>mid-term <br>"+st+"</b></body></html>");
            out.println("<html><body><b>long-term <br>"+st+"</b></body></html>");
            out.println("<html><body><b>Customer name <br>"+st+"</b></body></html>");
            out.println("<html><body><b>Customer product <br>"+st+"</b></body></html>");


            out.println("</body>");
            out.println("</html>");
        }
    }
}
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
