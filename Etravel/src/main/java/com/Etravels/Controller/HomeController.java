/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import com.Etravels.Service.UserService;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author Utilisateur 1
 */

@Controller
public class HomeController {
   
    //@Autowired
    @Resource
    @Qualifier("userService")
    private UserService userService;
    
    @RequestMapping(value="/")
    public String showIndex(){
        return "acceuil";
    }
    
    @RequestMapping(value="/addUser", method = RequestMethod.POST)
    public ModelAndView addUser(@ModelAttribute("userFormSignUp") User user){
        
        //ModelAndView model = new ModelAndView("user/form");
        //String firstName = firstName;
        //model.addAttribute("ID", user.getId());
        //User user = new User();
        //user.setUserName("adilook");
        userService.addUser(user);
        return new ModelAndView("redirect:/");
    }
}
