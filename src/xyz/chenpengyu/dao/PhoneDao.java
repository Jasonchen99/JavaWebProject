package xyz.chenpengyu.dao;

import xyz.chenpengyu.bean.Phone;

import java.util.List;

/**
 * @author Jason Chen
 */
public interface PhoneDao {
    public int addPhone(Phone phone);
    public List<Phone> displayPhone();
}
