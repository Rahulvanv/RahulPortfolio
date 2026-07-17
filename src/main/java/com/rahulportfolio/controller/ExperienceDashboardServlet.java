package com.rahulportfolio.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.ExperienceDAO;
import com.rahulportfolio.model.Experience;


@WebServlet("/experienceDashboard")
public class ExperienceDashboardServlet extends HttpServlet {


@Override
protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {


HttpSession session=request.getSession(false);


if(session==null || session.getAttribute("admin")==null){

response.sendRedirect(
request.getContextPath()+"/admin/admin-login.jsp"
);

return;

}



ExperienceDAO dao=new ExperienceDAO();


List<Experience> experienceList =
dao.getAllExperience();



request.setAttribute(
"experienceList",
experienceList
);

request.setAttribute(
"editExperience",
null
);

request.getRequestDispatcher(
"/admin/admin-dashboard.jsp?pageName=experience"
)
.forward(request,response);


}

}