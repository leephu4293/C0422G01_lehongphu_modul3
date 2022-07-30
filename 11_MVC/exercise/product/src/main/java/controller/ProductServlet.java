package controller;

import model.Product;
import service.IMPL.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductServlet", value = "/Product")
public class ProductServlet extends HttpServlet {
    private  static IProductService productService =new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null ){
            action = "";
        }
        switch (action){
            case "addNew":
                 showAddNew(request,response);
                break;
            case "edit" :
                showEdit(request,response);
                break;
            case "delete":
                showDelete(request,response);
                break;
            case "selection":
                showSelection(request,response);
                break;
            case "seach":
                showSeach(request,response);
                break;
            default:
                display(request,response);
        }
    }

    private void showDelete(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/delete.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showSelection(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/selection.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddNew(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/addNew.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showSeach(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/seach.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        List<Product> list = productService.display();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Product/display.jsp");
        request.setAttribute("product",list);
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
         if (action == null ){
             action = "";
         }
         switch (action){
             case "addNew":
                 addNew(request,response);
                 break;
             case "edit" :
                 edit(request,response);
                 break;
             case "delete":
                 delete(request,response);
                 break;
             case "selection":
                 selection(request,response);
                 break;
             case "display":
                 break;
             case "seach":
                 seach(request,response);
                 break;
             default:
         }
    }

    private void seach(HttpServletRequest request, HttpServletResponse response) {
        String name =  request.getParameter("name");
        List<Product> list = productService.seach(name);
        if(list.isEmpty()){
            request.setAttribute("mess","khong co te ncan tim");
        } else {
            request.setAttribute("list",list);
        }
        showSeach(request,response);
    }


    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("code");
        Product product = productService.selection(code);
        if (product==null){
            request.setAttribute("mess","san pham muon xoa khong ton tai ");
        }else {
            productService.delete(code);
            request.setAttribute("send","xoa thanh cong");
        }
        showDelete(request,response);
    }

    private void selection(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("code");
        Product product = productService.selection(code);
        if (product == null) {
            request.setAttribute("mess", "khong co san pham muon tim ");
        } else {
            request.setAttribute("product", product);
        }
        showSelection(request,response);
    }
    private void edit(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("code");
        String name =  request.getParameter("name");
        String number = request.getParameter("number");
        String price = request.getParameter("price");
        String expl = request.getParameter("status");
        Product product = productService.selection(code);
        if (product == null) {
            request.setAttribute("mess", "san pham muon update khong ton tai  ");
        } else {
           product.setName(name);
           product.setNumber(number);
           product.setPrice(price);
           product.setExplan(expl);
           productService.edit(code,product);
           request.setAttribute("send","update thanh cong");
        }
           showEdit(request,response);
    }

    private void addNew(HttpServletRequest request, HttpServletResponse response) {
       String code = request.getParameter("code");
       String name =  request.getParameter("name");
       String number = request.getParameter("number");
       String price = request.getParameter("price");
       String expl = request.getParameter("status");
        Product product = new Product(code,name,number,price,expl);
        productService.addNew(product);
        request.setAttribute("mess", "them moi thanh cong");
        showAddNew(request,response);
    }
}
