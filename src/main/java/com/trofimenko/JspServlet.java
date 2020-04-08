package com.trofimenko;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("temp-serv")
public class JspServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        /*
        request у нас служит неким объектом который наполняют инфой и передают его на jsp страницу,
        там из него достают инфу и отображают на странице
         */
        List<User> users = new ArrayList<User>() {{
            add(new User("Igor", "Vietnam", 24));
            add(new User("Mike", "Thailand", 33));
            add(new User("Joe", "Bali", 55));
        }};

        req.setAttribute("users",users);

        getServletContext().getRequestDispatcher("/first-jsp.jsp").forward(req,resp);
    }
}
