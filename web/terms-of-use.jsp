<%-- 
    Document   : terms-of-use
    Created on : Nov 11, 2021, 6:50:12 PM
    Author     : vivie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Terms of Use</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <!-- Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="tou.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">    
 
            <style>
           table {
                width: 100%;
                 background: url('img/bg007.jpg')no-repeat center fixed;     
              background-size: cover;
              }

            #myBtn {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 30px;
            z-index: 99;
            font-size: 18px;
            border: none;
            outline: none;
            background-color: red;
            color: white;
            cursor: pointer;
            padding: 15px;
            border-radius: 4px;
          }

            #myBtn:hover {
              background-color: skyblue;
            }

    </style>
    </head>
    
    <body>
        <button onclick="topFunction()" id="myBtn" title="Go to top"> <i class="fa fa-arrow-up " style="font-size:30px; background: transparent" ></i> </button>
        
        <script>
        var mybutton = document.getElementById("myBtn");
        window.onscroll = function() {scrollFunction()};
        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
        </script>
        
        <div>                      
            <div class="topMenu" style=" background: url('img/bg004.jpg')no-repeat center fixed; background-size: cover;">
                
                <center><h1 style="color: white; position: relative; top: 100px;font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav">
                    <li class="hMenu"><a href="home2.jsp" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> HOME </a></li>
                    <li class="hMenu"><a href="food.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> MENU </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp" class="hMenu" style="text-decoration: none; color: red;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> ABOUT US </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp#feedback" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> CONTACT US </a></li>
                    <li class="hMenu">    
                        <% 
                            if ( session.getAttribute("uname") == null){
                             %>
                           <a href="loginPg.jsp" class="hMenu"> LOG IN/REGISTER </a>  
                        <%
                            }
                            else{
                        %>
                            <a href="home.jsp" onclick="return confirm('Are you sure you want to log out?');" class="hMenu"> LOG OUT </a>
                        <%
                            }        
                        %>   
                    </li>
                </ul> 
                
                <p style="color: white; position: relative; left: 1200px;">
                
                 <%
                    if ( session.getAttribute("uname") == null){
                        out.print("Please log in!");
                    }
                    else{
                        out.print("Welcome back <br>" + session.getAttribute("uname"));
                    }
                %>
                
                </p>
                
                <div class="logoPic">
                    <img src="img/logom.jpg" alt="bigLogo" class="bigLogo">
                </div>
                
            </div>                
        </div>
        <div class="terms-of-use" style="font-family: 'Josefin Sans', sans-serif;">
            <p class="fs-2 text-center">Terms of Use</p>
            <p>
                Welcome to Group3 UCSI. This website and mobile application is owned and operated by Group3 UCSI SDN. BHD., 
                under business registration number 1101084-X. By signing up for Group3 UCSI mobile services or website (collectively the "Service") or any of the services of Group3 UCSI SDN. BHD. 
                ("Group3 UCSI") you are agreeing to be bound by the following terms and conditions ("Terms of Use"). 
                The Services offered by Group3 UCSI under the Terms of Use include various products and services to help you create and manage a Group3 UCSI account. 
                Any new features or tools which are added to the current Service shall be also subject to the Terms of Use.
            </p>
            <p>
                Group3 UCSI reserves the right to modify or replace any part of this Terms of Use by posting updates and changes to the Group3 UCSI website. 
                You are advised to check this Terms of Use periodically for changes that may impact you. 
                You may reject the changes by terminating your account. Your continued use of the Service after any such change takes effect constitutes your acceptance of the new Terms of Use.
            </p>
            <p>
                By accessing or using the Service, you agree that you have read, understood, and agree to be bound by these Terms of Use and our Privacy Policy, 
                whether or not you are a registered user of our Service.
            </p>
            <p>
                <strong>Group3 UCSI accounts</strong>
            </p>
            <div>
                <ol>
                    <li>You must sign up and create a Group3 UCSI account ("Account") to use and gain access to the Services by providing a valid phone number, 
                        a valid email address, and any other information indicated as required. You are responsible for the legality and accuracy of your Account information. 
                        Group3 UCSI may reject your application for an Account, for any reason, in our sole discretion.
                    </li>
                    <li>You acknowledge that Group3 UCSI will use the phone number and email address you provide as the primary method for communications.</li>
                    <li>You are responsible for keeping your PIN secure. Group3 UCSI cannot and will not be liable for any loss or damage from your failure to maintain the security of your Account and PIN.</li>
                    <li>You may never use another user's account without permission.</li>
                    <li>You are responsible for all activity and content (data, graphics, photos, links) that is uploaded under your Group3 UCSI account. You must not transmit any worms or viruses or any code of a destructive nature.</li>
                    <li>You will be responsible for any purchases and activities that are submitted tothis Account. You shall be bound by and responsible for all communications and online activity transmitted or conducted through the use of your Account.</li>
                    <li>You must notify Group3 UCSI immediately of any breach of security or unauthorised use of your Account. Group3 UCSI will not be liable for any losses caused by any unauthorised use of your Account.</li>
                    <li>Where a fraudulent or wrongful use of an Account is detected or suspected, we reserve the right to refuse, suspend or terminate the registration of individual and corporate member immediately at our discretion.</li>
                    <li>Please provide accurate, complete, and up-to-date information required for your Account. You may at any time change or update your Account information.</li>
                </ol>

            </div>    
        </div>
        <div class="btmMenu">                              
            <table>
                <colgroup>
                    <col span="2">
                    <col>
                </colgroup>                   
                <tr>
                    <th style="padding: 20px; margin: 20px;"> <h3 style="color: white"> GROUP 3 </h3> </th>                      
                    <th> </th>                     
                    <th style="padding-top: 20px; margin: 20px;"> <h4 style="color: white"> <br><br> Get in touch: </h4></th>                     
                </tr>                
                <tr>
                    <td style="padding: 20px; margin: 20px;"> <p style="color: white">
                          Our company aims to bring  &nbsp not only delicious, <br>
                          as well as healthy food to our customers.There <br>
                          are  &nbsp currently 5 branches  serving  &nbsp Malaysians <br> 
                          great &nbsp tasting chicken 365 days a year. As the <br>
                          No. 1 food and  leading QSR brand  &nbsp in Malaysia,<br>
                          we are constantly working  &nbsp to better serve our <br>
                          customers with great moments, and good food.
                          </p>
                    </td>                      
                    <td> 
                        <p style="color: white">
                            <a href="food.jsp" style="color: white; text-decoration: none;"> Order now </a> <br>
                            <a href="AboutUs.jsp#feedback" style="color: white; text-decoration: none;"> Contact us </a> <br>
                            <a href="food.jsp" style="color: white; text-decoration: none;"> Menu </a> <br>     
                        </p>
                    </td>                     
                    <td> 
                          &nbsp; &nbsp; <a href="https://twitter.com/TwitterFood" style="text-decoration: none;"><img src="img/twLogo.png" alt="twLogo" class="smLogo"> &nbsp; </a>
                          <a href="https://www.facebook.com/food" style="text-decoration: none;"> <img src="img/fb.png" alt="fbLogo" class="smLogo"> &nbsp; </a>
                          <a href="https://www.linkedin.com/company/food" style="text-decoration: none;"> <img src="img/in.png" alt="linkedLogo" class="smLogo">&nbsp; </a>
                          <br> <br> <br> <br> <br>
                      </td>
                </tr>                   
                    <tr>                       
                        <td colspan="2"> <p style="color: white;"> <b> <a href="terms-of-use.jsp" style="text-decoration: none; color: white;"> &nbsp; &nbsp; Terms of use </a> &nbsp; &nbsp; | <a href="PrivacyPolicy.jsp" style="text-decoration: none; color: white;"> &nbsp; &nbsp; Privacy Policy </a> &nbsp; &nbsp; | </b>  &nbsp; &nbsp; &copy Copyright 2021 Group 3 UCSI </p> </td>
                    </tr>                 
            </table>               
        </div>
        
        
    </body>
</html>
