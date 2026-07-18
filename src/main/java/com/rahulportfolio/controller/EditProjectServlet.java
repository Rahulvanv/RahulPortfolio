package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

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

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {

            response.sendRedirect(
                request.getContextPath() + "/admin/admin-login.jsp");
            return;

        }

        String idParam = request.getParameter("id");

        if (idParam == null || idParam.isEmpty()) {

            response.sendRedirect(
                request.getContextPath() + "/projectDashboard");
            return;

        }

        int id = Integer.parseInt(idParam);

        ProjectDAO dao = new ProjectDAO();

        Project project = dao.getProjectById(id);

        List<Project> projectList = dao.getAllProjects();

        request.setAttribute("projectList", projectList);
        request.setAttribute("editProject", project);

        request.getRequestDispatcher(
                "/admin/admin-dashboard.jsp?pageName=project")
                .forward(request, response);

    }

}