package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rahulportfolio.dao.AdminDAO;
import com.rahulportfolio.model.Admin;

@WebServlet("/adminLogin")
public class AdminLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO adminDAO = new AdminDAO();

        Admin admin = adminDAO.login(username, password);

        if (admin != null) {

            HttpSession session = request.getSession();

            session.setAttribute("admin", admin);

            response.sendRedirect("admin/admin-dashboard.jsp");

        } else {

            response.sendRedirect("admin/admin-login.jsp?error=true");

        }
    }
}