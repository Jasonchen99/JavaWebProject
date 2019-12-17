package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;

public interface OrderDao {
    public void saveOrder(Order order);
    public void saveOrderItems(OrderItem oi);
}
