package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

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

import com.rahulportfolio.dao.ProfileDAO;
import com.rahulportfolio.model.Profile;

import com.rahulportfolio.dao.ContactDAO;

import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.model.Settings;

@WebServlet("/adminDashboard")
public class AdminDashboardServlet extends HttpServlet {

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

     // ==========================
     // Projects
     // ==========================

     ProjectDAO projectDAO = new ProjectDAO();
     List<Project> projectList = projectDAO.getAllProjects();

     request.setAttribute("projectList", projectList);
     request.setAttribute("projectCount", projectList.size());
     
     
     

     // ==========================
     // Skills
     // ==========================

     SkillDAO skillDAO = new SkillDAO();

     List<Skill> skillList =
             skillDAO.getAllSkills();

     request.setAttribute(
             "skillList",
             skillList
     );

     request.setAttribute(
             "skillCount",
             skillList.size()
     );

     // ==========================
     // Education
     // ==========================

     EducationDAO educationDAO = new EducationDAO();
     List<Education> educationList = educationDAO.getAllEducation();
     
     Education editEducation =
    		 (Education) session.getAttribute("editEducation");

    		 if(editEducation != null){

    		     request.setAttribute("editEducation", editEducation);

    		     session.removeAttribute("editEducation");

    		 }

     request.setAttribute("educationList", educationList);
     request.setAttribute("educationCount", educationList.size());
     
     // experience
     
  // ==========================
  // Experience
  // ==========================

  ExperienceDAO experienceDAO = new ExperienceDAO();

  List<Experience> experienceList =
          experienceDAO.getAllExperience();


  request.setAttribute(
          "experienceList",
          experienceList
  );


  request.setAttribute(
          "experienceCount",
          experienceList.size()
  );
  
  
  // certificate
  
//==========================
//Certificate
//==========================

CertificateDAO certificateDAO = new CertificateDAO();

List<Certificate> certificateList =
certificateDAO.getAllCertificates();


request.setAttribute(
       "certificateList",
       certificateList
);


request.setAttribute(
       "certificateCount",
       certificateList.size()
);


//==========================
//Profile
//==========================

ProfileDAO profileDAO = new ProfileDAO();

Profile profile = profileDAO.getProfile();

request.setAttribute("profile", profile);

//==========================
//Messages
//==========================

// settings 

SettingsDAO settingsDAO = new SettingsDAO();

Settings settings = settingsDAO.getSettings();

request.setAttribute("settings", settings);

// contacts 

ContactDAO contactDAO = new ContactDAO();

int messageCount =
     contactDAO.getContactCount();


request.setAttribute(
     "messageCount",
     messageCount
);
  // ==========================
  // Edit Skill
  // ==========================

  Skill editSkill = (Skill) session.getAttribute("editSkill");

  if (editSkill != null) {

      request.setAttribute("editSkill", editSkill);

      session.removeAttribute("editSkill");
  }

     // ==========================
     // Debug
     // ==========================

     System.out.println("========== DASHBOARD ==========");
     System.out.println("Projects   : " + projectList.size());
     System.out.println("Skills     : " + skillList.size());
     System.out.println("Education  : " + educationList.size());
     System.out.println("Experience : " + experienceList.size());

     // ==========================
     // Forward Dashboard
     // ==========================

     request.getRequestDispatcher("/admin/admin-dashboard.jsp")
            .forward(request, response);   }
}