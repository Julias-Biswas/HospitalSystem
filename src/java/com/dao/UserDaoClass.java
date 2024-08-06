/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author julia
 */
public class UserDaoClass implements UserDao {

    private final Connection con;

    public UserDaoClass(Connection con) {
        this.con = con;
    }

    /*  User Registation Method Start  */
    @Override
    public boolean userRegister(User user) {
        boolean status = false;

        try {
            String query = "INSERT INTO user(name,email,password,module) VALUES(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getModule());

            int rowCount = ps.executeUpdate();

            if (rowCount > 0) {
                status = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    /*  User Registation Method End  */

 /*  Get Perticular User Module Using User Email Id Method Start  */
    @Override
    public User getUserModule(String email) {
        User user = null;

        try {
            String query = "SELECT * FROM user WHERE email=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setModule(rs.getString("module"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
    /*  Get Perticular User Module Using User Email Id Method End  */

}
