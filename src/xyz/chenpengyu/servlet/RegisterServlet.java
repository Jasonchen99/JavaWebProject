package xyz.chenpengyu.servlet;

import xyz.chenpengyu.bean.User;
import xyz.chenpengyu.dao.UserDao;
import xyz.chenpengyu.dao.impl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author Jason Chen
 */
@WebServlet(name = "RegisterServlet", urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        int uid= Integer.parseInt(request.getParameter("uid"));
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String pnum=request.getParameter("pnum");
        int sex= Integer.parseInt(request.getParameter("sex"));
        UserDao userDao=new UserDaoImpl();
        User user=new User(username,uid,password,email,pnum,sex,0);
        int count=userDao.addUser(user);
        if (count>0){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else{
            out.println("<script type='text/javascript'>");
            out.println("alert('register fail！');");
            out.println("window.location='register.jsp'");
            out.println("</script>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
