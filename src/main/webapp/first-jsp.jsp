<%@ page import="java.time.LocalDateTime" %>
<%@ page import="com.trofimenko.User" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
<h1>Hello JSP</h1>

<%
//    1 способ
    response.getWriter().write("Google!");
//    2 способ
    out.print("Yandex");
%>
<br>
<br>
<%--3 способ--%>
<%= request.getRequestURI()%>
<br>
<%= LocalDateTime.now()%>
<br>
<br>
<%--тут мы из заполненого параметра request получаем информацию и отображаем ее--%>
<%
    List<User> users = (List) request.getAttribute("users");
    User anUser = users.get(0);
%>
<b><%= anUser.getCountry()%></b>
</body>
</html>
