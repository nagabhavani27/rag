<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload Text</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Upload Text for Training</h1>
    <form action="api/upload" method="post">
        <textarea name="text" rows="10" cols="50" placeholder="Enter text to upload..."></textarea><br>
        <button type="submit">Upload</button>
    </form>
</body>
</html>
