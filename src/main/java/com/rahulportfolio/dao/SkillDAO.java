package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Skill;
import com.rahulportfolio.utility.DBConnection;

public class SkillDAO {

    // CREATE
    public boolean addSkill(Skill skill) {

        boolean status = false;

        String sql = "INSERT INTO skills(skill_name, skill_level) VALUES(?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, skill.getSkillName());
            ps.setInt(2, skill.getSkillLevel());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // READ ALL
    public List<Skill> getAllSkills() {

        List<Skill> list = new ArrayList<>();

        String sql = "SELECT * FROM skills";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Skill skill = new Skill();

                skill.setId(rs.getInt("id"));
                skill.setSkillName(rs.getString("skill_name"));
                skill.setSkillLevel(rs.getInt("skill_level"));

                list.add(skill);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // READ BY ID
    public Skill getSkillById(int id) {

        Skill skill = null;

        String sql = "SELECT * FROM skills WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                skill = new Skill();

                skill.setId(rs.getInt("id"));
                skill.setSkillName(rs.getString("skill_name"));
                skill.setSkillLevel(rs.getInt("skill_level"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return skill;
    }

    // UPDATE
    public boolean updateSkill(Skill skill) {

        boolean status = false;

        String sql = "UPDATE skills SET skill_name=?, skill_level=? WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, skill.getSkillName());
            ps.setInt(2, skill.getSkillLevel());
            ps.setInt(3, skill.getId());

            int row = ps.executeUpdate();

            if (row > 0) {
                status = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // DELETE
    public boolean deleteSkill(int id) {

        boolean status = false;

        String sql = "DELETE FROM skills WHERE id=?";

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