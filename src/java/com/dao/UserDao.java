/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.entity.User;

/**
 *
 * @author julia
 */
public interface UserDao 
{
    /*  User Registation Method Start  */
    public boolean userRegister(User user);
    /*  User Registation Method End  */
    
    
    /*  Get Perticular User Module Using User Email Id Method Start  */
    public User getUserModule(String email);
    /*  Get Perticular User Module Using User Email Id Method End  */
    
}
