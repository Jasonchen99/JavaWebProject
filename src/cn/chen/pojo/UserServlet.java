package cn.chen.pojo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Jason Chen
 */
@WebServlet(name = "UserServlet", urlPatterns = "/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user1=new User("张三","123456",120);
        User user2=new User("李四","66666",150);
        User user3=new User("王五","88888",180);

        List<User> list=new ArrayList<User>();
        list.add(user1);
        list.add(user2);
        list.add(user3);
        request.setAttribute("userList", list);
        request.getRequestDispatcher("showUserList.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
