package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;

import java.util.List;

public interface OrderDao {
    public void saveOrder(Order order);
    public void saveOrderItems(OrderItem oi);
    public void checkOut(Order order);
    public List<Order> findMyOrder(int uid);
    public List<OrderItem> findMyOrderItem(int oid);
    public void changeOrderState(int oid,int state);
    public List<Order> displayOrder();
}
