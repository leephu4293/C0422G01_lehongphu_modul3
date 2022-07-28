package custom_serverlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add( new Customer("huy","12/12/1998","Hue","https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/291905604_5262726597152057_4614571365815455597_n.jpg?stp=cp1_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=5cd70e&_nc_ohc=Kzg_ijN3-QwAX9crwa3&tn=id7FN1GhhlNj4-ox&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT8qUiKbyF4L_Q9WpvvwgHwi6yPvOu2t4YA3mXaaqdyDeQ&oe=62E7888B"));
        customerList.add( new Customer("hung","12/12/2000","Hue","https://scontent.fsgn2-6.fna.fbcdn.net/v/t39.30808-6/294494307_5293175624107154_4174273911004854110_n.jpg?stp=cp1_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=5cd70e&_nc_ohc=8704sQJ2LhcAX8OXrAv&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT9gubvH42IAQsjIkquxKpETyt6pN93KPpUgrTi4hVCQ6A&oe=62E7D8AA"));
        customerList.add( new Customer("long","12/12/1998","Hue","https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/291905604_5262726597152057_4614571365815455597_n.jpg?stp=cp1_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=5cd70e&_nc_ohc=Kzg_ijN3-QwAX9crwa3&tn=id7FN1GhhlNj4-ox&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT8qUiKbyF4L_Q9WpvvwgHwi6yPvOu2t4YA3mXaaqdyDeQ&oe=62E7888B"));
        customerList.add( new Customer("thai","12/12/1998","Hue","resouce/picture/20220728_133035.jpg"));
        customerList.add( new Customer("long","12/12/1998","Hue","https://scontent.fsgn2-4.fna.fbcdn.net/v/t39.30808-6/291905604_5262726597152057_4614571365815455597_n.jpg?stp=cp1_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=5cd70e&_nc_ohc=Kzg_ijN3-QwAX9crwa3&tn=id7FN1GhhlNj4-ox&_nc_ht=scontent.fsgn2-4.fna&oh=00_AT8qUiKbyF4L_Q9WpvvwgHwi6yPvOu2t4YA3mXaaqdyDeQ&oe=62E7888B"));

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/CustomerList.jsp");
        request.setAttribute("customerList", customerList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
