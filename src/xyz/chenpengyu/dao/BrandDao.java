package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.Brand;

import java.util.List;

public interface BrandDao {
    public List<Brand> displayBrand();
    public void addBrand(Brand brand);
    public void deleteBrand(int bid);
    public void modifyBrand(Brand brand);
}
