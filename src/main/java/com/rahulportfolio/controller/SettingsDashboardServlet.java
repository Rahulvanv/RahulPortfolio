package com.rahulportfolio.controller;

import java.io.IOException;

import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.model.Settings;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/settingsDashboard")
public class SettingsDashboardServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    SettingsDAO dao = new SettingsDAO();

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Settings settings = dao.getSettings();

        request.setAttribute("settings", settings);

        request.setAttribute("pageName", "settings");

        request.getRequestDispatcher("/admin/admin-dashboard.jsp")
               .forward(request, response);

    }

}