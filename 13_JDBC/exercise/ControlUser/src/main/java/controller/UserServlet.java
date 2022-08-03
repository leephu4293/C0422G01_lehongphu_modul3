package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns ={"/user",""} )
public class UserServlet extends HttpServlet {
    private static IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                  showAdd(request,response);
                break;
            case "sort":
                sort(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case "update":
              showUpdate(request,response);
                break;
            case "search":
             showSearch(request,response);
                break;
            default:
                display(request,response);

        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
              add(request,response);
                break;
            case "search":
              search(request,response);
                break;
            case "update":
                 update(request,response);
                break;
            default:

        }
    }

    private void sort(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList = userService.sort();
        userService.addUserTransaction();
        request.setAttribute("list",userList);
        showSort(request,response);
        try {
            response.sendRedirect("/user");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showSort(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/display.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void search(HttpServletRequest request, HttpServletResponse response) {
        String country = request.getParameter("country");
        List<User> userList = userService.search(country);
        if (userList.isEmpty()){
            request.setAttribute("mess","khong co quoc gia can tim");
        }else {
            request.setAttribute("list", userList);
        }
        showSearch(request,response);
    }


    private void showDisplay(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/display.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showUpdate(HttpServletRequest request, HttpServletResponse response) {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/update.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showSearch(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/display.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        List<User> list = userService.display();
        request.setAttribute("list",list);
        showDisplay(request,response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
           int id = Integer.parseInt(request.getParameter("id"));
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String country = request.getParameter("country");
          User user = new User(id,name,email,country);
         if(userService.update(id,user)){
             request.setAttribute("list",user);
             request.setAttribute("mess","update thanh cong");

         } else {
             request.setAttribute("mess","update khong thanh cong");
         }
         showUpdate(request,response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name,email,country);
        if(userService.addNew(user)){
            request.setAttribute("mess","them moi thanh cong");
        } else{
            request.setAttribute("mess","them moi khong thanh cong");
        }
        showAdd(request,response);
    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/user/addNew.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        if(userService.delete(id)){
            request.setAttribute("messdelete","xoa thanh cong");
        }else {
            request.setAttribute("messdelete", "xoa khong thanh cong");
        }
       display(request,response);
    }



}
