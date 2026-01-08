<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students</title>
    <link rel="stylesheet" href="/static/style.css">
</head>
<body>
<h1>Students</h1>
<c:forEach var="student" items="${students}">
    <div>
        <p>${student.name}</p>
        <a href="/students/edit/${student.id}">Edit</a>
    </div>
</c:forEach>
</body>
</html>

