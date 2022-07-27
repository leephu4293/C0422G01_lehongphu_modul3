import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "exerciseServlet", value = "/count")
public class exerciseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String namepro = request.getParameter("pro");
        double number1 = Double.parseDouble(request.getParameter("pri"));
        double number2 = Double.parseDouble(request.getParameter("per"));
        double discount =  number1*number2*0.01;
        double lastPrice = number1 - discount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("discount",discount);
        request.setAttribute("lastPrice",lastPrice);
        request.setAttribute("productName",namepro);
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
