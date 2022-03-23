<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        <%@include file="table.css"%>
    </style>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.salary}</td>
            <td>
                <div class="form-inner">
                    <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
                </div>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4">
            <input type="button" value="Add" onclick="window.location.href = 'addNewUser'"/>
        </td>
    </tr>
</table>
</body>
</html>