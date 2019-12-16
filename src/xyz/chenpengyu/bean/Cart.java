package xyz.chenpengyu.bean;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Jason Chen
 */
public class Cart {
    private Map<Integer, CartItem> itemMap=new HashMap<Integer, CartItem>();
    private int total=0;

    public Map<Integer, CartItem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<Integer, CartItem> itemMap) {
        this.itemMap = itemMap;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void add2cart(CartItem item){
        int pid=item.getPhone().getPid();
        if (itemMap.containsKey(pid)){
            CartItem oItem=itemMap.get(pid);
            oItem.setNum(oItem.getNum()+item.getNum());
        }else {
            itemMap.put(pid,item);
        }
        total+=item.getSubtotal();
    }

    public void removeFromCart(int pid){
        CartItem item=itemMap.remove(pid);
        total-=item.getSubtotal();
    }

    public void clearCart(){
        itemMap.clear();
        total=0;
    }

    public Collection<CartItem> getCartItems(){
        return itemMap.values();
    }
}
