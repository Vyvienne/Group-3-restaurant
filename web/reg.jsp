<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        
        <!-- All the link for CSS and Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="reg.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        
    </head>
    
    <body>
  
        <div class="loginCard">
        <img src="img/regLogo.png" class="leftLoginImg" alt="leftRegImg">
        
            <div class="rightLogin">
                <!-- Post the information -->
                <form action="register" method="post">
                    <h1 id="logintitle">REGISTER</h1>
                    <div class="login1">

                        <i class="fa fa-user icon"></i>
                        <input type="text" id="lname" name="uname" placeholder="Username" required> <br> <br>
                        
                        <i class="fa fa-envelope icon"></i>
                        <input type="text" id="email" name="email" placeholder="Email" required> <br> <br>                        
                        
                        <i class="fa fa-key icon"> </i>
                        <input type="password" id="upw1" name="pw" placeholder="Password" required> <br> <br>
                  

                    </div>
                    
                    <div class="reg2">
                    <input type="button" id="bckbtn" onclick="window.location.href='loginPg.jsp';" value="Back" />
                    <input type="submit" id="loginbtn" value="Register">
                    </div>
                    
                    
                </form>
            </div>

        
        </div>
    </body>
</html>
