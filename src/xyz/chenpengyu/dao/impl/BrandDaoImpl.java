package xyz.chenpengyu.dao.impl;

import xyz.chenpengyu.bean.Brand;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.dao.BrandDao;
import xyz.chenpengyu.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrandDaoImpl implements BrandDao {
    Connection connection=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    @Override
    public List<Brand> displayBrand() {
        List<Brand> brandList=new ArrayList<>();
        String sql="select * from brand";
        connection=JDBCUtil.getConnection();
        try {
            pstmt=connection.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while(rs.next()){
                Brand brand=new Brand();
                brand.setBid(rs.getInt("bid"));
                brand.setBname(rs.getString("bname"));
                brandList.add(brand);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JDBCUtil.closeAll(connection,rs,pstmt);
        }
        return brandList;
    }
}
