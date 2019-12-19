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
import java.util.List;
import java.util.Queue;

@WebServlet(name = "UserServlet", urlPatterns = "/UserServlet")
public class UserServlet extends HttpServlet {
    UserDao userDao=new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("displayUser".equals(method)){
            displayUser(request,response);
        }else if ("deleteUser".equals(method)){
            deleteUser(request,response);
        }else if ("modifyUser".equals(method)){
            modifyUser(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    private void displayUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList=userDao.display();
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("usermanage.jsp").forward(request,response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int uid= Integer.parseInt(request.getParameter("uid"));
        userDao.deleteUser(uid);
        displayUser(request,response);
    }

    private void modifyUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        int uid= Integer.parseInt(request.getParameter("uid"));
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String pnum=request.getParameter("pnum");
        int sex= Integer.parseInt(request.getParameter("sex"));
        User user=new User(username,uid,password,email,pnum,sex,0);
        userDao.modifyUser(user);
        request.getSession().setAttribute("SESSION_user",user);
        request.getRequestDispatcher("myaccount.jsp").forward(request,response);
    }
}
