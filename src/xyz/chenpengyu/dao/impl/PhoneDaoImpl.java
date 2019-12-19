package xyz.chenpengyu.dao.impl;

import sun.security.jca.GetInstance;
import xyz.chenpengyu.bean.Order;
import xyz.chenpengyu.bean.OrderItem;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhoneDaoImpl implements PhoneDao {
    Connection connection=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    @Override
    public int addPhone(Phone phone) {
        int count=-1;
        String sql="insert into phone values(?,?,?,?,?,?,?)";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,phone.getBid());
            pstmt.setInt(2,phone.getPid());
            pstmt.setString(3,phone.getModel());
            pstmt.setInt(4,phone.getStock());
            pstmt.setString(5,phone.getInfo());
            pstmt.setInt(6,phone.getPrice());
            pstmt.setString(7,phone.getImage());
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return count;
    }

    @Override
    public List<Phone> displayPhone() {
        List<Phone> list =new ArrayList<>();
        String sql="select * from phone,brand where phone.bid=brand.bid";
        connection=JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while(rs.next()){
                Phone phone=new Phone();
                phone.setBrand(rs.getString("bname"));
                phone.setPid(rs.getInt("pid"));
                phone.setModel(rs.getString("model"));
                phone.setStock(rs.getInt("stock"));
                phone.setInfo(rs.getString("info"));
                phone.setPrice(rs.getInt("price"));
                phone.setImage(rs.getString("image"));
                phone.setBid(rs.getInt("bid"));
                list.add(phone);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return list;
    }

    @Override
    public Phone getPhone(int pid) {
        Phone phone=new Phone();
        String sql="select * from phone,brand where phone.bid=brand.bid and phone.pid=?";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,pid);
            rs=pstmt.executeQuery();
            while (rs.next()){
                phone.setBrand(rs.getString("bname"));
                phone.setPid(rs.getInt("pid"));
                phone.setModel(rs.getString("model"));
                phone.setStock(rs.getInt("stock"));
                phone.setInfo(rs.getString("info"));
                phone.setPrice(rs.getInt("price"));
                phone.setImage(rs.getString("image"));
                phone.setBid(rs.getInt("bid"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return phone;
    }

    @Override
    public void decreasePhone(Order order) {
        //手机库存减少
        for (OrderItem oi:order.getItems()) {
            int pid = oi.getPhone().getPid();
            int num = oi.getNum();
            String sql = "update phone set stock=stock-? where pid=?";
            connection = JDBCUtil.getConnection();
            try {
                pstmt = connection.prepareStatement(sql);
                pstmt.setInt(1, num);
                pstmt.setInt(2, pid);
                pstmt.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                JDBCUtil.closeAll(connection, rs, pstmt);
            }
        }
    }

    @Override
    public void deletePhone(int pid) {
        String sql="delete from phone where pid=?";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,pid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
    }

    @Override
    public void modifyPhone(Phone phone) {
        String sql = "update phone set bid=?,model=?,stock=?,info=?,price=?,image=? where pid=?";
        connection = JDBCUtil.getConnection();
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1,phone.getBid());
            pstmt.setString(2,phone.getModel());
            pstmt.setInt(3,phone.getStock());
            pstmt.setString(4,phone.getInfo());
            pstmt.setInt(5,phone.getPrice());
            pstmt.setString(6,phone.getImage());
            pstmt.setInt(7,phone.getPid());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtil.closeAll(connection, rs, pstmt);
        }
    }
}
