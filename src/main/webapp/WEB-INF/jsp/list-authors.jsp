<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authors List</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>${title != null ? title : 'Authors List'}</h1>
            <nav class="nav-links">
                <a href="/">Dashboard</a>
                <a href="/authors/add">Add New Author</a>
                <a href="/books">View Books</a>
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
                        <th>Name</th>
                        <th>Nationality</th>
                        <th>Birth Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="author" items="${authors}">
                        <tr>
                            <td>${author.id}</td>
                            <td>${author.name}</td>
                            <td>${author.nationality}</td>
                            <td>${author.birthDate}</td>
                            <td>
                                <a href="/authors/edit/${author.id}" class="btn btn-primary btn-sm">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
