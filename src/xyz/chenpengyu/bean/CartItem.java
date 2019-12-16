package xyz.chenpengyu.bean;

public class CartItem {
    private Phone phone;
    private int subtotal;
    private int num;

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public int getSubtotal() {
        return phone.getPrice()*num;
    }

    public void setSubtotal(int subtotal) {
        this.subtotal = subtotal;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public CartItem(Phone phone, int num) {
        this.phone = phone;
        this.num = num;
    }

    public CartItem(Phone phone) {
        this.phone = phone;
    }
}
