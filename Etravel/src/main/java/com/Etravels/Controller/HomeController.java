/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import com.Etravels.Service.UserService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Utilisateur 1
 */
@Controller
//@RequestMapping("/register")
public class HomeController {

    @Autowired
    private UserService userService;

    @ModelAttribute("user")
    public User construct() {
        return new User();
    }

    @RequestMapping(value = "/")
    public String showIndex() {
        return "acceuil";
    }

    /*@RequestMapping(value = "/user", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        userService.addUser(user);
        return "acceuil";
    }*/
    @RequestMapping(value = "/addUserAjax", method = RequestMethod.POST)
    public @ResponseBody
    String addUserAjax(@RequestParam(required = true) String firstName,
            @RequestParam(required = true) String lastName,
            @RequestParam(required = true) String birthDate,
            @RequestParam(required = true) String phoneNumber,
            @RequestParam(required = true) String userName,
            @RequestParam(required = true) String email,
            @RequestParam(required = true) String password,
            @ModelAttribute("user") User user) {

        //il faut un test s'il exist le nouveau user dans la bd ou non userExistByEmail()
        if ((userService.userExistByEmail(email))) {
            return "failed";
        } else {
            try {
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setBirthDate(birthDate);
                user.setPhoneNumber(phoneNumber);
                user.setUserName(userName);
                user.setEmail(email);
                user.setPwHash(password);

                userService.addUser(user);
                return "success";

            } catch (Exception ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
                return "failed";
            }
        }

    }

    /* a function to find a user by his email */
    @RequestMapping(value = "/findUserByEmail", method = RequestMethod.POST)
    public @ResponseBody
    String userExistEmail(@RequestParam(required = true) String email) {
        if (userService.userExistByEmail(email)) {
            return "success";
        }
        return "failed";
    }

    /* a function to find a user by his email */
    @RequestMapping(value = "/findUserByUserName", method = RequestMethod.POST)
    public @ResponseBody
    String userExistUserName(@RequestParam(required = true) String userName) {
        if (userService.userExistUserName(userName)) {
            return "success";
        }
        return "failed";
    }

}
