<%-- 
    Document   : index
    Created on : Nov 11, 2021, 6:38:02 PM
    Author     : vivie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>About Us</title>
                        <!-- All the link for CSS and Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="about.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <%-- This button will go to the top page when user is at the bottom page  --%>
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
            <%-- Top Navigation Bar --%>
            <div class="topMenu">
                <center><h1 style="color: white; position: relative; top: 100px; font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav">
                    <li class="hMenu"><a href="home2.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> HOME </a></li>
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
            <div>
                <%-- Details of restaurant --%>
            <img src="img/workinghour.jpg" class="img-fluid" alt="background">
            </div>
        <div class="row-about-us">
            <div class="column-about-us">
              <img src="img/number1.jpg" alt="number1" style="width:100%">
              <div class="overlay-about-us">
                <div class="text-about-us">Claiming to be Number 1 Food Website</div>
              </div>
            </div>
            <div class="column-about-us">
              <img src="img/history.png" alt="history" style="width:100%">
              <div class="overlay-about-us">
                <div class="text-about-us">Since 2020</div>
              </div>
            </div>
            <div class="column-about-us">
              <img src="img/freshly.png" alt="freshly" style="width:100%">
              <div class="overlay-about-us">
                <div class="text-about-us">Freshly Made</div>
              </div>
            </div>
            <div class="column-about-us">
              <img src="img/world-wide.png" alt="acknowledged" style="width:100%">
              <div class="overlay-about-us">
                <div class="text-about-us">Acknowledged World-Wide</div>
              </div>
            </div>
            <div class="column-about-us">
              <img src="img/fast.png" alt="fast-serving" style="width:100%">
              <div class="overlay-about-us">
                <div class="text-about-us">Fast Serving</div>
              </div>
            </div>
        </div>
        <div class="container-fluid">
            <%-- Feedback Form  --%>
            <h1  id="feedback" class="text-white" style="font-family: 'Josefin Sans', sans-serif;">Contact us</h1>
            <form name="contact" onsubmit="return contactUsForm()">
                <div class="row">
                    <div class="col">
                      <input type="text" class="form-control" placeholder="First name" aria-label="First name" id="fname">
                    </div>
                    <div class="col">
                      <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" id="lname">
                    </div>
                </div>
                <div class="mb-3">
                  <br>
                  <label for="InputEmail1" class="form-label text-white" >Email address <span style="color:red">*</span> </label>
                  <input type="email" class="form-control" id="InputEmail" name="emailInput" aria-describedby="emailHelp" required>
                  <div id="emailHelp" class="form-text" style="color: white">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <label for="phonenum" class="form-label text-white">Phone Number</label>
                    <input type="text" class="form-control" id="phonenum" placeholder="012 3456789">
                </div>
                
                <label for="Category" class="form-label text-white" style="color: black">Category <span style="color:red">*</span> </label>
                <select  style="color: black"  aria-label="Default select example" id="category" required>
                    <option selected> </option>
                    <option value="1"  style="color: black">Feedback</option>
                    <option value="2"  style="color: black">Suggestions</option>
                    <option value="3"  style="color: black">Compliments</option>
                    <option value="3"  style="color: black">Complaints</option>
                    <option value="3"  style="color: black">Others</option>
                </select>
                <div class="mb-3">
                    <br>
                    <label for="Subject" class="form-label text-white">Subject</label>
                    <input type="text" class="form-control" id="subject">
                </div>
                <div class="mb-3">
                    <label for="messages" class="form-label text-white">Messages <span style="color:red">*</span> </label>
                    <textarea class="form-control" id="Messages" rows="6" name="msg" required></textarea>
                </div>
                <input type="submit" value="Submit" class="btn btn-primary">

                <!-- POP OUT WHEN USER CLICKED ON SUBMIT THE FORM-->
                <script>
                    function contactUsForm() {
                        //CREATING VARIABLES FOR EMAIL, MSG, AND CATEGORY ACCORDING TO THE VALUE INPUT BY USER
                        var emailInput = document.forms["contact"]["emailInput"].value;
                        var msg = document.forms["contact"]["msg"].value;
                        var category = document.forms["contact"]["category"].value;
                        //IF THE REQUIRED INPUTS ARE NOT EMPTY
                        if (emailInput !== null  & msg !== null & category != null)
                        {
                            //ADD SENDING ALGORITHM HERE
                            //SHOW THE SUCCESS MESSAGE
                            alert("Your feedback sent successfully!");
                        }
                        else{
                            
                        }                    
                    }
                </script>
            </form>
            
        </div>
        <div class="container-fluid">
            <p class="fs-1 fw-bold text-white" >Our Location</p>
            <%-- Location embedded with google map  --%>
            <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.055115961187!2d101.73132891522113!3d3.0799620977571545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc35a3a63ae3b3%3A0xad98e9962494aca3!2sUCSI%20University!5e0!3m2!1sen!2smy!4v1636017885172!5m2!1sen!2smy" height="720" style="border:0; width:100%;" allowfullscreen=""></iframe></p>
        </div>
        <div class="btmMenu">     
            <%-- Footer --%>
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
                            <a href="#feedback" style="color: white; text-decoration: none;"> Contact us </a> <br>
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
