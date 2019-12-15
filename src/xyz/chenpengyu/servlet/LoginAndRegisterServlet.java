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
@WebServlet(name = "LoginAndRegisterServlet", urlPatterns = "/LoginAndRegisterServlet")
public class LoginAndRegisterServlet extends HttpServlet {
    UserDao userDao=new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String method= request.getParameter("method");
        if("login".equals(method)){
            login(request,response);
        }else if("register".equals(method)){
            register(request,response);
        }
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out=response.getWriter();
        int uid= Integer.parseInt(request.getParameter("uid"));
        String password=request.getParameter("password");
        User user=new User(uid,password);
        User user1=userDao.findUser(user);
        if (user1.getUsername()!=null){
            request.getSession().setAttribute("SESSION_user",user1);
            if (user1.getAdmin()==0){
                request.getRequestDispatcher("PhoneServlet?method=displayPhone").forward(request,response);
            }else if (user1.getAdmin()==1){
                request.getRequestDispatcher("admin.jsp").forward(request,response);
            }
        }else{
            out.println("<script type='text/javascript'>");
            out.println("alert('Username or Password is error！');");
            out.println("window.location='login.jsp'");
            out.println("</script>");
        }
    }
    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        int uid= Integer.parseInt(request.getParameter("uid"));
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String pnum=request.getParameter("pnum");
        int sex= Integer.parseInt(request.getParameter("sex"));
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
