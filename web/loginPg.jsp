<%-- 
    Document   : loginPg
    Created on : Nov 9, 2021, 11:39:21 AM
    Author     : vivie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <!-- All the link for CSS and Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="login.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        
    </head>
    <body>
        <div class="loginCard">
        <img src="img/icon.jpg" class="leftLoginImg" alt="leftLoginImg">
        
            <div class="rightLogin">
                <!-- Post the information -->
                <form action="logIn" method="post">
                    <h1 id="logintitle">LOGIN</h1>
                    <div class="login1">

                        <i class="fa fa-user icon"></i>
                        <input type="text" id="uname" name="name" placeholder="Username" required> <br> <br>

                        <i class="fa fa-key icon"> </i>
                        <input type="password" id="upw" name="password" placeholder="Password" required> <br> <br>
                        <!-- Direct to respective webpage -->
                        <a href="forgotpw.html" id="forgetPw"> Forgot Password? </a> <br>
                    </div>
                    
                    <div class="login2">
                    <input type="button" id="bckbtn" onclick="window.location.href='home.jsp';" value="Back" />
                    <input type="submit" id="loginbtn" value="Log In">
                    </div>
                    
                    <p id="newuser"> New user? <a href="reg.jsp"> Register here </a> </p>
                    
                </form>
            </div>

        
        </div>
    </body>
</html>
