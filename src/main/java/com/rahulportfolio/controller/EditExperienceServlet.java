package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ExperienceDAO;
import com.rahulportfolio.model.Experience;


@WebServlet("/editExperience")
public class EditExperienceServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;

    private ExperienceDAO dao;


    @Override
    public void init() {

        dao = new ExperienceDAO();

    }



    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {


        int id = Integer.parseInt(request.getParameter("id"));


        Experience experience = dao.getExperienceById(id);



        if(experience == null){

            response.sendRedirect(
                request.getContextPath()+"/experienceDashboard"
            );

            return;
        }



        request.setAttribute(
        		"editExperience",
        		experience
        		);


        		request.setAttribute(
        		"experienceList",
        		dao.getAllExperience()
        		);


        		request.getRequestDispatcher(
        		"/admin/admin-dashboard.jsp?pageName=experience"
        		)
        		.forward(request,response);


    }






    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {



        Experience experience = new Experience();



        experience.setId(
            Integer.parseInt(request.getParameter("id"))
        );


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



        dao.updateExperience(experience);



        response.sendRedirect(
            request.getContextPath()+"/experienceDashboard"
        );


    }


}