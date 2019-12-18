package xyz.chenpengyu.test;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;
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
        List<Order> orderList=orderDao.findMyOrder(934);
        for (Order order:orderList){
            System.out.println(order.getOid());

            System.out.println("---------------");
        }
        /*List<OrderItem> orderItemList=orderDao.findMyOrderItem(382639076);
        for (OrderItem orderItem:orderItemList){
            System.out.println(orderItem.getNum());
            System.out.println("---------------");
        }*/
    }
}
