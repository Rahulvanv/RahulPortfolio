package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.CertificateDAO;



@WebServlet("/deleteCertificate")
public class DeleteCertificateServlet extends HttpServlet {



private static final long serialVersionUID = 1L;



private CertificateDAO dao;



public void init(){

    dao = new CertificateDAO();

}




protected void doGet(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {



    int id =
    Integer.parseInt(
        request.getParameter("id")
    );



    dao.deleteCertificate(id);



    response.sendRedirect(
        request.getContextPath()
        +"/adminDashboard?pageName=certificate"
    );


}


}