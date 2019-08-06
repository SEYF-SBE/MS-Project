/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.Controller;

import com.Etravels.Model.User;
import com.Etravels.Service.UserService;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Utilisateur 1
 */
@Controller
//@RequestMapping("/register")
public class HomeController {

    static String emailToRecipient, emailSubject, emailMessage;
    static final String emailFromRecipient = "adilooq1@hotmail.fr";

    static ModelAndView modelViewObj;

    //@Autowired
    private JavaMailSender mailSenderObj;

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

                modelViewObj = new ModelAndView("emailForm");

                // This Method Is Used To Prepare The Email Message And Send It To The Client
                /*@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
                public ModelAndView sendEmailToClient
                (HttpServletRequest request,
                
                    ) final @RequestParam*/
                //CommonsMultipartFile attachFileObj = null;
{

        // Reading Email Form Input Parameters      
        emailSubject = "subject";
                    emailMessage = "message";
                    emailToRecipient = "seyf.bencheikh@gmail.com";

                    // Logging The Email Form Parameters For Debugging Purpose
                    System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

                    mailSenderObj.send(new MimeMessagePreparator() {
                        public void prepare(MimeMessage mimeMessage) throws Exception {

                            MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
                            mimeMsgHelperObj.setTo(emailToRecipient);
                            mimeMsgHelperObj.setFrom(emailFromRecipient);
                            mimeMsgHelperObj.setText(emailMessage);
                            mimeMsgHelperObj.setSubject(emailSubject);

                            // Determine If There Is An File Upload. If Yes, Attach It To The Client Email              
                            /*if ((attachFileObj != null) && (attachFileObj.getSize() > 0) && (!attachFileObj.equals(""))) {
                                System.out.println("\nAttachment Name?= " + attachFileObj.getOriginalFilename() + "\n");
                                mimeMsgHelperObj.addAttachment(attachFileObj.getOriginalFilename(), new InputStreamSource() {
                                    public InputStream getInputStream() throws IOException {
                                        return attachFileObj.getInputStream();
                                    }
                                });
                            } else {
                                System.out.println("\nNo Attachment Is Selected By The User. Sending Text Email!\n");
                            }*/
                        }
                    });
                    System.out.println("\nMessage Send Successfully.... Hurrey!\n");

                    modelViewObj = new ModelAndView("success", "messageObj", "Thank You! Your Email Has Been Sent!");
                }

                return "success";

            } catch (Exception ex) {
                Logger.getLogger(HomeController.class
                        .getName()).log(Level.SEVERE, null, ex);
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
