package severlet;

import model.Caculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CaculatorServlet", value = "/CaculatorServlet")
public class CaculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         double x= Double.parseDouble(request.getParameter("first"));
         double y= Double.parseDouble(request.getParameter("second"));
         char cacular = request.getParameter("operator").charAt(0);
         RequestDispatcher requestDispatcher = request.getRequestDispatcher("Result.jsp");
        String result="";
        try {
            result = String.valueOf(Caculator.caculate(x,y,cacular));
        }catch (Exception ex){
            result = "không thể chia cho 0";
        }
        request.setAttribute("result",result);
        request.setAttribute("num1",x);
        request.setAttribute("num2",y);
        request.setAttribute("cacular",cacular);

        requestDispatcher.forward(request,response);

    }
}
