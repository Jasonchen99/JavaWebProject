package xyz.chenpengyu.servlet;

import xyz.chenpengyu.bean.Brand;
import xyz.chenpengyu.dao.BrandDao;
import xyz.chenpengyu.dao.impl.BrandDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BrandServlet", urlPatterns = "/BrandServlet")
public class BrandServlet extends HttpServlet {
    BrandDao brandDao=new BrandDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("displayBrand".equals(method)){
            displayBrand(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private void displayBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Brand> brandList=brandDao.displayBrand();
        request.setAttribute("brandList",brandList);
        request.getRequestDispatcher("brandmanage.jsp").forward(request,response);
    }
}
