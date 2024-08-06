/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.dao.UserDaoClass;
import com.db.DBConnect;
import com.entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author julia
 */
@WebServlet(name = "AdminSigninServlet", urlPatterns = {"/admin-login"})
public class AdminSigninServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminSigninServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            try
            {
                String adminEmail = request.getParameter("adminEmail1");
                String adminPassword = request.getParameter("adminPassword1");
                String adminModule = request.getParameter("adminModule1");
                
                
                /*  For Creating Session object  */
                HttpSession session = request.getSession();
                
                
                UserDaoClass userDaoClass = new UserDaoClass(DBConnect.getConnection());
                 
                User user = userDaoClass.getUserModule(adminEmail);
                
                
                if( user == null )
                {
                    session.setAttribute("errorMsg", "Account not Created, Please Create an Account!");
                    response.sendRedirect("admin-reg");
                }
                else if( adminModule.equals("Admin") && adminModule.equals(user.getModule()) )
                {
                    if( user.getModule().equals("Admin") )
                    {
                        if( user.getEmail().equals(adminEmail) && user.getPassword().equals(adminPassword) )
                        {
                            session.setAttribute("adminObj", user);
                            response.sendRedirect("admin/profile");
                        }
                        else
                        {
                            session.setAttribute("errorMsg", "Invalid Email id & Password");
                            response.sendRedirect("admin");
                        }
                    }
                    else
                    {
                        session.setAttribute("errorMsg", "Account not Created, Please Create an Account!");
                        response.sendRedirect("admin-reg");
                    }
                }
                else
                {
                    session.setAttribute("errorMsg", "OOPs! Something Went Wrong on Server...");
                    response.sendRedirect("admin");
                }
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            
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
