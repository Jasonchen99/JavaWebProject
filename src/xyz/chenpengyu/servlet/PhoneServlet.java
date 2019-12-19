package xyz.chenpengyu.servlet;

import xyz.chenpengyu.bean.Brand;
import xyz.chenpengyu.bean.Phone;
import xyz.chenpengyu.dao.PhoneDao;
import xyz.chenpengyu.dao.impl.PhoneDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
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
        }else if("deletePhone".equals(method)){
            deletePhone(request,response);
        }else if("modifyPhone".equals(method)){
            modifyPhone(request,response);
        }else if("display1Phone".equals(method)){
            display1Phone(request,response);
        }else if("displayPhoneToCharts".equals(method)){
            displayPhoneToCharts(request,response);
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
        int sales= Integer.parseInt(request.getParameter("sales"));
        Phone phone=new Phone(brand,pid,model,stock,info,price,image);
        phone.setSales(sales);
        request.setAttribute("phone",phone);
        request.getRequestDispatcher("product-details.jsp").forward(request,response);
    }

    private void addPhone(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out=response.getWriter();
        int bid= Integer.parseInt(request.getParameter("bid"));
        int pid= Integer.parseInt(request.getParameter("pid"));
        String model=request.getParameter("model");
        int stock= Integer.parseInt(request.getParameter("stock"));
        String info= request.getParameter("info");
        int price= Integer.parseInt(request.getParameter("price"));
        String image=request.getParameter("image");
        Phone phone=new Phone(pid,model,stock,info,price,image,bid);
        int count=phoneDao.addPhone(phone);
        if (count>0){
            request.getRequestDispatcher("phonemanage.jsp").forward(request,response);
        }else {
            out.println("<script type='text/javascript'>");
            out.println("alert('add fail！');");
            out.println("window.location='phonemanage.jsp'");
            out.println("</script>");
        }
    }
    private void displayPhone2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Phone> list=phoneDao.displayPhone();
        request.setAttribute("phoneList",list);
        request.getRequestDispatcher("phonemanage.jsp").forward(request,response);
    }

    private void deletePhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pid= Integer.parseInt(request.getParameter("pid"));
        phoneDao.deletePhone(pid);
        displayPhone2(request,response);
    }

    private void modifyPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid= Integer.parseInt(request.getParameter("bid"));
        int pid= Integer.parseInt(request.getParameter("pid"));
        String model=request.getParameter("model");
        int stock= Integer.parseInt(request.getParameter("stock"));
        String info= request.getParameter("info");
        int price= Integer.parseInt(request.getParameter("price"));
        String image=request.getParameter("image");
        Phone phone=new Phone(pid,model,stock,info,price,image,bid);
        phoneDao.modifyPhone(phone);
        request.getRequestDispatcher("admin.jsp").forward(request,response);
    }
    private void display1Phone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid= Integer.parseInt(request.getParameter("bid"));
        int pid= Integer.parseInt(request.getParameter("pid"));
        String model=request.getParameter("model");
        int stock= Integer.parseInt(request.getParameter("stock"));
        String info= request.getParameter("info");
        int price= Integer.parseInt(request.getParameter("price"));
        String image=request.getParameter("image");
        Phone phone=new Phone(pid,model,stock,info,price,image,bid);
        request.setAttribute("phone",phone);
        request.getRequestDispatcher("editphone.jsp").forward(request,response);
    }

    private void displayPhoneToCharts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Phone> list=phoneDao.displayPhone();
        request.setAttribute("phoneList",list);
        request.getRequestDispatcher("echarts.jsp").forward(request,response);
    }
}
