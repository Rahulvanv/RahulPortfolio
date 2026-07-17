package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SkillDAO;

@WebServlet("/deleteSkill")
public class DeleteSkillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect("admin/admin-login.jsp");
            return;
        }

        int id = Integer.parseInt(request.getParameter("id"));

        SkillDAO dao = new SkillDAO();

        dao.deleteSkill(id);

        response.sendRedirect("adminDashboard?page=skill");
    }
}