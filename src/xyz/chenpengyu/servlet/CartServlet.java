package xyz.chenpengyu.servlet;

import xyz.chenpengyu.bean.Cart;
import xyz.chenpengyu.bean.CartItem;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.dao.impl.PhoneDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Jason Chen
 */
@WebServlet(name = "CartServlet", urlPatterns = "/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("add2cart".equals(method)){
            add2cart(request,response);
        }else if ("removeFromCart".equals(method)){
            removeFromCart(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private void add2cart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid= Integer.parseInt(request.getParameter("pid"));
        int num= Integer.parseInt(request.getParameter("num"));
        PhoneDao phoneDao=new PhoneDaoImpl();
        Phone phone=phoneDao.getPhone(pid);
        CartItem cartItem=new CartItem(phone,num);
        Cart cart=getCart(request);
        cart.add2cart(cartItem);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }

    private Cart getCart(HttpServletRequest request) {
        Cart cart= (Cart) request.getSession().getAttribute("SESSION_cart");
        if (cart==null){
            cart=new Cart();
            request.getSession().setAttribute("SESSION_cart",cart);
        }
        return cart;
    }

    private void removeFromCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid= Integer.parseInt(request.getParameter("pid"));
        getCart(request).removeFromCart(pid);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
}
