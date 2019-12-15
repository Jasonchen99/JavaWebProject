package xyz.chenpengyu.test;

import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.dao.UserDao;
import xyz.chenpengyu.dao.impl.PhoneDaoImpl;
import xyz.chenpengyu.dao.impl.UserDaoImpl;
import xyz.chenpengyu.util.JDBCUtil;

import java.util.List;

public class test {
    public static void main(String[] args) {
        PhoneDao phoneDao=new PhoneDaoImpl();
        List<Phone> list=phoneDao.displayPhone();
        for(Phone p : list){
            System.out.println(p.getModel());
        }
    }
}
