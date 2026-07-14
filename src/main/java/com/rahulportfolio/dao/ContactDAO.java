package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.rahulportfolio.model.Contact;
import com.rahulportfolio.utility.DBConnection;

public class ContactDAO {

    public boolean saveContact(Contact contact) {

        boolean status = false;

        String sql = "INSERT INTO contacts(full_name, email, subject, message) VALUES(?, ?, ?, ?)";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, contact.getFullName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getSubject());
            ps.setString(4, contact.getMessage());

            int rows = ps.executeUpdate();

            if (rows > 0) {
                status = true;
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}