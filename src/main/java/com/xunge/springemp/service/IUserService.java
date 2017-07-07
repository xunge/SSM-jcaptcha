package com.xunge.springemp.service;

/**
 * Created by xunge on 2017/6/27.
 */

public interface IUserService {
    public boolean login(String username, String password) throws Exception;

    public int checkEmailExist(String email) throws Exception;

    //public User findUserByEmail(String email);
}
