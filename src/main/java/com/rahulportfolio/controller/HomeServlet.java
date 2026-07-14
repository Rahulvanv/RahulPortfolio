package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.model.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        ProjectDAO projectDAO = new ProjectDAO();

        List<Project> projectList = projectDAO.getAllProjects();

        request.setAttribute("projectList", projectList);

        request.getRequestDispatcher("/index.jsp")
               .forward(request, response);
    }
}