package com.rahulportfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.rahulportfolio.dao.SettingsDAO;
import com.rahulportfolio.model.Settings;

@WebServlet("/settingsDashboard")
public class SettingsDashboardServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("admin") == null) {

            response.sendRedirect("admin/admin-login.jsp");
            return;

        }

        SettingsDAO dao = new SettingsDAO();

        Settings settings = dao.getSettings();

        request.setAttribute("settings", settings);

        request.getRequestDispatcher(
                "/admin/admin-dashboard.jsp?pageName=settings")
                .forward(request, response);

    }

}