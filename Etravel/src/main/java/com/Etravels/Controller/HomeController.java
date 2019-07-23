/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Utilisateur 1
 */

@Controller
public class HomeController {
   
    @RequestMapping(value="/")
    public String showIndex(){
        return "acceuil";
    }
    
    @RequestMapping(value="/add")
    public String addUser(){
        
        User user = new User();
        user.setUserName("adilook");
        return "acceuil";
    }
}
