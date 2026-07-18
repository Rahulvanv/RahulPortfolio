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

import java.io.File;

import javax.servlet.http.Part;

import javax.servlet.annotation.MultipartConfig;

@MultipartConfig
@WebServlet("/updateProject")
public class UpdateProjectServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Check Admin Session
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect("admin/admin-login.jsp");
            return;
        }

        // Get Form Data
        int id = Integer.parseInt(request.getParameter("id"));

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String technologies = request.getParameter("technologies");
        String githubLink = request.getParameter("githubLink");
        String liveDemoLink = request.getParameter("liveDemoLink");
        String imagePath=null;


        Part filePart=request.getPart("projectImage");


        if(filePart!=null 
        && filePart.getSize()>0){


        String fileName=filePart.getSubmittedFileName();


        String uploadPath =
        		getServletContext().getRealPath("/images/projects");


        File dir=new File(uploadPath);


        if(!dir.exists()){
            dir.mkdir();
        }


        filePart.write(uploadPath+"/"+fileName);


        imagePath="images/projects/"+fileName;


        }
        else{

        imagePath=request.getParameter("oldImage");

        }

        // Set Project Object
        Project project = new Project();

        project.setId(id);
        project.setTitle(title);
        project.setDescription(description);
        project.setTechnologies(technologies);
        project.setGithubLink(githubLink);
        project.setLiveDemoLink(liveDemoLink);
        project.setImagePath(imagePath);

        // Update Project
        ProjectDAO dao = new ProjectDAO();

        boolean status = dao.updateProject(project);

        if (status) {

        	response.sendRedirect(
        			request.getContextPath()
        			+"/projectDashboard");

        } else {

        	response.sendRedirect(
        			request.getContextPath()
        			+"/editProject?id="+id);
        }

    }

}