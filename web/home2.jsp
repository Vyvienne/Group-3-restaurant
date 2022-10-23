<%-- 
    Document   : home
    Created on : Nov 9, 2021, 5:39:50 PM
    Author     : vivie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- All the link for CSS and Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">    
        
        <title> Home </title>
    
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
        <div class="Homescreen" style="position: relative; top: -10px">
            <%-- Top Navigation Bar --%>
            <div class="topMenu">
                
                <center><h1 style="color: white; position: relative; top: 100px;  font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav" >
                    <%-- Direct to respective webpage --%>
                    <li class="hMenu" ><a href="home2.jsp" class="hMenu" style="text-decoration: none; color: red; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> HOME </a></li>
                    <li class="hMenu"><a href="food.jsp" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> MENU </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> ABOUT US </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp#feedback" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> CONTACT US </a></li>
                    <li class="hMenu">    
                        <% 
                            if (session.getAttribute("uname") == null){
                             %>
                           <a href="loginPg.jsp" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> LOG IN/REGISTER </a>  
                        
                        <%
                            }
                            else{
                        %>
                            <a href="home.jsp" onclick="return confirm('Are you sure you want to log out?');" class="hMenu" style="text-decoration: none; background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> LOG OUT </a>
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
            
            
            <div class="midMenu">
                <%-- Slide show --%>
                <div class="mainImg">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                          <a href="food.jsp"><img src="img/slide1.jpg" class="d-block w-100" style="background-repeat: no-repeat; background-size: auto;" alt="showCase1"></a>
                      </div>
                      <div class="carousel-item">
                          <a href="food.jsp"><img src="img/slide2.jpg" class="d-block w-100" style="background-repeat: no-repeat; background-size: auto;" alt="showCase2"> </a>
                      </div>
                      <div class="carousel-item">
                          <a href="food.jsp"><img src="img/slide3.jpg" class="d-block w-100" style="background-repeat: no-repeat; background-size: auto;" alt="showCase3"> </a>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
             
             
  <div class="bestSellerTab">
   
                <h2 class="bestS" style="  font-family: 'Josefin Sans', sans-serif;">BEST SELLER</h2>
                <div class="row row-cols-1 row-cols-md-3" style="">
                <div class="col mb-4">
                  <div class="card h-100">
                      <a href="food.jsp" style="text-decoration: none;"> <img src="img/a1.jpg" class="bestsPic" style="background-repeat: no-repeat; background-size: auto;" alt="set1"> </a>
                    <div class="best123">
                        <a href="food.jsp" style="text-decoration:none; color: black; font-family: 'Josefin Sans', sans-serif; ">
                        <b>Healthy Sandwich</b> <br>                       
                        A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread.
                     </a>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                  <div class="card h-100">
                      <a href="food.jsp" style="text-decoration: none;"> <img src="img/a2.jpg" class="bestsPic" style="background-repeat: no-repeat; background-size: auto;" alt="set2"> </a>
                    <div class="best123"> 
                        <a href="food.jsp" style="text-decoration:none; color: black; font-family: 'Josefin Sans', sans-serif;">
                            <b>Super salad</b> <br>
                        A salad is a dish consisting of mixed pieces of food, typically with at least one raw ingredient. Very healthy food and highly recommended.                 
                        </a>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                    <div class="card h-100"> 
                        <a href="food.jsp" style="text-decoration: none;"> <img src="img/a3.jpg" class="bestsPic" style="background-repeat: no-repeat; background-size: auto;" alt="set3"> </a>
                    <div class="best123">
                        <a href="food.jsp" style="text-decoration:none; color: black; font-family: 'Josefin Sans', sans-serif;">
                        <b>Nasi Lemak </b><br>
                        Nasi lemak is a dish originating in Malay cuisine that consists of fragrant rice cooked in coconut milk and pandan leaf<br> 
                       </a>
                    </div>
                  </div>
                </div>   
              </div>
              </div>
                    
                
                <div class="Foodtab">       
                  <img src="img/cover.jpg" alt="engineer" style="width: 100%; height: 500px;">
                  
                  <h1 class="browseT" style="  font-family: 'Josefin Sans', sans-serif;">Browse for food! </h1>

                        <div class="sibling-fade">
                            <a href="food.jsp" style="text-decoration: none" class="foodIcon"> <br> Food</a>
                            <a href="food.jsp" style="text-decoration: none" class="drinkIcon"> <br> Beverages</a>
                            <a href="food.jsp" style="text-decoration: none" class="breadIcon"> <br> Bakery</a>
                            <a href="food.jsp" style="text-decoration: none" class="snackIcon"> <br> Snacks</a>
                        </div>
                </div>
            
            </div> <!-- This is end of mid menu -->
            
            <div class="btmMenu">
                
                <%-- Footer --%>
                <table>
                    <colgroup>
                      <col span="2">
                      <col >
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
            
        </div>
        
        
        
    </body>
    
</html>
