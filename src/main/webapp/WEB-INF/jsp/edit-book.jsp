<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Edit Book Details</h1>
            <nav class="nav-links">
                <a href="/">Dashboard</a>
                <a href="/books">Back to Collection</a>
            </nav>
        </header>

        <div class="card" style="max-width: 600px; margin: 0 auto;">
            <form:form action="/books/save" method="post" modelAttribute="book">
                <form:hidden path="id" />
                <div class="form-group">
                    <label>Book Title</label>
                    <form:input path="title" required="required" />
                </div>
                <div class="form-group">
                    <label>ISBN</label>
                    <form:input path="isbn" />
                </div>
                <div class="form-group">
                    <label>Genre</label>
                    <form:input path="genre" />
                </div>
                <div class="form-group">
                    <label>Price ($)</label>
                    <form:input path="price" type="number" step="0.01" />
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <form:select path="author.id" required="required">
                        <c:forEach var="author" items="${authors}">
                            <form:option value="${author.id}" label="${author.name}" />
                        </c:forEach>
                    </form:select>
                </div>
                <button type="submit" class="btn btn-primary" style="width: 100%;">Update Book</button>
            </form:form>
        </div>
    </div>
</body>
</html>
