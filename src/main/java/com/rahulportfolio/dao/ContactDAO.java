package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rahulportfolio.model.Contact;
import com.rahulportfolio.utility.DBConnection;


public class ContactDAO {


    // SAVE MESSAGE

    public boolean saveContact(Contact contact) {

        boolean status = false;

        String sql =
        "INSERT INTO contacts(full_name,email,subject,message) VALUES(?,?,?,?)";


        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
            con.prepareStatement(sql);


            ps.setString(1, contact.getFullName());
            ps.setString(2, contact.getEmail());
            ps.setString(3, contact.getSubject());
            ps.setString(4, contact.getMessage());


            int row = ps.executeUpdate();


            if(row > 0){
                status = true;
            }


            ps.close();
            con.close();


        } catch(Exception e){

            e.printStackTrace();

        }


        return status;

    }





    // GET ALL MESSAGES

    public List<Contact> getAllContacts(){


        List<Contact> list = new ArrayList<>();


        String sql =
        "SELECT * FROM contacts ORDER BY id DESC";


        try {


            Connection con =
            DBConnection.getConnection();


            PreparedStatement ps =
            con.prepareStatement(sql);


            ResultSet rs =
            ps.executeQuery();



            while(rs.next()){


                Contact c = new Contact();


                c.setId(
                    rs.getInt("id")
                );


                c.setFullName(
                    rs.getString("full_name")
                );


                c.setEmail(
                    rs.getString("email")
                );


                c.setSubject(
                    rs.getString("subject")
                );


                c.setMessage(
                    rs.getString("message")
                );


                c.setCreatedAt(
                    rs.getString("created_at")
                );


                list.add(c);

            }
            
        }catch(Exception e){

            e.printStackTrace();

        }



        return list;


    }





    // DELETE MESSAGE


    public boolean deleteContact(int id){


        boolean status=false;


        String sql =
        "DELETE FROM contacts WHERE id=?";



        try{


            Connection con =
            DBConnection.getConnection();


            PreparedStatement ps =
            con.prepareStatement(sql);



            ps.setInt(1,id);



            int row =
            ps.executeUpdate();



            if(row>0){
                status=true;
            }



        }catch(Exception e){

            e.printStackTrace();

        }


        return status;

    }
    
 // GET MESSAGE COUNT

    public int getContactCount(){

        int count = 0;

        String sql = "SELECT COUNT(*) FROM contacts";


        try{

            Connection con =
            DBConnection.getConnection();


            PreparedStatement ps =
            con.prepareStatement(sql);


            ResultSet rs =
            ps.executeQuery();


            if(rs.next()){

                count = rs.getInt(1);

            }


            rs.close();
            ps.close();
            con.close();


        }catch(Exception e){

            e.printStackTrace();

        }


        return count;

    }


}