/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Service;

import com.Etravals.DAO.UserDAO;
import com.Etravels.Model.User;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Utilisateur 1
 */

@Service
@Transactional
public class UserServiceImpl implements UserService{
    
    
    @Autowired
    private UserDAO userdao;
    
    @Override
    public int addUser(User user) {
        
        return userdao.addUser(user); 
    }
    
    
}