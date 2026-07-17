package com.rahulportfolio.controller;


import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.rahulportfolio.dao.CertificateDAO;
import com.rahulportfolio.model.Certificate;



@WebServlet("/certificateDashboard")
public class CertificateDashboardServlet extends HttpServlet {



@Override
protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {



HttpSession session =
request.getSession(false);



if(session==null ||
session.getAttribute("admin")==null){


response.sendRedirect(
request.getContextPath()
+"/admin/admin-login.jsp"
);


return;

}




CertificateDAO dao =
new CertificateDAO();



List<Certificate> certificateList =
dao.getAllCertificates();



request.setAttribute(
"certificateList",
certificateList
);



request.getRequestDispatcher(
"/admin/admin-dashboard.jsp?pageName=certificate"
)
.forward(request,response);



}



}