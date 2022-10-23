<%-- 
    Document   : PrivacyPolicy
    Created on : Nov 11, 2021, 6:50:29 PM
    Author     : vivie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Privacy Policy</title>
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
        
        <!--SAME STYLES AS 'home.jsp' WAS USED -->
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
         <!--SAME FUNCTION USED IN 'home.jsp' THIS IS THE GO TO TOP BUTTON-->
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
                <center><h1 style="color: white; position: relative; top: 100px; font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav">
                    <li class="hMenu"><a href="home2.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px; "> HOME </a></li>
                    <li class="hMenu"><a href="food.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> MENU </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp" class="hMenu" style="text-decoration: none; color: red;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> ABOUT US </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp#feedback" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> CONTACT US </a></li>
                    <li class="hMenu">    
                        <% 
                            if (session.getAttribute("uname") == null){
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
            <p class="fs-2 text-center">Privacy Policy</p>
            <p>
                Welcome to Group3 UCSI. This Privacy Policy is set by Group3 UCSI SDN. BHD., 
                under business registration number 1101084-X in accordance with the Malaysian Personal Data Protection Act 2010 (“PDPA”) to help you better understand how we collect, use and store your information.                
                Since technology and privacy laws are always changing, we may occasionally update this policy.
            </p> 
            <p>
                By signing up for Group3 UCSI mobile services or website (collectively the “Service”) or any of the services of Group3 UCSI SDN. BHD. (“Group3 UCSI”) you agree to the practices and policies set forth in this Privacy Policy, 
                and you hereby acknowledge and consent to our collection, use, and sharing of your information as described in this policy. 
                If we add any new features or tools to our Services, they will also be subject to this policy.
            </p>
            <p>
                We reserve the right to modify or replace any part of this policy. You are bound by any changes to the Privacy Policy when you use the Service after such changes have been first posted
            </p>
            <p>
                <strong>a. Policy Cover</strong>
            </p>
            <div>
                <ol>
                    <li>
                        This Privacy Policy covers our treatment of personally identifiable information (“Personal Information”) that we gather when you are accessing or using our Service. 
                        This policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage, even if you have accessed the websites or services of those companies through our Service.
                    </li>
                    <li>
                        We do not have the intention to collect information from anyone under the age of 18. Our Service isdirected to people at the age of at least 18 years old or older. 
                        If you are under 18, please do not attempt to register for the Service or send any information about yourself to us, including your name, address, telephone number, or email address. No one under age 18 may provide any personal information to us or on the Service. 
                        If we learn that we have collected personal information from a child under age 18 without verification of parental consent, we will delete that information as quickly as possible.
                    </li>
                </ol>
            </div>
             <p>
                <strong>b. What information do we collect?</strong>               
            </p>
            <div>
                <ol>
                    <li>
                        We collect and process your Personal Information only with your knowledge and consent when you use our Service and make service enquiries, or when you respond to communications from us and other information collected on signing up or through surveys.
                    </li>
                    <li>
                        You can choose not to provide us with any or all of the information we specify or request, 
                        but then you may not be able to sign up with us or take advantage of some or all of our features like providing feedback, or access to customised content that may include contests, advertising, coupons and promotions.
                    </li>
                    <li>
                        When you access our Service, we automatically receive and record information on our server logs from your browser including your IP address, “cookie” information, 
                        and the page you requested. “Cookies” are identifiers we transfer to your computer or device that allow us to recognise your browser or device and tell us how and when pages in our Service are visited and by how many people. 
                        You may be able to change the preferences on your browser or device to prevent or limit your computer’s or device’s acceptance of cookies, but doing so may prevent you from taking advantage of our Service’s best features.
                    </li>
                    <li>
                        When we collect usage information (such as the numbers and frequency of visitors to the Service and to which pages within the Service), 
                        we only use such data in aggregate form, in a manner that assures your anonymity. We may provide this aggregate usage information to our partners; 
                        our partners may use such information to understand how often and in what ways people use our Service, so that our partners, too, can endeavor to provide you with an optimal online experience.
                    </li>
                </ol>
            </div>
             <p>
                <strong>c. What we don't do with your Personal Information</strong>               
            </p>
            <div>
                <ol>
                    <li>
                        We do not and will never share, disclose, sell, rent or otherwise provide personal information to other companies for the marketing of their own products or services.
                    </li>
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
