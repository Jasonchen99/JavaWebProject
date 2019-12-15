package xyz.chenpengyu.dao.impl;

import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.UserDao;
import xyz.chenpengyu.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Jason Chen
 */
public class UserDaoImpl implements UserDao {
    Connection connection=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    @Override
    public int addUser(User user) {
        int count=-1;
        String sql="insert into user (username,uid,password,email,pnum,sex,admin) values(?,?,?,?,?,?,?)";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setString(1,user.getUsername());
            pstmt.setInt(2,user.getUid());
            pstmt.setString(3,user.getPassword());
            pstmt.setString(4,user.getEmail());
            pstmt.setString(5,user.getPnum());
            pstmt.setInt(6,user.getSex());
            pstmt.setInt(7,user.getAdmin());
            count=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return count;
    }

    @Override
    public User findUser(User user) {
        User user1=new User();
        String sql="select username,uid,password,email,pnum,sex,admin from user where uid=? and password=?";
        connection= JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,user.getUid());
            pstmt.setString(2,user.getPassword());
            rs=pstmt.executeQuery();
            if (rs.next()){
                user1.setUsername(rs.getString("username"));
                user1.setUid(rs.getInt("uid"));
                user1.setPassword(rs.getString("password"));
                user1.setEmail(rs.getString("email"));
                user1.setPnum(rs.getString("pnum"));
                user1.setSex(rs.getInt("sex"));
                user1.setAdmin(rs.getInt("admin"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return user1;
    }
}
