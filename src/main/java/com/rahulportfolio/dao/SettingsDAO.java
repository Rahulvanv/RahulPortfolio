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

            ps = con.prepareStatement("SELECT * FROM settings LIMIT 1");

            rs = ps.executeQuery();

            if (rs.next()) {

                settings = new Settings();

                settings.setId(rs.getInt("id"));

                // Portfolio
                settings.setSiteTitle(rs.getString("site_title"));
                settings.setTagline(rs.getString("tagline"));
                settings.setSiteDescription(rs.getString("site_description"));
                settings.setFooterText(rs.getString("footer_text"));

                // Personal
                settings.setFullName(rs.getString("full_name"));
                settings.setProfession(rs.getString("profession"));
                settings.setPrimaryEmail(rs.getString("primary_email"));
                settings.setPhone(rs.getString("phone"));
                settings.setLocation(rs.getString("location"));
                settings.setResumeUrl(rs.getString("resume_url"));

                // SEO
                settings.setMetaTitle(rs.getString("meta_title"));
                settings.setMetaDescription(rs.getString("meta_description"));
                settings.setMetaKeywords(rs.getString("meta_keywords"));

                // Appearance
                settings.setTheme(rs.getString("theme"));

                // Visibility
                settings.setShowHero(rs.getBoolean("show_hero"));
                settings.setShowAbout(rs.getBoolean("show_about"));
                settings.setShowSkills(rs.getBoolean("show_skills"));
                settings.setShowProjects(rs.getBoolean("show_projects"));
                settings.setShowExperience(rs.getBoolean("show_experience"));
                settings.setShowEducation(rs.getBoolean("show_education"));
                settings.setShowCertificates(rs.getBoolean("show_certificates"));
                settings.setShowContact(rs.getBoolean("show_contact"));

                // Maintenance
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
                            + "tagline=?,"
                            + "site_description=?,"
                            + "footer_text=?,"

                            + "full_name=?,"
                            + "profession=?,"
                            + "primary_email=?,"
                            + "phone=?,"
                            + "location=?,"
                            + "resume_url=?,"

                            + "meta_title=?,"
                            + "meta_description=?,"
                            + "meta_keywords=?,"

                            + "theme=?,"

                            + "show_hero=?,"
                            + "show_about=?,"
                            + "show_skills=?,"
                            + "show_projects=?,"
                            + "show_experience=?,"
                            + "show_education=?,"
                            + "show_certificates=?,"
                            + "show_contact=?,"

                            + "maintenance_mode=?"

                            + " WHERE id=?"

            );

            int i = 1;

            // Portfolio
            ps.setString(i++, settings.getSiteTitle());
            ps.setString(i++, settings.getTagline());
            ps.setString(i++, settings.getSiteDescription());
            ps.setString(i++, settings.getFooterText());

            // Personal
            ps.setString(i++, settings.getFullName());
            ps.setString(i++, settings.getProfession());
            ps.setString(i++, settings.getPrimaryEmail());
            ps.setString(i++, settings.getPhone());
            ps.setString(i++, settings.getLocation());
            ps.setString(i++, settings.getResumeUrl());

            // SEO
            ps.setString(i++, settings.getMetaTitle());
            ps.setString(i++, settings.getMetaDescription());
            ps.setString(i++, settings.getMetaKeywords());

            // Appearance
            ps.setString(i++, settings.getTheme());

            // Visibility
            ps.setBoolean(i++, settings.isShowHero());
            ps.setBoolean(i++, settings.isShowAbout());
            ps.setBoolean(i++, settings.isShowSkills());
            ps.setBoolean(i++, settings.isShowProjects());
            ps.setBoolean(i++, settings.isShowExperience());
            ps.setBoolean(i++, settings.isShowEducation());
            ps.setBoolean(i++, settings.isShowCertificates());
            ps.setBoolean(i++, settings.isShowContact());

            // Maintenance
            ps.setBoolean(i++, settings.isMaintenanceMode());

            ps.setInt(i, settings.getId());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;
    }
}