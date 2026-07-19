package com.rahulportfolio.controller;

import java.io.IOException;

import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.model.Settings;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateSettings")
public class UpdateSettingsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    SettingsDAO dao = new SettingsDAO();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Settings settings = new Settings();

        settings.setId(Integer.parseInt(request.getParameter("id")));

        // Portfolio
        settings.setSiteTitle(request.getParameter("siteTitle"));
        settings.setTagline(request.getParameter("tagline"));
        settings.setSiteDescription(request.getParameter("siteDescription"));
        settings.setFooterText(request.getParameter("footerText"));

        // Personal
        settings.setFullName(request.getParameter("fullName"));
        settings.setProfession(request.getParameter("profession"));
        settings.setPrimaryEmail(request.getParameter("primaryEmail"));
        settings.setPhone(request.getParameter("phone"));
        settings.setLocation(request.getParameter("location"));
        settings.setResumeUrl(request.getParameter("resumeUrl"));

        // SEO
        settings.setMetaTitle(request.getParameter("metaTitle"));
        settings.setMetaDescription(request.getParameter("metaDescription"));
        settings.setMetaKeywords(request.getParameter("metaKeywords"));

        // Appearance
        settings.setTheme(request.getParameter("theme"));

        // Visibility
        settings.setShowHero(request.getParameter("showHero") != null);
        settings.setShowAbout(request.getParameter("showAbout") != null);
        settings.setShowSkills(request.getParameter("showSkills") != null);
        settings.setShowProjects(request.getParameter("showProjects") != null);
        settings.setShowExperience(request.getParameter("showExperience") != null);
        settings.setShowEducation(request.getParameter("showEducation") != null);
        settings.setShowCertificates(request.getParameter("showCertificates") != null);
        settings.setShowContact(request.getParameter("showContact") != null);

        // Maintenance
        settings.setMaintenanceMode(request.getParameter("maintenanceMode") != null);

        boolean status = dao.updateSettings(settings);

        if (status) {
            response.sendRedirect(request.getContextPath() + "/settingsDashboard");
        } else {
            response.sendRedirect(request.getContextPath() + "/settingsDashboard");
        }
    }
}