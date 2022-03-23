<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        <%@include file="form.css"%>
    </style>
</head>
<body>
<form:form action="saveUser" modelAttribute="user" class="decor">
    <div class="form-inner">
        <h3>Write your info</h3>
        <form:hidden path="id"/>
        <form:input placeholder="Name" path="name"/>
        <form:input placeholder="Surname" path="surname"/>
        <form:input placeholder="Salary" path="salary"/>
        <input type="submit" value="OK">
    </div>
</form:form>
</body>
</html>