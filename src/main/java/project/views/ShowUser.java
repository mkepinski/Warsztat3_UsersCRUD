package project.views;

import project.dao.UserDao;
import project.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/show")
public class ShowUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userDao.read(id);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/user_details.jsp").forward(request, response);
    }
}
