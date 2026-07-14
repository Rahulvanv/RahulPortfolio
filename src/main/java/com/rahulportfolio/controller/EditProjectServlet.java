package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.model.Project;

@WebServlet("/editProject")
public class EditProjectServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // Check Admin Session
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect("admin/admin-login.jsp");
            return;
        }

        // Get Project ID
        String idParam = request.getParameter("id");

        if (idParam == null || idParam.isEmpty()) {
            response.sendRedirect("adminDashboard");
            return;
        }

        int id = Integer.parseInt(idParam);

        // Fetch Project
        ProjectDAO dao = new ProjectDAO();
        Project project = dao.getProjectById(id);

        if (project == null) {
            response.sendRedirect("adminDashboard");
            return;
        }

        // Send project to JSP
        request.setAttribute("project", project);

        request.getRequestDispatcher("/admin/edit-project.jsp")
               .forward(request, response);
    }
}