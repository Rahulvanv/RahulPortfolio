package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Certificate;
import com.rahulportfolio.utility.DBConnection;

public class CertificateDAO {

    // ================= ADD =================

    public boolean addCertificate(Certificate certificate){

        boolean status = false;

        String sql = "INSERT INTO certificates(title,issuer,issue_date,certificate_file,description) VALUES(?,?,?,?,?)";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, certificate.getTitle());
            ps.setString(2, certificate.getIssuer());
            ps.setString(3, certificate.getIssueDate());
            ps.setString(4, certificate.getCertificateFile());
            ps.setString(5, certificate.getDescription());

            int row = ps.executeUpdate();

            if(row>0){
                status = true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

    // ================= GET ALL =================

    public List<Certificate> getAllCertificates(){

        List<Certificate> list = new ArrayList<>();

        String sql = "SELECT * FROM certificates ORDER BY id DESC";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                Certificate c = new Certificate();

                c.setId(rs.getInt("id"));
                c.setTitle(rs.getString("title"));
                c.setIssuer(rs.getString("issuer"));
                c.setIssueDate(rs.getString("issue_date"));
                c.setCertificateFile(rs.getString("certificate_file"));
                c.setDescription(rs.getString("description"));

                list.add(c);
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return list;
    }

    // ================= GET BY ID =================

    public Certificate getCertificateById(int id){

        Certificate c = null;

        String sql = "SELECT * FROM certificates WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                c = new Certificate();

                c.setId(rs.getInt("id"));
                c.setTitle(rs.getString("title"));
                c.setIssuer(rs.getString("issuer"));
                c.setIssueDate(rs.getString("issue_date"));
                c.setCertificateFile(rs.getString("certificate_file"));
                c.setDescription(rs.getString("description"));

            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return c;
    }

    // ================= UPDATE =================

    public boolean updateCertificate(Certificate certificate){

        boolean status = false;

        String sql = "UPDATE certificates SET title=?,issuer=?,issue_date=?,certificate_file=?,description=? WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, certificate.getTitle());
            ps.setString(2, certificate.getIssuer());
            ps.setString(3, certificate.getIssueDate());
            ps.setString(4, certificate.getCertificateFile());
            ps.setString(5, certificate.getDescription());
            ps.setInt(6, certificate.getId());

            int row = ps.executeUpdate();

            if(row>0){
                status = true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

    // ================= DELETE =================

    public boolean deleteCertificate(int id){

        boolean status = false;

        String sql = "DELETE FROM certificates WHERE id=?";

        try{

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1,id);

            int row = ps.executeUpdate();

            if(row>0){
                status = true;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return status;
    }

}