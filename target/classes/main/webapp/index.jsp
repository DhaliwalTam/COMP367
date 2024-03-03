<!-- http://localhost:8090/comp367-webapp/ -->
<%@ page import="main.webapp.GreetingMessage" %>
<%@ page import="java.time.LocalTime" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to COMP367</title>
</head>
<body>
    <h1>Welcome to COMP367</h1>
    <%
        String studentName = "Tamanna"; 
        String greetingMessage = GreetingMessage.getGreetingMessage(studentName);
        out.println("<p>" + greetingMessage + "</p>");
    %>
</body>
</html>
