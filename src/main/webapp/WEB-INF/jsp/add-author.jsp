<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Author</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Add New Author</h1>
            <nav class="nav-links">
                <a href="/">Dashboard</a>
                <a href="/authors">Back to List</a>
            </nav>
        </header>

        <div class="card" style="max-width: 600px; margin: 0 auto;">
            <form:form action="/authors/save" method="post" modelAttribute="author">
                <div class="form-group">
                    <label>Author Name</label>
                    <form:input path="name" required="required" placeholder="Enter full name" />
                </div>
                <div class="form-group">
                    <label>Nationality</label>
                    <form:input path="nationality" placeholder="e.g. American, British" />
                </div>
                <div class="form-group">
                    <label>Birth Date</label>
                    <form:input path="birthDate" type="date" />
                </div>
                <button type="submit" class="btn btn-primary" style="width: 100%;">Save Author</button>
            </form:form>
        </div>
    </div>
</body>
</html>
