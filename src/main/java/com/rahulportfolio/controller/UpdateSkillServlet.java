package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SkillDAO;
import com.rahulportfolio.model.Skill;

@WebServlet("/updateSkill")
public class UpdateSkillServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session=request.getSession(false);

        if(session==null || session.getAttribute("admin")==null){

            response.sendRedirect("admin/admin-login.jsp");
            return;

        }

        Skill skill=new Skill();

        
        skill.setId(Integer.parseInt(request.getParameter("id")));
        skill.setSkillName(request.getParameter("skillName"));
        skill.setSkillLevel(Integer.parseInt(request.getParameter("skillLevel")));

        SkillDAO dao=new SkillDAO();

        dao.updateSkill(skill);

        response.sendRedirect(request.getContextPath() + "/adminDashboard?pageName=skill");

    }

}