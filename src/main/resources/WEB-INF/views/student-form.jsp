<form action="/students/save" method="post">
    <input type="hidden" name="id" value="${student.id}" />
    Name: <input type="text" name="name" value="${student.name}" />
    Email: <input type="email" name="email" value="${student.email}" />
    Courses:
    <c:forEach items="${courses}" var="c">
        <input type="checkbox" name="courses" value="${c.id}"
               <c:if test="${c in student.courses}">checked</c:if>> ${c.name}<br/>
    </c:forEach>
    <button type="submit">Save</button>
</form>
