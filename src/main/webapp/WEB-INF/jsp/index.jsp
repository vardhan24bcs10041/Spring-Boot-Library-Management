<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Manager | Dashboard</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Library Management System</h1>
            <p>Welcome to your personal database manager.</p>
        </header>

        <nav class="nav-links">
            <a href="/authors">View Authors</a>
            <a href="/books">View Books</a>
            <a href="/authors/add">Add Author</a>
            <a href="/books/add">Add Book</a>
        </nav>

        <div class="grid">
            <div class="card">
                <h2>Manage Authors</h2>
                <p>Register new authors, track their nationalities, and view their bibliography.</p>
                <br>
                <a href="/authors" class="btn btn-primary">Go to Authors</a>
                <a href="/authors/with-books" class="btn btn-primary" style="margin-top: 10px; background: #9333ea;">Join Query: Authors with Books</a>
            </div>
            <div class="card">
                <h2>Manage Books</h2>
                <p>Catalog books, track ISBNs, genres, and pricing information.</p>
                <br>
                <a href="/books" class="btn btn-primary">Go to Books</a>
            </div>
        </div>
    </div>
</body>
</html>
