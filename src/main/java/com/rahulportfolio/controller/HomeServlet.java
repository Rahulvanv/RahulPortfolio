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

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println(">>>>>>>> HOME SERVLET EXECUTED <<<<<<<<");

        ProjectDAO dao = new ProjectDAO();

        List<Project> list = dao.getAllProjects();

        System.out.println("Projects = " + list.size());

        request.setAttribute("projectList", list);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}