/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Service;

import com.Etravels.Model.User;

/**
 *
 * @author Utilisateur 1
 */
public interface UserService {

    public void addUser(User user);

    public boolean userExistByEmail(String email);
    
    public boolean userExistUserName(String userName);

}
