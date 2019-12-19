package xyz.chenpengyu.bean;

public class Phone {
    private String brand;
    private int pid;
    private String model;
    private int stock;
    private String info;
    private int price;
    private String image;
    private int bid;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public Phone() {}

    public Phone(int pid, String model, int stock, String info, int price, String image, int bid) {
        this.pid = pid;
        this.model = model;
        this.stock = stock;
        this.info = info;
        this.price = price;
        this.image = image;
        this.bid = bid;
    }

    public Phone(String brand, int pid, String model, int stock, String info, int price, String image) {
        this.brand = brand;
        this.pid = pid;
        this.model = model;
        this.stock = stock;
        this.info = info;
        this.price = price;
        this.image = image;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
