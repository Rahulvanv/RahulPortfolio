package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.EducationDAO;
import com.rahulportfolio.model.Education;

@WebServlet("/editEducation")
public class EditEducationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session == null || session.getAttribute("admin")==null){

            response.sendRedirect("admin/admin-login.jsp");
            return;

        }

        int id = Integer.parseInt(request.getParameter("id"));

        EducationDAO dao = new EducationDAO();

        Education education = dao.getEducationById(id);

        session.setAttribute("editEducation", education);

        response.sendRedirect(request.getContextPath()
                + "/adminDashboard?pageName=education");
    }

}