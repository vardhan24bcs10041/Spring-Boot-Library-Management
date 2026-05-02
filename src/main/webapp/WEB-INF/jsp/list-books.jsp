<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Books List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Books Collection</h1>
            <nav class="nav-links">
                <a href="/">Dashboard</a>
                <a href="/books/add">Catalog New Book</a>
                <a href="/authors">View Authors</a>
            </nav>
        </header>

        <c:if test="${success != null}">
            <div class="alert alert-success">${success}</div>
        </c:if>

        <div class="card">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>ISBN</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Author</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td>${book.id}</td>
                            <td>${book.title}</td>
                            <td>${book.isbn}</td>
                            <td>${book.genre}</td>
                            <td>$${book.price}</td>
                            <td>${book.author.name}</td>
                            <td>
                                <a href="/books/edit/${book.id}" class="btn btn-primary btn-sm">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
