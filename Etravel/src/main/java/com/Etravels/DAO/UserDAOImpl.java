/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Etravels.DAO;

import com.Etravels.Model.User;
//import com.mysql.cj.xdevapi.SessionFactory;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Utilisateur 1
 */
@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

    @Autowired(required = true)
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addUser(User user) {
        Session session = getSession();
        session.save(user);

    }

    @Override
    public boolean userExistByEmail(String email) {
        Query query = (Query) sessionFactory.getCurrentSession().createQuery("from User where email = :email");
        query.setParameter("email", email);
        User user = (User) query.list().get(0);
        return null != user;
    }

}
