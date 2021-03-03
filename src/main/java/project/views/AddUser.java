package project.views;

import org.mindrot.jbcrypt.BCrypt;
import project.dao.UserDao;
import project.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/add")
public class AddUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        UserDao userDao = new UserDao();

        user.setEmail(request.getParameter("email"));
        user.setUserName(request.getParameter("name"));
        String hashedPassword = BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt());
        user.setPassword(hashedPassword);
        userDao.create(user);

        response.sendRedirect(request.getContextPath() + "/user/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add_user.jsp").forward(request, response);
    }
}
