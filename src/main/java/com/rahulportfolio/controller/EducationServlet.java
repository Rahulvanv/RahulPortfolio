package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.EducationDAO;
import com.rahulportfolio.model.Education;

@WebServlet("/education")
public class EducationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        EducationDAO dao = new EducationDAO();

        List<Education> educationList = dao.getAllEducation();

        request.setAttribute("educationList", educationList);

        request.getRequestDispatcher("index.jsp")
               .forward(request, response);

    }

}