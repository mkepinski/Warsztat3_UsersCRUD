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

@WebServlet("/user/edit")
public class EditUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int id = Integer.parseInt(request.getParameter("id"));

        UserDao userDao = new UserDao();
        User user = userDao.read(id);

        user.setUserName(name);
        user.setEmail(email);
        String hashedPassword = BCrypt.hashpw(request.getParameter("password"), BCrypt.gensalt());
        user.setPassword(hashedPassword);
        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/user/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User read = userDao.read(id);

        request.setAttribute("user", read);
        getServletContext().getRequestDispatcher("/users/edit_user.jsp").forward(request, response);

    }
}
