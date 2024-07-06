package com.register;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/submitQuiz")
public class quizz extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String[] q1Options = request.getParameterValues("q1_option");
        String[] q2Options = request.getParameterValues("q2_option");
        
        
    
        int score = calculateScore(q1Options) + calculateScore(q2Options); 
        
        
        int totalQuestions = 2; 
        
       
        int correctAnswers = calculateCorrectAnswers(q1Options) + calculateCorrectAnswers(q2Options); 
        
        
        request.setAttribute("totalMarks", score);
        request.setAttribute("totalQuestions", totalQuestions);
        request.setAttribute("correctAnswers", correctAnswers);
        
       
        request.getRequestDispatcher("quizResult.jsp").forward(request, response);
    }

    private int calculateScore(String[] options) {
       
        if (options != null && options.length == 1 && options[0].equals("Delhi")) {
            return 1; 
        }
        return 0; 
    }
    
    private int calculateCorrectAnswers(String[] options) {
        // 
        if (options != null && options.length == 1 && options[0].equals("Delhi")) {
            return 1; 
        }
        return 0; 
    }
}
