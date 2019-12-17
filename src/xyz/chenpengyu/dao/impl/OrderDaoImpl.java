package xyz.chenpengyu.dao.impl;

import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;
import xyz.chenpengyu.dao.OrderDao;
import xyz.chenpengyu.util.JDBCUtil;

import java.sql.*;

/**
 * @author Jason Chen
 */
public class OrderDaoImpl implements OrderDao {
    Connection connection=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    @Override
    public void saveOrder(Order order) {
        String sql="insert into `order` values (?,?,?,?,?,?,?,?,?,?)";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,order.getOid());
            pstmt.setInt(2,order.getUser().getUid());
            pstmt.setInt(3,order.getTotal());
            pstmt.setDate(4,new java.sql.Date(order.getBtime().getTime()));
            pstmt.setDate(5,null);
            pstmt.setDate(6,null);
            pstmt.setInt(7,order.getState());
            pstmt.setString(8,order.getAddress());
            pstmt.setString(9,order.getName());
            pstmt.setString(10,order.getPnum());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }

        for (OrderItem oi:order.getItems()){
            saveOrderItems(oi);
        }
    }

    @Override
    public void saveOrderItems(OrderItem oi) {
        String sql="insert into orderitem values (?,?,?,?,?)";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,oi.getOiid());
            pstmt.setInt(2,oi.getOrder().getOid());
            pstmt.setInt(3,oi.getPhone().getPid());
            pstmt.setInt(4,oi.getNum());
            pstmt.setInt(5,oi.getSubtotal());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
    }
}
