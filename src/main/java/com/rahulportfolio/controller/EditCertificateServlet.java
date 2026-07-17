package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.CertificateDAO;
import com.rahulportfolio.model.Certificate;



@WebServlet("/editCertificate")
public class EditCertificateServlet extends HttpServlet {


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



        Certificate certificate =
        dao.getCertificateById(id);



        request.setAttribute(
            "editCertificate",
            certificate
        );



        request.getRequestDispatcher(
            "/admin/admin-dashboard.jsp?pageName=certificate"
        )
        .forward(request,response);



    }






}