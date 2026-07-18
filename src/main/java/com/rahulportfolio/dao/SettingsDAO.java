package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.rahulportfolio.model.Settings;
import com.rahulportfolio.utility.DBConnection;

public class SettingsDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // ===========================
    // GET SETTINGS
    // ===========================

    public Settings getSettings() {

        Settings settings = null;

        try {

            con = DBConnection.getConnection();

            ps = con.prepareStatement(
                    "SELECT * FROM settings LIMIT 1");

            rs = ps.executeQuery();

            if (rs.next()) {

                settings = new Settings();

                settings.setId(rs.getInt("id"));
                settings.setSiteTitle(rs.getString("site_title"));
                settings.setSiteDescription(rs.getString("site_description"));
                settings.setPrimaryEmail(rs.getString("primary_email"));
                settings.setPhone(rs.getString("phone"));
                settings.setLocation(rs.getString("location"));
                settings.setTheme(rs.getString("theme"));
                settings.setMaintenanceMode(
                        rs.getBoolean("maintenance_mode"));

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return settings;

    }

    // ===========================
    // UPDATE SETTINGS
    // ===========================

    public boolean updateSettings(Settings settings) {

        boolean status = false;

        try {

            con = DBConnection.getConnection();

            ps = con.prepareStatement(

                    "UPDATE settings SET "
                            + "site_title=?,"
                            + "site_description=?,"
                            + "primary_email=?,"
                            + "phone=?,"
                            + "location=?,"
                            + "theme=?,"
                            + "maintenance_mode=? "
                            + "WHERE id=?"

            );

            ps.setString(1, settings.getSiteTitle());
            ps.setString(2, settings.getSiteDescription());
            ps.setString(3, settings.getPrimaryEmail());
            ps.setString(4, settings.getPhone());
            ps.setString(5, settings.getLocation());
            ps.setString(6, settings.getTheme());
            ps.setBoolean(7, settings.isMaintenanceMode());
            ps.setInt(8, settings.getId());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}