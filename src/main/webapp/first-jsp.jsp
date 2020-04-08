<%@ page import="java.time.LocalDateTime" %>

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
</body>
</html>
