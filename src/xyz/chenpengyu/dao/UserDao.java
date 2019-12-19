package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.User;

import java.util.List;

public interface UserDao {
    public int addUser(User user);
    public User findUser(User user);
    public List<User> display();
    public void deleteUser(int uid);
    public void modifyUser(User user);
}
