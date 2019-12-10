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

@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void rememberMe(String rememberMe,String username,String password,HttpServletRequest request, HttpServletResponse response){

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String rememberMe=request.getParameter("rememberme");
        UserDao userDao=new UserDaoImpl();
        User user=new User(username,password);
        int count=userDao.findUser(user);
        if (count>0){
            request.getSession().setAttribute("SESSION_user",user);
            rememberMe(rememberMe,username,password,request,response);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else{
            out.println("<script type='text/javascript'>");
            out.println("alert('Username or Password is error！');");
            out.println("window.location='login.jsp'");
            out.println("</script>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
