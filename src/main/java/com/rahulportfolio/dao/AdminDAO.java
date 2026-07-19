package com.rahulportfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.rahulportfolio.model.Admin;
import com.rahulportfolio.utility.DBConnection;


public class AdminDAO {


    // ==========================
    // LOGIN CHECK
    // ==========================

    public Admin login(String username, String password) {


        Admin admin = null;


        try {


            Connection con = DBConnection.getConnection();


            PreparedStatement ps =
            con.prepareStatement(
            "SELECT * FROM admin WHERE username=? AND password=?"
            );


            ps.setString(1, username);
            ps.setString(2, password);



            ResultSet rs = ps.executeQuery();



            if(rs.next()) {


                admin = new Admin();


                admin.setId(
                rs.getInt("id")
                );


                admin.setUsername(
                rs.getString("username")
                );


                admin.setPassword(
                rs.getString("password")
                );


            }



        }catch(Exception e){

            e.printStackTrace();

        }


        return admin;

    }





    // ==========================
    // GET ADMIN
    // ==========================


    public Admin getAdmin(){


        Admin admin = null;


        try{


            Connection con =
            DBConnection.getConnection();



            PreparedStatement ps =
            con.prepareStatement(
            "SELECT * FROM admin LIMIT 1"
            );



            ResultSet rs =
            ps.executeQuery();



            if(rs.next()){


                admin = new Admin();


                admin.setId(
                rs.getInt("id")
                );


                admin.setUsername(
                rs.getString("username")
                );


                admin.setPassword(
                rs.getString("password")
                );


            }



        }catch(Exception e){

            e.printStackTrace();

        }


        return admin;


    }





    // ==========================
    // UPDATE ADMIN ACCOUNT
    // ==========================


    public boolean updateAdmin(
            String username,
            String password
    ){


        boolean status=false;


        try{


            Connection con =
            DBConnection.getConnection();



            PreparedStatement ps =
            con.prepareStatement(

            "UPDATE admin SET username=?, password=? WHERE id=1"

            );



            ps.setString(1, username);

            ps.setString(2, password);



            status =
            ps.executeUpdate()>0;



        }catch(Exception e){

            e.printStackTrace();

        }



        return status;


    }



}