package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.rahulportfolio.model.Profile;
import com.rahulportfolio.utility.DBConnection;

public class ProfileDAO {

    // =========================
    // Get Profile
    // =========================

    public Profile getProfile() {

        Profile profile = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM profile LIMIT 1";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                profile = new Profile();

                profile.setId(rs.getInt("id"));

                profile.setFullName(rs.getString("full_name"));
                profile.setProfession(rs.getString("profession"));
                profile.setTagline(rs.getString("tagline"));

                profile.setAbout1(rs.getString("about1"));
                profile.setAbout2(rs.getString("about2"));

                profile.setEmail(rs.getString("email"));
                profile.setPhone(rs.getString("phone"));

                profile.setCity(rs.getString("city"));
                profile.setState(rs.getString("state"));
                profile.setCountry(rs.getString("country"));

                profile.setExperience(rs.getString("experience"));

                profile.setGithub(rs.getString("github"));
                profile.setLinkedin(rs.getString("linkedin"));
                profile.setLeetcode(rs.getString("leetcode"));
                profile.setHackerrank(rs.getString("hackerrank"));
                profile.setCodechef(rs.getString("codechef"));
                profile.setCodeforces(rs.getString("codeforces"));
                profile.setGfg(rs.getString("gfg"));

                profile.setPhoto(rs.getString("photo"));
                profile.setResume(rs.getString("resume"));

            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return profile;

    }

    // =========================
    // Update Profile
    // =========================

    public boolean updateProfile(Profile profile) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql =
                    "UPDATE profile SET " +
                    "full_name=?, " +
                    "profession=?, " +
                    "tagline=?, " +
                    "about1=?, " +
                    "about2=?, " +
                    "email=?, " +
                    "phone=?, " +
                    "city=?, " +
                    "state=?, " +
                    "country=?, " +
                    "experience=?, " +
                    "github=?, " +
                    "linkedin=?, " +
                    "leetcode=?, " +
                    "hackerrank=?, " +
                    "codechef=?, " +
                    "codeforces=?, " +
                    "gfg=?, " +
                    "photo=?, " +
                    "resume=? " +
                    "WHERE id=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, profile.getFullName());
            ps.setString(2, profile.getProfession());
            ps.setString(3, profile.getTagline());

            ps.setString(4, profile.getAbout1());
            ps.setString(5, profile.getAbout2());

            ps.setString(6, profile.getEmail());
            ps.setString(7, profile.getPhone());

            ps.setString(8, profile.getCity());
            ps.setString(9, profile.getState());
            ps.setString(10, profile.getCountry());

            ps.setString(11, profile.getExperience());

            ps.setString(12, profile.getGithub());
            ps.setString(13, profile.getLinkedin());
            ps.setString(14, profile.getLeetcode());
            ps.setString(15, profile.getHackerrank());
            ps.setString(16, profile.getCodechef());
            ps.setString(17, profile.getCodeforces());
            ps.setString(18, profile.getGfg());

            ps.setString(19, profile.getPhoto());
            ps.setString(20, profile.getResume());

            ps.setInt(21, profile.getId());

            status = ps.executeUpdate() > 0;

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return status;

    }

}