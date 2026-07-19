package com.rahulportfolio.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.dao.AdminDAO;
import com.rahulportfolio.model.Settings;
import com.rahulportfolio.model.Admin;



@WebServlet("/updateSettings")
public class UpdateSettingsServlet extends HttpServlet {


    private static final long serialVersionUID = 1L;



    SettingsDAO settingsDAO = new SettingsDAO();

    AdminDAO adminDAO = new AdminDAO();




    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    )
    throws ServletException, IOException {



        // ==========================
        // SETTINGS UPDATE
        // ==========================


        Settings settings = new Settings();



        settings.setId(
            Integer.parseInt(
            request.getParameter("id"))
        );



        settings.setFooterText(
            request.getParameter("footerText")
        );


        settings.setLogoText(
            request.getParameter("logoText")
        );



        settings.setMetaTitle(
            request.getParameter("metaTitle")
        );


        settings.setMetaDescription(
            request.getParameter("metaDescription")
        );


        settings.setMetaKeywords(
            request.getParameter("metaKeywords")
        );



        settings.setTheme(
            request.getParameter("theme")
        );




        settings.setShowHero(
            request.getParameter("showHero") != null
        );


        settings.setShowSkills(
            request.getParameter("showSkills") != null
        );


        settings.setShowProjects(
            request.getParameter("showProjects") != null
        );


        settings.setShowExperience(
            request.getParameter("showExperience") != null
        );


        settings.setShowEducation(
            request.getParameter("showEducation") != null
        );


        settings.setShowCertificates(
            request.getParameter("showCertificates") != null
        );


        settings.setShowContact(
            request.getParameter("showContact") != null
        );


        settings.setMaintenanceMode(
            request.getParameter("maintenanceMode") != null
        );



        settingsDAO.updateSettings(settings);





        // ==========================
        // ADMIN UPDATE
        // ==========================


        String username =
        request.getParameter("adminUsername");



        String password =
        request.getParameter("adminPassword");



        Admin currentAdmin =
        adminDAO.getAdmin();




        if(username != null 
        && !username.trim().isEmpty()){



            if(password == null 
            || password.trim().isEmpty()){


                password =
                currentAdmin.getPassword();

            }



            adminDAO.updateAdmin(
                    username,
                    password
            );


        }





        response.sendRedirect(
            request.getContextPath()
            + "/adminDashboard?pageName=settings"
        );



    }



}