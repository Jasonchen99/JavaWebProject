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
import java.io.PrintWriter;
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
        }else if ("addBrand".equals(method)){
            addBrand(request,response);
        }else if ("deleteBrand".equals(method)){
            deleteBrand(request,response);
        }else if ("display1Brand".equals(method)){
            display1Brand(request,response);
        }else if ("modifyBrand".equals(method)){
            modifyBrand(request,response);
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

    private void addBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        int bid= Integer.parseInt(request.getParameter("bid"));
        String bname= request.getParameter("bname");
        Brand brand=new Brand(bid,bname);
        brandDao.addBrand(brand);
        out.println("<script type='text/javascript'>");
        out.println("alert('添加成功！');");
        out.println("window.location='brandmanage.jsp';");
        out.println("</script>");
        request.getRequestDispatcher("brandmanage.jsp").forward(request,response);
    }

    private void deleteBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid= Integer.parseInt(request.getParameter("bid"));
        brandDao.deleteBrand(bid);
        displayBrand(request,response);
    }
    private void display1Brand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid= Integer.parseInt(request.getParameter("bid"));
        String bname=request.getParameter("bname");
        request.setAttribute("brand",new Brand(bid,bname));
        request.getRequestDispatcher("editbrand.jsp").forward(request,response);
    }
    private void modifyBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid= Integer.parseInt(request.getParameter("bid"));
        String bname=request.getParameter("bname");
        brandDao.modifyBrand(new Brand(bid,bname));
        request.getRequestDispatcher("admin.jsp").forward(request,response);
    }
}
