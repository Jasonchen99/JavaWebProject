package xyz.chenpengyu.servlet;

import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.dao.impl.PhoneDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhoneServlet", urlPatterns = "/PhoneServlet")
public class PhoneServlet extends HttpServlet {
    PhoneDao phoneDao=new PhoneDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("displayPhone".equals(method)){
            displayPhone(request,response);
        }else if("addPhone".equals(method)){
            addPhone(request,response);
        }else if("showPhone".equals(method)){
            showPhone(request,response);
        }else if("displayPhone2".equals(method)){
            displayPhone2(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private void displayPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Phone> list=phoneDao.displayPhone();
        request.getSession().setAttribute("SESSION_phoneList",list);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    private void showPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brand=request.getParameter("brand");
        int pid= Integer.parseInt(request.getParameter("pid"));
        String model=request.getParameter("model");
        int stock= Integer.parseInt(request.getParameter("stock"));
        String info= request.getParameter("info");
        int price= Integer.parseInt(request.getParameter("price"));
        String image=request.getParameter("image");
        Phone phone=new Phone(brand,pid,model,stock,info,price,image);
        request.setAttribute("phone",phone);
        request.getRequestDispatcher("product-details.jsp").forward(request,response);
    }

    private void addPhone(HttpServletRequest request, HttpServletResponse response){

    }
    private void displayPhone2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Phone> list=phoneDao.displayPhone();
        request.setAttribute("phoneList",list);
        request.getRequestDispatcher("phonemanage.jsp").forward(request,response);
    }

}
