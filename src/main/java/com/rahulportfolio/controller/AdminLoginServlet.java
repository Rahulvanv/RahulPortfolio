package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.AdminDAO;
import com.rahulportfolio.model.Admin;




@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;


    AdminDAO adminDAO = new AdminDAO();



    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    )
    throws ServletException, IOException {


        String username =
                request.getParameter("username");


        String password =
                request.getParameter("password");


        Admin admin = adminDAO.login(username, password);

        if (admin != null) {

            HttpSession session = request.getSession();

            session.setAttribute("admin", admin);

            response.sendRedirect("adminDashboard");

        } else {

            response.sendRedirect("admin/admin-login.jsp");

        }

    }



}