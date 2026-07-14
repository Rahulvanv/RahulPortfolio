package com.rahulportfolio.controller;

import java.io.IOException;

import com.rahulportfolio.dao.ContactDAO;
import com.rahulportfolio.model.Contact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        Contact contact = new Contact();

        contact.setFullName(fullName);
        contact.setEmail(email);
        contact.setSubject(subject);
        contact.setMessage(message);

        ContactDAO contactDAO = new ContactDAO();

        boolean status = contactDAO.saveContact(contact);

        if (status) {
            response.sendRedirect("index.jsp?success=true");
        } else {
            response.sendRedirect("index.jsp?success=false");
        }
    }
}