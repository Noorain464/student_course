<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <h1>Edit Data</h1>
</header>

<form action="editServlet" method="POST">
    <input type="hidden" name="id" value="${data.id}">

    <div>
        <label for="dataName">Name:</label>
        <input type="text" id="dataName" name="dataName" value="${data.name}" required>
    </div>

    <div>
        <label for="dataDescription">Description:</label>
        <textarea id="dataDescription" name="dataDescription" required>${data.description}</textarea>
    </div>

    <div>
        <button type="submit">Update Data</button>
    </div>
</form>

<footer>
    <p>&copy; 2025 Your Company</p>
</footer>
</body>
</html>
