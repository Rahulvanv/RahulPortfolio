package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.model.Project;

@WebServlet("/projectDashboard")
public class ProjectDashboardServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession(false);


        if(session == null || session.getAttribute("admin") == null){

            response.sendRedirect(
            request.getContextPath()+"/admin/admin-login.jsp");

            return;

        }



        ProjectDAO dao = new ProjectDAO();


        List<Project> list = dao.getAllProjects();


        request.setAttribute("projectList", list);



        // IMPORTANT CHANGE

        request.setAttribute("projectList", list);

        request.getRequestDispatcher(
        "/admin/admin-dashboard.jsp?pageName=project")
        .forward(request, response);



    }

}