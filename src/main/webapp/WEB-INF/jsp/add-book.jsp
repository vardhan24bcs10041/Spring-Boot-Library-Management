<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Catalog Book</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Catalog New Book</h1>
            <nav class="nav-links">
                <a href="/">Dashboard</a>
                <a href="/books">Back to Collection</a>
            </nav>
        </header>

        <div class="card" style="max-width: 600px; margin: 0 auto;">
            <form:form action="/books/save" method="post" modelAttribute="book">
                <div class="form-group">
                    <label>Book Title</label>
                    <form:input path="title" required="required" placeholder="e.g. The Great Gatsby" />
                </div>
                <div class="form-group">
                    <label>ISBN</label>
                    <form:input path="isbn" placeholder="13-digit ISBN" />
                </div>
                <div class="form-group">
                    <label>Genre</label>
                    <form:input path="genre" placeholder="e.g. Fiction, Science" />
                </div>
                <div class="form-group">
                    <label>Price ($)</label>
                    <form:input path="price" type="number" step="0.01" />
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <form:select path="author.id" required="required">
                        <form:option value="" label="-- Select Author --" />
                        <c:forEach var="author" items="${authors}">
                            <form:option value="${author.id}" label="${author.name}" />
                        </c:forEach>
                    </form:select>
                </div>
                <button type="submit" class="btn btn-primary" style="width: 100%;">Save Book</button>
            </form:form>
        </div>
    </div>
</body>
</html>
