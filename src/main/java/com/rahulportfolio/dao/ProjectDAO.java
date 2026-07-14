package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Project;
import com.rahulportfolio.utility.DBConnection;

public class ProjectDAO {

    // CREATE
    public boolean addProject(Project project) {

        boolean status = false;

        String sql = "INSERT INTO projects(title, description, technologies, github_link, live_demo_link, image_path) VALUES(?,?,?,?,?,?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, project.getTitle());
            ps.setString(2, project.getDescription());
            ps.setString(3, project.getTechnologies());
            ps.setString(4, project.getGithubLink());
            ps.setString(5, project.getLiveDemoLink());
            ps.setString(6, project.getImagePath());

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
    public List<Project> getAllProjects() {

        List<Project> list = new ArrayList<>();

        String sql = "SELECT * FROM projects";

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

                list.add(project);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // READ BY ID
    public Project getProjectById(int id) {

        Project project = null;

        String sql = "SELECT * FROM projects WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                project = new Project();

                project.setId(rs.getInt("id"));
                project.setTitle(rs.getString("title"));
                project.setDescription(rs.getString("description"));
                project.setTechnologies(rs.getString("technologies"));
                project.setGithubLink(rs.getString("github_link"));
                project.setLiveDemoLink(rs.getString("live_demo_link"));
                project.setImagePath(rs.getString("image_path"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return project;
    }

    // UPDATE
    public boolean updateProject(Project project) {

        boolean status = false;

        String sql = "UPDATE projects SET title=?, description=?, technologies=?, github_link=?, live_demo_link=?, image_path=? WHERE id=?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, project.getTitle());
            ps.setString(2, project.getDescription());
            ps.setString(3, project.getTechnologies());
            ps.setString(4, project.getGithubLink());
            ps.setString(5, project.getLiveDemoLink());
            ps.setString(6, project.getImagePath());
            ps.setInt(7, project.getId());

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
    public boolean deleteProject(int id) {

        boolean status = false;

        String sql = "DELETE FROM projects WHERE id=?";

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