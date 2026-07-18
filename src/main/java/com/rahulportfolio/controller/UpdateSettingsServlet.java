package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.model.Settings;

@WebServlet("/updateSettings")
public class UpdateSettingsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {

            response.sendRedirect("admin/admin-login.jsp");
            return;

        }

        Settings settings = new Settings();

        settings.setId(
                Integer.parseInt(request.getParameter("id")));

        settings.setSiteTitle(
                request.getParameter("siteTitle"));

        settings.setSiteDescription(
                request.getParameter("siteDescription"));

        settings.setPrimaryEmail(
                request.getParameter("primaryEmail"));

        settings.setPhone(
                request.getParameter("phone"));

        settings.setLocation(
                request.getParameter("location"));

        settings.setTheme(
                request.getParameter("theme"));

        settings.setMaintenanceMode(
                request.getParameter("maintenanceMode") != null);

        SettingsDAO dao = new SettingsDAO();

        dao.updateSettings(settings);

        response.sendRedirect(
                request.getContextPath()
                + "/settingsDashboard");

    }

}