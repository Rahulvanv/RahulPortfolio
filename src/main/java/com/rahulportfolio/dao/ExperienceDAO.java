package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Experience;
import com.rahulportfolio.utility.DBConnection;

public class ExperienceDAO {

    // ADD EXPERIENCE
    public boolean addExperience(Experience experience) {

        boolean status = false;

        String sql = "INSERT INTO experience(company_name, job_role, start_date, end_date, description) VALUES(?,?,?,?,?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, experience.getCompanyName());
            ps.setString(2, experience.getJobRole());
            ps.setString(3, experience.getStartDate());
            ps.setString(4, experience.getEndDate());
            ps.setString(5, experience.getDescription());

            int row = ps.executeUpdate();

            if(row > 0){
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // GET ALL EXPERIENCE
    public List<Experience> getAllExperience() {

        List<Experience> list = new ArrayList<>();

        String sql = "SELECT * FROM experience ORDER BY id DESC";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                Experience experience = new Experience();

                experience.setId(rs.getInt("id"));
                experience.setCompanyName(rs.getString("company_name"));
                experience.setJobRole(rs.getString("job_role"));
                experience.setStartDate(rs.getString("start_date"));
                experience.setEndDate(rs.getString("end_date"));
                experience.setDescription(rs.getString("description"));

                list.add(experience);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // GET EXPERIENCE BY ID
    public Experience getExperienceById(int id){

        Experience experience = null;

        String sql = "SELECT * FROM experience WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                experience = new Experience();

                experience.setId(rs.getInt("id"));
                experience.setCompanyName(rs.getString("company_name"));
                experience.setJobRole(rs.getString("job_role"));
                experience.setStartDate(rs.getString("start_date"));
                experience.setEndDate(rs.getString("end_date"));
                experience.setDescription(rs.getString("description"));

            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return experience;
    }

    // UPDATE EXPERIENCE
    public boolean updateExperience(Experience experience){

        boolean status = false;

        String sql = "UPDATE experience SET company_name=?, job_role=?, start_date=?, end_date=?, description=? WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, experience.getCompanyName());
            ps.setString(2, experience.getJobRole());
            ps.setString(3, experience.getStartDate());
            ps.setString(4, experience.getEndDate());
            ps.setString(5, experience.getDescription());
            ps.setInt(6, experience.getId());

            int row = ps.executeUpdate();

            if(row > 0){
                status = true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

    // DELETE EXPERIENCE
    public boolean deleteExperience(int id){

        boolean status = false;

        String sql = "DELETE FROM experience WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int row = ps.executeUpdate();

            if(row > 0){
                status = true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

}