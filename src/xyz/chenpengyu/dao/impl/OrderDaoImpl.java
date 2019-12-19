package xyz.chenpengyu.dao.impl;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.OrderDao;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.util.JDBCUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Jason Chen
 */
public class OrderDaoImpl implements OrderDao {
    Connection connection = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    @Override
    public void saveOrder(Order order) {
        String sql = "insert into `order` values (?,?,?,?,?,?,?,?,?,?)";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, order.getOid());
            pstmt.setInt(2, order.getUser().getUid());
            pstmt.setInt(3, order.getTotal());
            pstmt.setDate(4, new java.sql.Date(order.getBtime().getTime()));
            pstmt.setDate(5, null);
            pstmt.setDate(6, null);
            pstmt.setInt(7, order.getState());
            pstmt.setString(8, order.getAddress());
            pstmt.setString(9, order.getName());
            pstmt.setString(10, order.getPnum());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }

        for (OrderItem oi : order.getItems()) {
            saveOrderItems(oi);
        }

        PhoneDao phoneDao = new PhoneDaoImpl();
        phoneDao.decreasePhone(order);
    }

    @Override
    public void saveOrderItems(OrderItem oi) {
        String sql = "insert into orderitem values (?,?,?,?,?)";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, oi.getOiid());
            pstmt.setInt(2, oi.getOrder().getOid());
            pstmt.setInt(3, oi.getPhone().getPid());
            pstmt.setInt(4, oi.getNum());
            pstmt.setInt(5, oi.getSubtotal());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
    }

    @Override
    public void checkOut(Order order) {
        String sql = "update `order` set state=?,address=?,name=?,pnum=? where oid=?";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, order.getState());
            pstmt.setString(2, order.getAddress());
            pstmt.setString(3, order.getName());
            pstmt.setString(4, order.getPnum());
            pstmt.setInt(5, order.getOid());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
    }

    @Override
    public List<Order> findMyOrder(int uid) {
        List<Order> orderList = new ArrayList<>();
        String sql = "select * from `order` where uid=? order by btime desc";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, uid);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOid(rs.getInt("oid"));
                order.setTotal(rs.getInt("total"));
                order.setBtime(rs.getDate("btime"));
                order.setDtime(rs.getDate("dtime"));
                order.setCtime(rs.getDate("ctime"));
                order.setState(rs.getInt("state"));
                order.setAddress(rs.getString("address"));
                order.setName(rs.getString("name"));
                order.setPnum(rs.getString("pnum"));
                orderList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
        for (Order order : orderList) {
            order.setItems(findMyOrderItem(order.getOid()));
        }
        return orderList;
    }

    @Override
    public List<OrderItem> findMyOrderItem(int oid) {
        List<OrderItem> orderItemList = new ArrayList<>();
        OrderItem oi;
        Phone phone;
        String sql = "select * from orderitem,phone,brand where orderitem.pid=phone.pid and phone.bid=brand.bid and oid=?";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, oid);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                oi = new OrderItem();
                phone = new Phone();
                phone.setImage(rs.getString("image"));
                phone.setBrand(rs.getString("bname"));
                phone.setModel(rs.getString("model"));
                phone.setPrice(rs.getInt("price"));
                oi.setPhone(phone);
                oi.setNum(rs.getInt("num"));
                oi.setSubtotal(rs.getInt("subtotal"));
                orderItemList.add(oi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
        return orderItemList;
    }

    @Override
    public void changeOrderState(int oid, int state) {
        String sql = "update `order` set state=? where oid=?";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, state);
            pstmt.setInt(2, oid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
    }

    @Override
    public List<Order> displayOrder() {
        List<Order> orderList = new ArrayList<>();
        String sql = "select * from `order` order by btime desc";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOid(rs.getInt("oid"));
                order.setUser(new User(rs.getInt("uid")));
                order.setTotal(rs.getInt("total"));
                order.setBtime(rs.getDate("btime"));
                order.setDtime(rs.getDate("dtime"));
                order.setCtime(rs.getDate("ctime"));
                order.setState(rs.getInt("state"));
                order.setAddress(rs.getString("address"));
                order.setName(rs.getString("name"));
                order.setPnum(rs.getString("pnum"));
                orderList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
        for (Order order : orderList) {
            order.setItems(findMyOrderItem(order.getOid()));
        }
        return orderList;
    }

    @Override
    public void changeOrderTime(int oid, String timetype) {
        String sql;
        java.util.Date date = new java.util.Date();
        try {
            if ("dtime".equals(timetype)) {
                sql = "update `order` set dtime=? where oid=?";
                connection = JDBCUtil.getConnection();
                pstmt = connection.prepareStatement(sql);
                pstmt.setDate(1, new java.sql.Date(date.getTime()));
                pstmt.setInt(2, oid);
                pstmt.executeUpdate();
            } else if ("ctime".equals(timetype)) {
                sql = "update `order` set ctime=? where oid=?";
                connection = JDBCUtil.getConnection();
                pstmt = connection.prepareStatement(sql);
                pstmt.setDate(1, new java.sql.Date(date.getTime()));
                pstmt.setInt(2, oid);
                pstmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }

    }
}
