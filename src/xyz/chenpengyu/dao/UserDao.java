package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.User;

public interface UserDao {
    public int addUser(User user);
    public int findUser(User user);
}