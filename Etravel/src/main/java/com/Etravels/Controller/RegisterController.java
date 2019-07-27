/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import com.Etravels.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Utilisateur 1
 */

@Controller
@RequestMapping("/register")
public class RegisterController {
    
    
    @Autowired
    private UserService userService;
    
    @ModelAttribute("user")
    public User construct(){
        return new User();
    }
    
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user){
        
        System.out.println("its ok");
        /*model.addAttribute("username", user.getUserName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("firstName", user.getId());
        model.addAttribute("lastName", user.getId());
        model.addAttribute("birthDate", user.getId());
        model.addAttribute("phoneNumber", user.getId());
        model.addAttribute("pwHash", user.getId());*/
        //userService.addUser(user);
        
        return "test";
    }
}
