/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import com.Etravels.Service.UserService;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author Utilisateur 1
 */

@Controller
//@RequestMapping("/register")
public class HomeController {
   
    @Autowired
    /*@Resource
    @Qualifier("userService")*/
    private UserService userService;
    
    @ModelAttribute("user")
    public User construct(){
        return new User();
    }
    
    @RequestMapping(value="/")
    public String showIndex(){
        return "acceuil";
    }
    
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user){
        
        /*model.addAttribute("username", user.getUserName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("firstName", user.getId());
        model.addAttribute("lastName", user.getId());
        model.addAttribute("birthDate", user.getId());
        model.addAttribute("phoneNumber", user.getId());
        model.addAttribute("pwHash", user.getId());*/
        userService.addUser(user);
        
        return "acceuil";
    }
    /*
    @RequestMapping(value="/addUser", method = RequestMethod.POST)
    public ModelAndView addUser(@Valid @ModelAttribute("user") User user,
            BindingResult result, ModelMap model){
        
        if (result.hasErrors()) {
            return new ModelAndView("redirect:/test");
        }
        //ModelAndView model = new ModelAndView("user/form");
        //String firstName = firstName;
        //model.addAttribute("ID", user.getId());
        //User user = new User();
        //user.setUserName("adilook");
        userService.addUser(user);
        return new ModelAndView("redirect:/");
    }*/
}
