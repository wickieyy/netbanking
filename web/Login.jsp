<%-- 
    Document   : Login.jsp
    Created on : Jul 8, 2019, 2:53:07 PM
    Author     : test
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/struts-dojo-tags" prefix="d"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="scriptsource.js"></script>    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet.css" />   
    </head>
    <body>
        <h4></h4>
        <div class="jumbotron">
            <h3>Login</h3>
            <s:actionmessage/>
            <form action="loginAction" method="post" validate="true">
                <label for="loginUsername">Username <span class="mandatory">*</span>:</label>
                <input name="userName" id="loginUsername" onblur="checkUsernameLogin();" placeholder="Enter Username"><span id="usernameLogin" class="errorMessage"></span></span><br>
                <label for="loginPassword">Password <span class="mandatory">*</span>:</label>
                <input type="password" name="password" id="loginPassword" placeholder="Enter Password"><span id="usernamePassword" class="errorMessage"></span></span><br> 
                <input type="submit" id="loginSubmitButton" value="Login" ><br>
            </form>
            <s:a href="register.jsp">New User? Register Here</s:a><br>
            <s:a href="forgotPassword.jsp">Forgot Password?</s:a>
        </div>
    </body>
</html>
