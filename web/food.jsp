<!DOCTYPE html>
<html>
    <head>
        <title>Food Menu</title>
        <!-- INCLUDES ALL THE REFERENCES -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="food.css">
        <link rel="stylesheet" href="cart.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">   

        <!--STYLE OF TABLE-->
        <style>     
        table {
              width: 100%;
               background: url('img/bg007.jpg')no-repeat center fixed;     
            background-size: cover;
            }
            
          /*THIS BUTTON GO TO TOP BUTTON*/
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
        
        <!-- RUN THE CODE "topFunction()" WHEN USER CLICKED ON THE BUTTON-->
        <button onclick="topFunction()" id="myBtn" title="Go to top"> <i class="fa fa-arrow-up " style="font-size:30px; background: transparent" ></i> </button>
        
        <!-- JAVA SCRIPT IS USED TO SEND USER TO TOP -->
        <script>
        var mybutton = document.getElementById("myBtn");
        window.onscroll = function() {scrollFunction()};

        function scrollFunction() {
                    //WHEN USER SCROLLED DOWN OVER 20px, THE BUTTON WILL SHOW UP
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
              //ELSE IT WILL BE EMPTY
            mybutton.style.display = "none";
          }
        }
        function topFunction() {
                //SET THE USER VIEW TO THE TOP, THAT IS 0
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
        </script>
        
        <div>
        <div class="topMenu">
                
                <center><h1 style="color: white; position: relative; top: 100px; font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav">
                    <li class="hMenu"><a href="home2.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> HOME </a></li>
                    <li class="hMenu"><a href="food.jsp" class="hMenu" style="text-decoration: none; color: red;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> MENU </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> ABOUT US </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp#feedback" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> CONTACT US </a></li>
                    
                    
                    <!-- THIS PART OF THE MENU BAR WILL SHOW 'LOG IN/REGISTER' WHEN THERE IS NO USERNAME RECEIVED FROM SESSION, THAT IS THROUGH THE "logIn.java"-->
                    
                    <li class="hMenu">    
                        <% 
                            //IF THERE IS NO USERNAME
                            if (session.getAttribute("uname") == null){
                        %>
                           <a href="loginPg.jsp" class="hMenu"> LOG IN/REGISTER </a>  
                        
                        <%
                            }//ELSE
                            else{
                        %>
                        <!-- FOR THE CASE WHEN THE USER IS LOGGED IN, 'LOG OUT' WILL BE SHOWN IN THE MENU BAR, AND POP OUT CONFIRMATION WILL COME OUT WHEN THE USER CLICKED ON LOG OUT-->
                            <a href="home.jsp" onclick="return confirm('Are you sure you want to log out?');" class="hMenu"> LOG OUT </a>
                            <!-- WHICH LEADS THE USER TO 'home.jsp' WITHOUT TRANSFERRING THE NAME OF USER (WHICH WOULD RESET THE USERNAME TO NULL)-->
                        <%
                            }        
                        %>   
                    </li>      
                </ul> 
                
                <p style="color: white; position: relative; left: 1200px;">
                <!-- THIS IS A SMALL PARAGRAPH SHOWING WELCOME MESSAGE TO USER, WHEN THE USER DID NOT LOG IN, IT WILL SHOW 'Please log in!'-->
                 <%
                    if ( session.getAttribute("uname") == null){
                        out.print("Please log in!");
                    }
                    //WHEREAS WHEN THE USER IS LOGGED IN, IT WILL SHOW THIS MESSAGE INSTEAD
                    else{
                        out.print("Welcome back <br>" + session.getAttribute("uname"));
                    }
                %>
                
                </p>
                
                <img src="img/logom.jpg" alt="bigLogo" class="bigLogo">
        
                
                
            </div>
            </div>
   <h1 style="color: white; position: relative; top: 50px; font-family: 'Josefin Sans', sans-serif;"> FOOD MENU </h1>
            <br>
            <br>
            
  
<script>
var cart = {
  // THIS IS THE PROPERTIES OF THE ITEMS IN CARTS
  hPdt : null, // HTML products list        
  hItems : null, // HTML current cart           
  items : {}, // Current items in cart
  iURL : "img/", // Product image URL folder

  save : () => {
      //JSON HERE IS USED TO CONVERT THE ITEMS LISTED IN 'cart' INTO STRING, AND WILL BE STORED IN LOCALSTORAGE
    localStorage.setItem("cart", JSON.stringify(cart.items));
  },

  // THIS FUNCTION IS USED TO LOAD CART FROM LOCALSTORAGE
  load : () => {
    cart.items = localStorage.getItem("cart");
    //SHOW NOTHING WHEN THERE IS NO ITEMS IN THE CART
    if (cart.items == null) { cart.items = {}; }
    //AND CONVERT JSON STRINGS INTO JS OBJECT WHEN THERE IS ITEMS IN THE CART
    else { cart.items = JSON.parse(cart.items); }
  },

  // THIS FUNCTION IS USED TO DELETE ALL THE ITEMS IN CART
  nuke : () => {
    if (confirm("Empty cart?")) {
      cart.items = {};
      localStorage.removeItem("cart");
      cart.list();
    }
  },

  //INITIALIZE THE CODE
  init : () => {
    //GETTING THE ITEMS USING THE ID ASSIGNED, AS LISTED IN products.js
    cart.hPdt = document.getElementById("cart-products");
    //GETTING THE ITEMS IN THE CURRENT CART
    cart.hItems = document.getElementById("cart-items");

    // DRAW PRODUCTS LIST
    cart.hPdt.innerHTML = "";
    //CREATE p,item, AND part
    let p, item, part;
    
    for (let id in products) {
      //THE DETAILS OF PRODUCTS
      p = products[id];
      item = document.createElement("div");
      item.className = "p-item";
      //ADD THE ITEM TO THE PAGE
      cart.hPdt.appendChild(item);

      //ADD THE PRODUCT IMAGE
      part = document.createElement("img");
      //THE src OF IMAGE IS THE 'img/...' CAUSE iURL HERE IS "img"
      part.src = cart.iURL + p.img;
      part.className = "p-img";
      //ADD PART TO ITEM
      item.appendChild(part);

      //PRODUCT NAME
      part = document.createElement("div");
      part.innerHTML = p.name;
      part.className = "p-name";
      //ADD PART TO ITEM
      item.appendChild(part);

      //PRODUCT DESCRIPTION
      part = document.createElement("div");
      part.innerHTML = p.desc;
      part.className = "p-desc";
      //ADD PART TO ITEM
      item.appendChild(part);

      //PRODUCT PRICE
      part = document.createElement("div");
      part.innerHTML = "RM " + p.price;
      part.className = "p-price";
      //ADD PART TO ITEM
      item.appendChild(part);

      //ADD TO CART
      part = document.createElement("input");
      part.type = "button";
      part.value = "Add to Cart";
      part.className = "cart p-add";
      //ADD THE ID TO THE CARD WHEN CLICKED ON THE PART
      part.onclick = () => { cart.add(id); };
      //ADD PART TO ITEM
      item.appendChild(part);
    }

    //LOAD CART FROM PREVIOUS SESSION
    cart.load();

    //LIST CURRENT CART ITEMS
    cart.list();
  },

  //LIST CURRENT CART ITEMS (IN HTML)
  list : () => {
    //RESET
    cart.hItems.innerHTML = "";
    let item, part, pdt;
    let empty = true;
    for (let key in cart.items) {
      if(cart.items.hasOwnProperty(key)) { empty = false; break; }
    }

    //CART IS EMPTY
    if (empty) {
      item = document.createElement("div");
      item.innerHTML = "Item name and Quantity:";
      cart.hItems.appendChild(item);
    }

    //CART IS NOT EMPTY - LIST ITEMS
    else {
     item = document.createElement("div");
        item.innerHTML = "Item name and Quantity:";
        cart.hItems.appendChild(item);
      let p, total = 0, subtotal = 0;
      for (let id in cart.items) {
        
        //ITEM
        p = products[id];
        item = document.createElement("div");
        item.className = "c-item";
        //ADD ITEM TO CURRENT CART
        cart.hItems.appendChild(item);

        // NAME
        part = document.createElement("div");
        part.innerHTML = p.name;
        part.className = "c-name";
        //ADD PART(NAME) TO ITEM
        item.appendChild(part);

        // QUANTITY
        part = document.createElement("input");
        part.type = "number";
        part.min = 0;
        part.value = cart.items[id];
        part.className = "c-qty";
        part.onchange = function () { cart.change(id, this.value); };
        //ADD PART(QUANTITY) TO ITEM
        item.appendChild(part);
        
        // REMOVE
        part = document.createElement("input");
        part.type = "button";
        part.value = "Delete";
        part.className = "c-del cart";
        //REMOVE THE ID WHEN CLICKED
        part.onclick = () => { cart.remove(id); };
        //ADD PART(SUBTOTAL) TO ITEM
        item.appendChild(part);
        // SUBTOTAL
        subtotal = cart.items[id] * p.price;
        total += subtotal;
      }

      // TOTAL AMOUNT
      item = document.createElement("div");
      item.className = "c-total";
      item.id = "c-total";
      item.innerHTML ="TOTAL: RM " + total;
      //ADD THE ITEM(TOTAL AMOUNT) INTO CURRENT CART
      cart.hItems.appendChild(item);

      
      item = document.createElement("input");
      item.type = "button";
      item.value = "Empty Cart";
      item.onclick = cart.nuke;
      item.className = "c-empty cart";
      //ADD THE ITEM(EMPTY CART BUTTON) INTO THE CURRENT CART BAR (RIGHT SIDE BAR)
      cart.hItems.appendChild(item);

      item = document.createElement("input");
      item.type = "button";
      item.value = "Checkout";
      item.onclick = cart.checkout;
      item.className = "c-checkout cart";
      //ADD THE ITEM(CHECKOUT BUTTON) INTO THE CURRENT CART BAR (RIGHT SIDE BAR)
      cart.hItems.appendChild(item);
    }
  },

  //ADD ITEM INTO CART
  add : (id) => {
      //WHEN THE CART IS EMPTY, THE NUMBER WILL START FROM ONE
    if (cart.items[id] == undefined) { cart.items[id] = 1; }
    //ELSE IT WILL INCREMENT WHEN CLICKED
    else { cart.items[id]++; }
    //UPDATE CURRENT CART
    cart.save(); cart.list();
  },

  //CHANGE QUANTITY (WHEN THERE IS ADDING/REMOVING OF ITEMS)
  change : (pid, qty) => {
      //REMOVE THE ID, AND THE QTY (BASICALLY REMOVE THE INTERFACE)
    // WHEN THE QYY IS LESS THAN OR EQUAL TO 0
    if (qty <= 0) {
      delete cart.items[pid];
      //UPDATE CURRENT CART
      cart.save(); cart.list();
    }

    //OR UPDATE TOTAL ONLY
    else {
      cart.items[pid] = qty;
      var total = 0;
      //THE TOTAL OF MONEY NEEDED TO PAY IS CALCULATED BY TOTAL + (NUMBER OF ITEMS IN CART BY THEIR ID * THEIR PRICE ACCORDING TO THEIR ID)
      for (let id in cart.items) {
        total += cart.items[id] * products[id].price;
        document.getElementById("c-total").innerHTML ="TOTAL: RM " + total;       
      }
    }
  },

  //REMOVE ITEM FROM CART
  remove : (id) => {
    delete cart.items[id];
    //UPDATE THE CURRENT CART
    cart.save();
    cart.list();
  },

  //WHEN USER CLICKED ON CHECKOUT
  checkout : () => {
      //CONFIRMATION POP OUT
    var c = confirm("Confirm order?");
    if (c == true){  
        //IF USER SELECT 'OK', IT WILL BRING USER TO CHECKOUT PAGE, THAT IS 'checkout.jsp'
                window.location.href = "checkout.jsp";
        } else {
            //ELSE, NOTHING WILL HAPPEN.
            text = "Canceled";
        }
  }
};

//ADDEVENTLISTENER WILL HANDLE THE EVENTS IN THE FUNCTION ABOVE, DOMCONTENTLOADED HERE WILL RUN THE EVENTS WHEN 'cart.init' IS COMPLETELY LOADED
window.addEventListener("DOMContentLoaded", cart.init);

</script>

<div id="result"></div>
 
<!-- RUN THE JAVASCRIPT 'products.js' TO LOAD THE PRODUCTS INTO THE CART -->
<script src="products.js"></script>  
        

    <div id="cart-wrap" style='position: relative;'>
      
      <!-- PRODUCTS LIST (LEFT) -->
      <div id="cart-products"></div>

      <!-- CURRENT CART (RIGHT)-->
      <div id="cart-items"></div>
      
      
    </div>

<!--THIS PART IS THE FOOTER OF THE WEBPAGE -->  

        <div class="clearfix"></div>
        
        <div class="btmMenu">
                
                <!-- TABLE APPLYING THE STYLE LISTED IN THIS JSP FILE IS USED -->
                <table>
                    <colgroup>
                        <!-- WILL OCCUPY 2 COLUMN SPACE-->
                      <col span="2" style="background-color:black">
                      <col style="background-color:black">
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
