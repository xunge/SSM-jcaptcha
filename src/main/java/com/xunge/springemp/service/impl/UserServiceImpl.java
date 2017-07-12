package com.xunge.springemp.service.impl;

/**
 * Created by xunge on 2017/6/26.
 */


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xunge.springemp.dao.UserDAO;
import com.xunge.springemp.pojo.User;
import com.xunge.springemp.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{

    @Autowired
    private UserDAO userDAO;

    public boolean login(String username, String password) throws Exception {
        User user = userDAO.findByName(username);
        if(user == null) {
            return false;
        }
        if(password.equals(user.getPassword())){
            return true;
        }
        return false;
    }

    public int checkEmailExist(String email) throws Exception {
        int count = userDAO.findByEmail(email);
        if(count == 0) {
            return 0;
        } else {
            return 1;
        }
    }

    public int checkUserExist(String user) throws Exception {
        int count = userDAO.findByUser(user);
        if(count == 0) {
            return 0;
        } else {
            return 1;
        }
    }
}
