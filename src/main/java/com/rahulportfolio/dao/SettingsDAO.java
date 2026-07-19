package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.rahulportfolio.model.Settings;
import com.rahulportfolio.utility.DBConnection;


public class SettingsDAO {


    // ==========================
    // GET SETTINGS
    // ==========================

    public Settings getSettings() {


        Settings settings = null;


        try {


            Connection con = DBConnection.getConnection();


            PreparedStatement ps =
                    con.prepareStatement(
                    "SELECT * FROM settings LIMIT 1"
                    );


            ResultSet rs = ps.executeQuery();



            if(rs.next()) {


                settings = new Settings();


                settings.setId(
                        rs.getInt("id")
                );


                settings.setFooterText(
                        rs.getString("footer_text")
                );


                settings.setLogoText(
                        rs.getString("logo_text")
                );



                // ======================
                // SEO
                // ======================

                settings.setMetaTitle(
                        rs.getString("meta_title")
                );


                settings.setMetaDescription(
                        rs.getString("meta_description")
                );


                settings.setMetaKeywords(
                        rs.getString("meta_keywords")
                );



                // ======================
                // Theme
                // ======================

                settings.setTheme(
                        rs.getString("theme")
                );



                // ======================
                // Visibility
                // ======================


                settings.setShowHero(
                        rs.getBoolean("show_hero")
                );


                settings.setShowSkills(
                        rs.getBoolean("show_skills")
                );


                settings.setShowProjects(
                        rs.getBoolean("show_projects")
                );


                settings.setShowExperience(
                        rs.getBoolean("show_experience")
                );


                settings.setShowEducation(
                        rs.getBoolean("show_education")
                );


                settings.setShowCertificates(
                        rs.getBoolean("show_certificates")
                );


                settings.setShowContact(
                        rs.getBoolean("show_contact")
                );



                // ======================
                // Maintenance
                // ======================

                settings.setMaintenanceMode(
                        rs.getBoolean("maintenance_mode")
                );



                // ======================
                // Admin Account
                // ======================

                settings.setAdminUsername(
                        rs.getString("admin_username")
                );


                settings.setAdminPassword(
                        rs.getString("admin_password")
                );


            }


        }
        catch(Exception e){

            e.printStackTrace();

        }


        return settings;

    }





    // ==========================
    // UPDATE SETTINGS
    // ==========================


    public boolean updateSettings(Settings settings) {


        boolean status = false;


        try {


            Connection con =
                    DBConnection.getConnection();



            PreparedStatement ps =
                    con.prepareStatement(


                    "UPDATE settings SET "

                    + "footer_text=?,"

                    + "logo_text=?,"

                    + "meta_title=?,"

                    + "meta_description=?,"

                    + "meta_keywords=?,"

                    + "theme=?,"

                    + "show_hero=?,"

                    + "show_skills=?,"

                    + "show_projects=?,"

                    + "show_experience=?,"

                    + "show_education=?,"

                    + "show_certificates=?,"

                    + "show_contact=?,"

                    + "maintenance_mode=?,"

                    + "admin_username=?,"

                    + "admin_password=? "

                    + "WHERE id=?"

                    );



            int i = 1;



            ps.setString(
                    i++,
                    settings.getFooterText()
            );


            ps.setString(
                    i++,
                    settings.getLogoText()
            );


            ps.setString(
                    i++,
                    settings.getMetaTitle()
            );


            ps.setString(
                    i++,
                    settings.getMetaDescription()
            );


            ps.setString(
                    i++,
                    settings.getMetaKeywords()
            );


            ps.setString(
                    i++,
                    settings.getTheme()
            );



            ps.setBoolean(
                    i++,
                    settings.isShowHero()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowSkills()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowProjects()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowExperience()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowEducation()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowCertificates()
            );


            ps.setBoolean(
                    i++,
                    settings.isShowContact()
            );



            ps.setBoolean(
                    i++,
                    settings.isMaintenanceMode()
            );



            // Admin username

            ps.setString(
                    i++,
                    settings.getAdminUsername()
            );



            // Admin password

            ps.setString(
                    i++,
                    settings.getAdminPassword()
            );



            ps.setInt(
                    i,
                    settings.getId()
            );



            status =
                    ps.executeUpdate() > 0;



        }
        catch(Exception e){

            e.printStackTrace();

        }



        return status;

    }


}