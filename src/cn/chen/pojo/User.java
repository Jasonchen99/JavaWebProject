package cn.chen.pojo;

import java.io.Serializable;

/**
 * @author Jason Chen
 */
public class User implements Serializable {
    private String userName;
    private String password;
    private double height;

    public User() {}

    public User(String userName, String password, double height) {
        this.userName = userName;
        this.password = password;
        this.height = height;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", height=" + height +
                '}';
    }
}
