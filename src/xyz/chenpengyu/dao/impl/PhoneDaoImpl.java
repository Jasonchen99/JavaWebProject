package xyz.chenpengyu.dao.impl;

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
        return 0;
    }

    @Override
    public List<Phone> displayPhone() {
        List<Phone> list =new ArrayList<>();
        String sql="select bname,pid,model,stock,info,price,image from phone,brand where phone.bid=brand.bid";
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
        String sql="select bname,pid,model,stock,info,price,image from phone,brand where phone.bid=brand.bid and phone.pid=?";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,pid);
            rs=pstmt.executeQuery();
            if (rs.next()){
                phone.setBrand(rs.getString("bname"));
                phone.setPid(rs.getInt("pid"));
                phone.setModel(rs.getString("model"));
                phone.setStock(rs.getInt("stock"));
                phone.setInfo(rs.getString("info"));
                phone.setPrice(rs.getInt("price"));
                phone.setImage(rs.getString("image"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return phone;
    }
}
