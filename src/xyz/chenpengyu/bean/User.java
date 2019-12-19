package xyz.chenpengyu.bean;

/**
 * @author Jason Chen
 */
public class User {
    private String username;
    private int uid;
    private String password;
    private String email;
    private String pnum;
    private int sex;
    private int admin;

    public User(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPnum() {
        return pnum;
    }

    public void setPnum(String pnum) {
        this.pnum = pnum;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public User() {}

    public User(int uid, String password) {
        this.uid = uid;
        this.password = password;
    }

    public User(String username, int uid, String password, String email, String pnum, int sex, int admin) {
        this.username = username;
        this.uid = uid;
        this.password = password;
        this.email = email;
        this.pnum = pnum;
        this.sex = sex;
        this.admin = admin;
    }
}
