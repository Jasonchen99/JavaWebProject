package xyz.chenpengyu.test;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.OrderDao;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.dao.UserDao;
import xyz.chenpengyu.dao.impl.OrderDaoImpl;
import xyz.chenpengyu.dao.impl.PhoneDaoImpl;
import xyz.chenpengyu.dao.impl.UserDaoImpl;
import xyz.chenpengyu.util.JDBCUtil;

import java.util.Date;
import java.util.List;

public class test {
    public static void main(String[] args) {
        OrderDao orderDao=new OrderDaoImpl();
        Order order=new Order();
        order.setOid(111);
        order.setBtime(new Date());
        order.setTotal(1000);
        order.setState(0);
        User user=new User();
        user.setUid(975);
        order.setUser(user);
        orderDao.saveOrder(order);
    }
}
