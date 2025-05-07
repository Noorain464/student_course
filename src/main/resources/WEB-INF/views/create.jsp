<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Data</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <h1>Create New Data</h1>
</header>

<form action="createServlet" method="POST">
    <div>
        <label for="dataName">Name:</label>
        <input type="text" id="dataName" name="dataName" required>
    </div>

    <div>
        <label for="dataDescription">Description:</label>
        <textarea id="dataDescription" name="dataDescription" required></textarea>
    </div>

    <div>
        <button type="submit">Create Data</button>
    </div>
</form>

<footer>
    <p>&copy; 2025 Your Company</p>
</footer>
</body>
</html>
