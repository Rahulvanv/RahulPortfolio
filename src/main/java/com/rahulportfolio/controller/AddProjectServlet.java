package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.model.Project;

import java.io.File;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig
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

        Part filePart=request.getPart("projectImage");


        String fileName=
        filePart.getSubmittedFileName();


        String uploadPath=
        getServletContext().getRealPath("")
        +"images/projects";


        File uploadDir=new File(uploadPath);

        if(!uploadDir.exists()){
            uploadDir.mkdir();
        }


        filePart.write(uploadPath + File.separator + fileName);



        project.setImagePath(
        "images/projects/"+fileName
        );




        ProjectDAO dao = new ProjectDAO();



        boolean status = dao.addProject(project);



        if(status){


        	response.sendRedirect(
        			request.getContextPath()+"/projectDashboard");


        }
        else{


        	response.sendRedirect(
        			request.getContextPath()
        			+"/projectDashboard");


        }



    }


}