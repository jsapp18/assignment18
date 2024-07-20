<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
</head>
<body>
    <!--Gets the addition quiz results for each question, then gives you a score-->
    <h1>Quiz Results</h1>
    <%
        int numQuestions = 10;
        int score = 0;

        for (int i = 1; i <= numQuestions; i++) {
            int num1 = Integer.parseInt(request.getParameter("num1_" + i));
            int num2 = Integer.parseInt(request.getParameter("num2_" + i));
            int correctAnswer = num1 + num2;
            int userAnswer = Integer.parseInt(request.getParameter("answer_" + i));

            out.println("<p>Question " + i + ": " + num1 + " + " + num2 + " = " + correctAnswer + "</p>");
            out.println("<p>Your Answer: " + userAnswer + "</p>");

            if (userAnswer == correctAnswer) {
                out.println("<p>Correct!</p>");
                score++;
            } else {
                out.println("<p>Incorrect.</p>");
            }

            out.println("<br>");
        }

        out.println("<h2>Your Score: " + score + " out of " + numQuestions + "</h2>");
    %>
</body>
</html>