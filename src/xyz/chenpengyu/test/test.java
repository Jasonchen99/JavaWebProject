package xyz.chenpengyu.test;

import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.UserDao;
import xyz.chenpengyu.dao.impl.UserDaoImpl;
import xyz.chenpengyu.util.JDBCUtil;

public class test {
    public static void main(String[] args) {
        UserDao userDao=new UserDaoImpl();
        User user=new User("jasonchen","123");
        int count=userDao.findUser(user);
        if (count==1){
            System.out.println("yes");
        }
    }
}
