package controller;

import model.Lesson;
import service.ILessonService;
import service.impl.LessonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "textServlet", urlPatterns ={"/view",""})
public class LessonServlet extends HttpServlet {
    private static ILessonService lessonService = new LessonService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "delete":
                delete(request,response);
                break;
            default:
                showlist(request,response);
        }


    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        lessonService.delete(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/list.jsp");
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
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
          String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            switch (action){
                default:
                    showlist(request,response);
            }

    }


    private void showlist(HttpServletRequest request, HttpServletResponse response) {
        List<Lesson> lessonList = lessonService.list();
        request.setAttribute("list",lessonList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/list.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
