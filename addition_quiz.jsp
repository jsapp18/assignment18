<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Addition Quiz Extravaganza</title>
</head>
<!--Makes random math questions then gives answer boxes for them-->
<body>
    <h1>Addition JSP Quiz</h1>
    <form action="quiz_results.jsp" method="post">
        <%
            int numQuestions = 10;
            for (int i = 1; i <= numQuestions; i++) {
                int num1 = (int) (Math.random() * 10);
                int num2 = (int) (Math.random() * 10);
                out.println("<p>Question " + i + ": What is " + num1 + " + " + num2 + "?</p>");
                out.println("<input type='hidden' name='num1_" + i + "' value='" + num1 + "'>");
                out.println("<input type='hidden' name='num2_" + i + "' value='" + num2 + "'>");
                out.println("<input type='text' name='answer_" + i + "'><br>");
            }
        %>
        <input type="submit" value="Submit Answers">
    </form>
</body>
</html>