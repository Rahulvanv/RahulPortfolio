package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.EducationDAO;
import com.rahulportfolio.model.Education;

@WebServlet("/updateEducation")
public class UpdateEducationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session == null || session.getAttribute("admin")==null){

            response.sendRedirect("admin/admin-login.jsp");
            return;

        }

        Education education = new Education();

        education.setId(Integer.parseInt(request.getParameter("id")));
        education.setDegree(request.getParameter("degree"));
        education.setInstitute(request.getParameter("institute"));
        education.setUniversity(request.getParameter("university"));
        education.setStartYear(request.getParameter("startYear"));
        education.setEndYear(request.getParameter("endYear"));
        education.setPercentage(request.getParameter("percentage"));

        EducationDAO dao = new EducationDAO();

        dao.updateEducation(education);

        response.sendRedirect("adminDashboard?page=education");

    }

}