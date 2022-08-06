package controller;

import model.Customer;
import model.CustomerType;
import service.ICustomerService;
import service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/view")
public class CustomerServlet extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
              String action = request.getParameter("action");
                      if (action==null){
                          action="";
                      }
                      switch (action){
                          case "add":
                              showAdd(request,response);
                              break;
                          case "update":
                              break;
                          case "delete":
                              break;
                          case "display":
                              showListCustomer(request,response);
                              break;
                          default:
                              showHome(request,response);
                      }
                    }

    private void showAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/AddCustomer.jsp");
        List<CustomerType> customerTypeList = customerService.listType();
        request.setAttribute("listType",customerTypeList);
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
                        if (action==null){
                            action="";
                        }
                        switch (action){
                            case "add":
                                addCustomer(request,response);
                                break;
                            case "updateCustomer":
                                break;
                            case "deleteCustomer":
                                break;
                            case "display":

                                break;
                            default:
                                showHome(request,response);
                        }
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
         int type = Integer.parseInt(request.getParameter("type"));
         String name = request.getParameter("name");
         String birth = request.getParameter("birth");
         Boolean  gender = Boolean.valueOf(request.getParameter("gender"));
        String iden = request.getParameter("iden");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(type,name,birth,gender,iden,phone,email,address);
         customerService.AddCustomer(customer);
         showAdd(request,response);
         showListCustomer(request,response);
    }


    private void showHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList= customerService.display();
        List<CustomerType> customerListType = customerService.listType();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/listCustomer.jsp");
        request.setAttribute("ListCustomer",customerList);
        request.setAttribute("ListType", customerListType);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }













    }
