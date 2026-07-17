package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rahulportfolio.dao.SkillDAO;
import com.rahulportfolio.model.Skill;

@WebServlet("/addSkill")
public class AddSkillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect("admin/admin-login.jsp");
            return;
        }

        Skill skill = new Skill();

        skill.setSkillName(request.getParameter("skillName"));
        skill.setSkillLevel(Integer.parseInt(request.getParameter("skillLevel")));

        SkillDAO dao = new SkillDAO();

        boolean status = dao.addSkill(skill);

        if (status) {
        	response.sendRedirect("adminDashboard?page=skill");
        	} else {
        		response.sendRedirect("adminDashboard?page=skill");
        }
    }
}