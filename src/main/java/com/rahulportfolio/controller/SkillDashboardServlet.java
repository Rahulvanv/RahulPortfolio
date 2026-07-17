package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SkillDAO;
import com.rahulportfolio.model.Skill;

@WebServlet("/skillDashboard")
public class SkillDashboardServlet extends HttpServlet {

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

        SkillDAO dao = new SkillDAO();

        List<Skill> skillList = dao.getAllSkills();
        System.out.println("Total Skills = " + skillList.size());

        request.setAttribute("skillList", skillList);

        request.getRequestDispatcher("/admin/skills.jsp")
               .forward(request, response);
    }
}