package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ExperienceDAO;
import com.rahulportfolio.model.Experience;



@WebServlet("/addExperience")
public class AddExperienceServlet extends HttpServlet {


private static final long serialVersionUID = 1L;

private ExperienceDAO dao;


public void init(){

    dao = new ExperienceDAO();

}



// OPEN PAGE





// SAVE DATA

protected void doPost(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {


    Experience experience = new Experience();


    experience.setCompanyName(
        request.getParameter("companyName")
    );


    experience.setJobRole(
        request.getParameter("jobRole")
    );


    experience.setStartDate(
        request.getParameter("startDate")
    );


    experience.setEndDate(
        request.getParameter("endDate")
    );


    experience.setDescription(
        request.getParameter("description")
    );



    dao.addExperience(experience);



    response.sendRedirect(
        request.getContextPath()+"/experienceDashboard"
    );

}

}