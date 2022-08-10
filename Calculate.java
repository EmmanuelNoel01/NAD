package servlets;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class Calculate extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
         
         
         
        try{
            /* TODO output your page here. You may use following sample code. */
            out.println("<h1> </h1>");
            //long term products
            int x = parseInt(request.getParameter("products"));
            
            //Mid term products
            int y = 2*x;
            
            //Short term
            int z = 5*y;
            
            out.println("<h1>The Long Term Products are "+x+"</h1>");
            out.println("<h1>The Mid Term Products are "+y+"</h1>");
            out.println("<h1>The Short Term Products are "+z+"</h1>");
            
            //initialising the number of employees
            //emplooyees working on the long term products            
            int a = parseInt(request.getParameter("ltp"));
            //emplooyees working on the mid term products
            int b = parseInt(request.getParameter("mtp"));
            //emplooyees working on the short term products
            int c = parseInt(request.getParameter("stp"));
            
            
            //since the assumption is that no product line remain with no employee
            if(x<y || x<z){
                a=x-6;
                b=y+3;
                c=z+3;
                out.println("<h1>Six Employees where relocated to the different productlines equivalently "+a+" remained on the long term products </h1>");
            }else{
                out.println("<h1>Product lines have equal demand</h1>");
            }
            
            
        }catch(Exception e){}
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
