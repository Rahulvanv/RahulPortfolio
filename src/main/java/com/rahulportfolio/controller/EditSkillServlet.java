package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SkillDAO;
import com.rahulportfolio.model.Skill;

@WebServlet("/editSkill")
public class EditSkillServlet extends HttpServlet {

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
        

        int id = Integer.parseInt(request.getParameter("id"));

        SkillDAO dao = new SkillDAO();

        Skill skill = dao.getSkillById(id);

        session.setAttribute("editSkill", skill);

        response.sendRedirect(request.getContextPath()
                + "/adminDashboard?pageName=skill");
        
    }
}