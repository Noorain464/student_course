<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Data</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <h1>View Data</h1>
</header>

<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="data" items="${dataList}">
        <tr>
            <td>${data.name}</td>
            <td>${data.description}</td>
            <td>
                <a href="edit.jsp?id=${data.id}">Edit</a>
                <a href="delete.jsp?id=${data.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<footer>
    <p>&copy; 2025 Your Company</p>
</footer>
</body>
</html>
