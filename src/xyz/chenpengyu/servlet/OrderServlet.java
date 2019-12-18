package xyz.chenpengyu.servlet;

import sun.plugin.util.UIUtil;
import xyz.chenpengyu.bean.*;
import xyz.chenpengyu.dao.OrderDao;
import xyz.chenpengyu.dao.impl.OrderDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "OrderServlet", urlPatterns = "/OrderServlet")
public class OrderServlet extends HttpServlet {
    OrderDao orderDao=new OrderDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("save".equals(method)){
            save(request,response);
        }else if("findMyOrder".equals(method)){
            findMyOrder(request,response);
        }else if("checkOut".equals(method)){
            checkOut(request,response);
        }else if("changeOrderState".equals(method)){
            changeOrderState(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart= (Cart) request.getSession().getAttribute("SESSION_cart");
        User user= (User) request.getSession().getAttribute("SESSION_user");
        Order order=new Order();
        order.setOid((int)(1+Math.random()*(999999999-100000000+1)));
        order.setBtime(new Date());
        order.setTotal(cart.getTotal());
        order.setState(0);
        order.setUser(user);
        for (CartItem ci:cart.getCartItems()){
            OrderItem oi=new OrderItem();
            oi.setOiid((int)(1+Math.random()*(999999999-100000000+1)));
            oi.setNum(ci.getNum());
            oi.setSubtotal(ci.getSubtotal());
            oi.setPhone(ci.getPhone());
            oi.setOrder(order);
            order.getItems().add(oi);
        }
        orderDao.saveOrder(order);
        cart.clearCart();
        request.getSession().setAttribute("SESSION_cart",cart);
        request.setAttribute("order",order);
        request.getRequestDispatcher("checkout.jsp").forward(request,response);
    }

    private void findMyOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user= (User) request.getSession().getAttribute("SESSION_user");
        List<Order> orderList=orderDao.findMyOrder(user.getUid());
        request.getSession().setAttribute("SESSION_orderList",orderList);
        request.getRequestDispatcher("myorder.jsp").forward(request,response);
    }

    private void checkOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String pnum=request.getParameter("pnum");
        int oid= Integer.parseInt(request.getParameter("oid"));
        Order order=new Order(oid,1,address,name,pnum);
        orderDao.checkOut(order);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }

    private void changeOrderState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int oid= Integer.parseInt(request.getParameter("oid"));
        int state= Integer.parseInt(request.getParameter("state"));
        orderDao.changeOrderState(oid,state);
        request.getRequestDispatcher("OrderServlet?method=findMyOrder").forward(request,response);
    }
}
