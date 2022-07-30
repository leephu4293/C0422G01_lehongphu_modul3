package controller;

import model.Customer;
import service.ICustomerService;
import service.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/Customer")
public class CustomerServlet extends HttpServlet {
    private  static  ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action="";
        }
        switch (action){
            case "add":
                showAdd(request,response);
                break;
            case "delete":
                break;
            case "update":
                break;
            case "find":
                showFind(request,response);
                break;
            default:
            display(request,response);
                break;
        }
    }

    private void showFind(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/find.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/add.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showlist(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/display.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null){
                action="";
            }
            switch (action){
                case "display":
                      display(request,response);
                    break;
                case "add":
                    add(request,response);
                    break;
                case "find":
                    find(request,response);
                    break;

                default:

                   break;
            }

    }

    private void find(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer =  customerService.find(id);
        if (customer == null) {
            request.setAttribute("mess","khong co khach hang can tim");
        }else {
            request.setAttribute("customer",customer);
        }
        showFind(request,response);

    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String add = request.getParameter("adress");
        Customer customer = new Customer(id,name,email,add);
        customerService.add(id,customer);
        request.setAttribute("mess","them moi thanh cong");
        showAdd(request,response);
    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.display();
        request.setAttribute("list", customerList);
        showlist(request,response);
    }
}
