package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.model.Project;


@WebServlet("/addProject")
public class AddProjectServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;


    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {



        Project project = new Project();



        project.setTitle(request.getParameter("title"));

        project.setDescription(request.getParameter("description"));

        project.setTechnologies(request.getParameter("technologies"));

        project.setGithubLink(request.getParameter("githubLink"));

        project.setLiveDemoLink(request.getParameter("liveDemoLink"));

        project.setImagePath(request.getParameter("imagePath"));




        ProjectDAO dao = new ProjectDAO();



        boolean status = dao.addProject(project);



        if(status){


            response.sendRedirect(
            "projectDashboard");


        }
        else{


            response.sendRedirect(
            "admin-dashboard.jsp?page=addProject&error=true");


        }



    }


}