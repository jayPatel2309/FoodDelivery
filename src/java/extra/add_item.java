/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package extra;

import com.Items;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "add_item", urlPatterns = {"/add_item"})
public class add_item extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            int id =Integer.parseInt(request.getParameter("id")) ;
            System.out.println(id);
            HttpSession session =  request.getSession(false);
            System.out.println(session.getId());
            ArrayList<Items> items = (ArrayList<Items>)session.getAttribute("item");
            if(session.getAttribute("item") != null){
                    Iterator<Items> iter = items.iterator(); 
                    out.print(items.size());
                    while (iter.hasNext()) { 
                        Items t = (Items)iter.next();
                        System.out.print(t.getName() + " "); 
                    } 
                    String url = "jdbc:mysql://localhost:3306/food";
                    String user = "root";
                    String pass = "";
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(index.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    try {
                        Connection conn;
                        conn = DriverManager.getConnection(url, user, pass);
                        Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("select * from food_item");
        //                 while (rs.next()) {
        //                     if(rs.getInt(1)==id){
        //                         items.add(new Items(rs.getInt(1), rs.getString(2), rs.getDouble(4)));
        //                     }
        //                }
//                         session.setAttribute("item", items);
                    } catch (SQLException ex) {
                        Logger.getLogger(add_item.class.getName()).log(Level.SEVERE, null, ex);
                    }
            }else{
                System.out.println("NOTA");
            }
            

            
//            System.out.println(session.getAttribute("items"));
            
//            response.sendRedirect("index2.jsp");
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
