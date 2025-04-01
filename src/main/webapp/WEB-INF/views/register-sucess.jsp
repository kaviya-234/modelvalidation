<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Register Success</title>
<style type="text/css">
    span {
        display: inline-block;
        width: 200px;
        text-align: left;
    }
</style>
</head>
<body>
    <div align="center">
        <h2>Register Success</h2>
        <p><span>Full Name:</span> <span>${user.name}</span></p>
        <p><span>Email:</span> <span>${user.email}</span></p>
        <p><span>Password:</span> <span>${user.password}</span></p>
    </div>
</body>
</html>
