package com.rahulportfolio.controller;


import java.io.IOException;

import com.rahulportfolio.dao.ExperienceDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteExperience")
public class DeleteExperienceServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;


    private ExperienceDAO experienceDAO;



    public void init(){

        experienceDAO = new ExperienceDAO();

    }




    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        int id = Integer.parseInt(request.getParameter("id"));



        experienceDAO.deleteExperience(id);



        response.sendRedirect(
        	    request.getContextPath()+"/experienceDashboard"
        	);


    }


}