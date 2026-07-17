package com.rahulportfolio.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.CertificateDAO;
import com.rahulportfolio.model.Certificate;

@WebServlet("/addCertificate")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize = 1024 * 1024 * 20,
    maxRequestSize = 1024 * 1024 * 25
)
public class AddCertificateServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private CertificateDAO dao;

    public void init() {
        dao = new CertificateDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Certificate certificate = new Certificate();

        certificate.setTitle(request.getParameter("title"));
        certificate.setIssuer(request.getParameter("issuer"));
        certificate.setIssueDate(request.getParameter("issueDate"));
        certificate.setDescription(request.getParameter("description"));

        // ================= Upload Certificate =================

        Part part = request.getPart("certificateFile");

        String fileName = "";

        if (part != null && part.getSize() > 0) {

            fileName = System.currentTimeMillis() + "_"
                    + Paths.get(part.getSubmittedFileName())
                           .getFileName()
                           .toString();

            String uploadPath =
                    getServletContext().getRealPath("")
                    + File.separator
                    + "uploads"
                    + File.separator
                    + "certificates";

            File folder = new File(uploadPath);

            if (!folder.exists()) {
                folder.mkdirs();
            }

            part.write(uploadPath + File.separator + fileName);
        }

        certificate.setCertificateFile(fileName);

        dao.addCertificate(certificate);

        response.sendRedirect(
                request.getContextPath()
                        + "/adminDashboard?pageName=certificate");

    }

}