package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Education;
import com.rahulportfolio.utility.DBConnection;

public class EducationDAO {

    // ===========================
    // ADD EDUCATION
    // ===========================
    public boolean addEducation(Education education) {

        boolean status = false;

        String sql = "INSERT INTO education(degree,institute,university,start_year,end_year,percentage) VALUES(?,?,?,?,?,?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, education.getDegree());
            ps.setString(2, education.getInstitute());
            ps.setString(3, education.getUniversity());
            ps.setString(4, education.getStartYear());
            ps.setString(5, education.getEndYear());
            ps.setString(6, education.getPercentage());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // ===========================
    // GET ALL EDUCATION
    // ===========================
    public List<Education> getAllEducation() {

        List<Education> list = new ArrayList<>();

        String sql = "SELECT * FROM education ORDER BY id DESC";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Education education = new Education();

                education.setId(rs.getInt("id"));
                education.setDegree(rs.getString("degree"));
                education.setInstitute(rs.getString("institute"));
                education.setUniversity(rs.getString("university"));
                education.setStartYear(rs.getString("start_year"));
                education.setEndYear(rs.getString("end_year"));
                education.setPercentage(rs.getString("percentage"));

                list.add(education);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ===========================
    // GET EDUCATION BY ID
    // ===========================
    public Education getEducationById(int id) {

        Education education = null;

        String sql = "SELECT * FROM education WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                education = new Education();

                education.setId(rs.getInt("id"));
                education.setDegree(rs.getString("degree"));
                education.setInstitute(rs.getString("institute"));
                education.setUniversity(rs.getString("university"));
                education.setStartYear(rs.getString("start_year"));
                education.setEndYear(rs.getString("end_year"));
                education.setPercentage(rs.getString("percentage"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return education;
    }

    // ===========================
    // UPDATE EDUCATION
    // ===========================
    public boolean updateEducation(Education education) {

        boolean status = false;

        String sql = "UPDATE education SET degree=?, institute=?, university=?, start_year=?, end_year=?, percentage=? WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, education.getDegree());
            ps.setString(2, education.getInstitute());
            ps.setString(3, education.getUniversity());
            ps.setString(4, education.getStartYear());
            ps.setString(5, education.getEndYear());
            ps.setString(6, education.getPercentage());
            ps.setInt(7, education.getId());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // ===========================
    // DELETE EDUCATION
    // ===========================
    public boolean deleteEducation(int id) {

        boolean status = false;

        String sql = "DELETE FROM education WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

}