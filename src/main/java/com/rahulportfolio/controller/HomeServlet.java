package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rahulportfolio.dao.ProjectDAO;
import com.rahulportfolio.dao.SkillDAO;
import com.rahulportfolio.dao.EducationDAO;

import com.rahulportfolio.model.Project;
import com.rahulportfolio.model.Skill;
import com.rahulportfolio.model.Education;

import com.rahulportfolio.dao.ExperienceDAO;
import com.rahulportfolio.model.Experience;

import com.rahulportfolio.dao.CertificateDAO;
import com.rahulportfolio.model.Certificate;

import com.rahulportfolio.model.Profile;
import com.rahulportfolio.dao.ProfileDAO;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println(">>>>>>>> HOME SERVLET EXECUTED <<<<<<<<");

        // Projects
        ProjectDAO projectDAO = new ProjectDAO();
        List<Project> projectList = projectDAO.getAllProjects();
        
     // ==========================
     // Certificate
     // ==========================

     CertificateDAO certificateDAO = new CertificateDAO();


     List<Certificate> certificateList =
             certificateDAO.getAllCertificates();


     request.setAttribute(
             "certificateList",
             certificateList
     );

        // Skills
        SkillDAO skillDAO = new SkillDAO();
        List<Skill> skillList = skillDAO.getAllSkills();

        // Education
        EducationDAO educationDAO = new EducationDAO();
        List<Education> educationList = educationDAO.getAllEducation();
        
        // Experience 
        ExperienceDAO experienceDAO = new ExperienceDAO();

        List<Experience> experienceList = experienceDAO.getAllExperience();
        
        // certificate 
        
        Profile profile = new ProfileDAO().getProfile();

      

        
        
        

        System.out.println("Projects = " + projectList.size());
        System.out.println("Skills = " + skillList.size());
        System.out.println("Education = " + educationList.size());

        
        request.setAttribute("profile", profile);
        request.setAttribute("projectList", projectList);
        request.setAttribute("skillList", skillList);
        request.setAttribute("educationList", educationList);
        request.setAttribute("experienceList",experienceList);

        request.getRequestDispatcher("/index.jsp")
               .forward(request, response);
    }
}