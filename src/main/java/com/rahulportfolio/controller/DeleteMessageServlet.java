package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.ContactDAO;



@WebServlet("/deleteMessage")
public class DeleteMessageServlet extends HttpServlet {


protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {



int id =
Integer.parseInt(request.getParameter("id"));



ContactDAO dao=new ContactDAO();


dao.deleteContact(id);



response.sendRedirect(
request.getContextPath()+"/messageDashboard");


}


}