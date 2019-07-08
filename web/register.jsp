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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="scriptfile.js"></script>    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet.css" />    
        <title>Welcome to Online Banking</title>
    </head>
    <body>
        <h4></h4>
        <div class="jumbotron logindiv">
            <h3>Register</h3>
            <s:actionmessage/>
            <s:form action="registerAction" method="post" validate="true">
                <s:textfield name="userName" id="loginUsername" onblur="checkUsernameLogin();" label="Username" placeholder="Enter Username"/>
                <s:textfield name="accountNumber" id="accountNumber" label="Account Number" placeholder="Enter Account Number"/>
                <s:textfield name="cifNumber" id="cifNumber" label="CIF Number" placeholder="Enter CIF Number"/>
                <s:textfield name="branchCode" id="branchCode" label="Brannch Code" placeholder="Enter Branch Code"></s:textfield>
                <s:password name="password" id="loginPassword" label="Password"placeholder="Enter Password"/>
                <s:password name="confirmPassword" id="confirmPassword" label="Confirm Password" placeholder="Enter Confirm Password"/>     
                <s:textfield name="mobileNumber" id="mobileNumber" label="Mobile Number" placeholder="Enter Mobile Number"></s:textfield>
                <s:select name="securityQuestion" headerKey="-1"  title="Select your Security Question" id="securityQuestion" headerValue="Select Security Question" label="Select your Security Question" list="#{'1':'What is your first pet name?','2':'What is your First class teacher\\'s Name?'}"/>
                <s:textfield name="securityAnswer" id="securityAnswer" label="Security Answer" placeholder="Enter Security Answer"></s:textfield>                                
                <d:submit id="loginSubmitButton" value="Register"/>
            </s:form>
            <s:a href="register.jsp">New User? Register Here</s:a><br>
            <s:a href="forgotPassword.jsp">Forgot Password?</s:a>
        </div>
    </body>
</html>
