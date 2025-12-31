package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.StudentDAO;
import model.Student;

 @WebServlet(urlPatterns = {"/register", "/show_all"})
public class StudentServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();

     protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Student> listStudents = studentDAO.selectAllStudents();
        request.setAttribute("studentList", listStudents);
        
         request.getRequestDispatcher("show_all.jsp").forward(request, response);
    }

     protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int year = Integer.parseInt(request.getParameter("year"));

        studentDAO.insertStudent(name, email, year);
        
         response.sendRedirect("show_all");
    }
}