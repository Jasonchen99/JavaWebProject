package xyz.chenpengyu.bean;

public class Brand {
    private int bid;
    private String bname;

    public Brand(int bid, String bname) {
        this.bid = bid;
        this.bname = bname;
    }

    public Brand() {}

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }
}
