<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>Student List</h2>
<table>
    <tr><th>Name</th><th>Email</th><th>Courses</th><th>Actions</th></tr>
    <c:forEach items="${students}" var="s">
        <tr>
            <td>${s.name}</td>
            <td>${s.email}</td>
            <td><c:forEach items="${s.courses}" var="c">${c.name}, </c:forEach></td>
            <td><a href="/students/edit/${s.id}">Edit</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/students/add">Add New Student</a>
