<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> <!-- Include Spring Form Tag Library -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Register Form</title>
<style type="text/css">
label {
    display: inline-block;
    width: 200px;
    margin: 5px;
    text-align: left;
}
input[type=text], input[type=password], select {
    width: 200px;
}
button {
    padding: 10px;
    margin: 10px;
}
.error {
    color: red;
    font-style: italic;
}
</style>
</head>
<body>
    <div align="center">
        <h2>User Register</h2>
        <!-- Form Tag with Correct Action -->
        <form:form action="/register1" method="post" modelAttribute="user">
            <!-- Full Name -->
            <form:label path="name">Full Name:</form:label>
            <form:input path="name" /><br/>
            <form:errors path="name" cssClass="error" /><br/>

            <!-- Email -->
            <form:label path="email">Email:</form:label>
            <form:input path="email" /><br/>
            <form:errors path="email" cssClass="error" /><br/>

            <!-- Password -->
            <form:label path="password">Password:</form:label>
            <form:password path="password" /><br/> <!-- Changed input to password for masking -->
            <form:errors path="password" cssClass="error" /><br/>

            <!-- Submit Button -->
            <button type="submit">Register</button>
        </form:form>
    </div>
</body>
</html>
