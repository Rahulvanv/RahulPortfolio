package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Project;
import com.rahulportfolio.utility.DBConnection;

public class ProjectDAO {

    // Fetch all projects from database
    public List<Project> getAllProjects() {

        List<Project> projectList = new ArrayList<>();

        String sql = "SELECT * FROM projects ORDER BY id DESC";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Project project = new Project();

                project.setId(rs.getInt("id"));
                project.setTitle(rs.getString("title"));
                project.setDescription(rs.getString("description"));
                project.setTechnologies(rs.getString("technologies"));
                project.setGithubLink(rs.getString("github_link"));
                project.setLiveDemoLink(rs.getString("live_demo_link"));
                project.setImagePath(rs.getString("image_path"));

                projectList.add(project);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return projectList;
    }

}