<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Data</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <h1>Delete Data</h1>
</header>

<p>Are you sure you want to delete this data?</p>

<form action="deleteServlet" method="POST">
    <input type="hidden" name="id" value="${data.id}">
    <button type="submit">Yes, Delete</button>
    <a href="view.jsp">Cancel</a>
</form>

<footer>
    <p>&copy; 2025 Your Company</p>
</footer>
</body>
</html>
