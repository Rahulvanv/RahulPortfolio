package com.rahulportfolio.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.ContactDAO;
import com.rahulportfolio.model.Contact;



@WebServlet("/messageDashboard")
public class MessageDashboardServlet extends HttpServlet {


@Override
protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {
	
	System.out.println("MESSAGE SERVLET RUNNING");


HttpSession session=request.getSession(false);


if(session==null ||
session.getAttribute("admin")==null){


response.sendRedirect(
request.getContextPath()+"/admin/admin-login.jsp");

return;

}



ContactDAO dao=new ContactDAO();



List<Contact> contactList =
dao.getAllContacts();



request.setAttribute(
"contactList",
contactList);



request.getRequestDispatcher(
"/admin/admin-dashboard.jsp?pageName=message")
.forward(request,response);



}


}