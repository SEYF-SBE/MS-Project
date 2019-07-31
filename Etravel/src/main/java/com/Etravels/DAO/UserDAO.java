/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.DAO;

import com.Etravels.Model.User;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Utilisateur 1
 */
@Repository
public interface UserDAO {

    public void addUser(User user);

    public boolean userExistByEmail(String email);

    public boolean userExistUserName(String userName);

}
