
<!DOCTYPE html>
<html>
    <head>
        <title>Bakery Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="foodcss.css">
        <link rel="stylesheet" href="cart.css">
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
    <body style="background-color: black">
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
        <div class="topMenu">
                
                <center><h1 style="color: white; position: relative; top: 100px; font-family: 'Josefin Sans', sans-serif;"> ~~GROUP 3 RESTAURANT~~ </h1> </center>
                <ul class ="nav">
                    <li class="hMenu"><a href="home2.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> HOME </a></li>
                    <li class="hMenu"><a href="food.jsp" class="hMenu" style="text-decoration: none; color: red;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> MENU </a></li>
                    <li class="hMenu"><a href="AboutUs.jsp" class="hMenu" style="text-decoration: none;background-color:  rgba(0, 0, 0, 0.7); border-radius: 50px;"> ABOUT US </a></li>
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
                
                <img src="img/logom.jpg" alt="bigLogo" class="bigLogo">
        
                
                
            </div>
            
            <h1 style="color: white; position: relative; top: 50px; font-family: 'Josefin Sans', sans-serif;"> FOOD MENU </h1>
            <br>
            <br>
  
         
       <!-- THIS IS TESTING CODE -->     
  
<script>
var cart = {
  // (A) PROPERTIES
  hPdt : null, // HTML products list
  hItems : null, // HTML current cart
  items : {}, // Current items in cart
  iURL : "img/", // Product image URL folder

  // (B) LOCALSTORAGE CART
  // (B1) SAVE CURRENT CART INTO LOCALSTORAGE
  save : () => {
    localStorage.setItem("cart", JSON.stringify(cart.items));
  },

  // (B2) LOAD CART FROM LOCALSTORAGE
  load : () => {
    cart.items = localStorage.getItem("cart");
    if (cart.items == null) { cart.items = {}; }
    else { cart.items = JSON.parse(cart.items); }
  },

  // (B3) EMPTY ENTIRE CART
  nuke : () => {
    if (confirm("Empty cart?")) {
      cart.items = {};
      localStorage.removeItem("cart");
      cart.list();
    }
  },

  // (C) INITIALIZE
  init : () => {
    // (C1) GET HTML ELEMENTS
    cart.hPdt = document.getElementById("cart-products");
    cart.hItems = document.getElementById("cart-items");

    // (C2) DRAW PRODUCTS LIST
    cart.hPdt.innerHTML = "";
    let p, item, part;
    for (let id in products) {
      // WRAPPER
      p = products[id];
      item = document.createElement("div");
      item.className = "p-item";
      cart.hPdt.appendChild(item);

      // PRODUCT IMAGE
      part = document.createElement("img");
      part.src = cart.iURL + p.img;
      part.className = "p-img";
      item.appendChild(part);

      // PRODUCT NAME
      part = document.createElement("div");
      part.innerHTML = p.name;
      part.className = "p-name";
      item.appendChild(part);

      // PRODUCT DESCRIPTION
      part = document.createElement("div");
      part.innerHTML = p.desc;
      part.className = "p-desc";
      item.appendChild(part);

      // PRODUCT PRICE
      part = document.createElement("div");
      part.innerHTML = "$" + p.price;
      part.className = "p-price";
      item.appendChild(part);

      // ADD TO CART
      part = document.createElement("input");
      part.type = "button";
      part.value = "Add to Cart";
      part.className = "cart p-add";
      part.onclick = () => { cart.add(id); };
      item.appendChild(part);
    }

    // (C3) LOAD CART FROM PREVIOUS SESSION
    cart.load();

    // (C4) LIST CURRENT CART ITEMS
    cart.list();
  },

  // (D) LIST CURRENT CART ITEMS (IN HTML)
  list : () => {
    // (D1) RESET
    cart.hItems.innerHTML = "";
    let item, part, pdt;
    let empty = true;
    for (let key in cart.items) {
      if(cart.items.hasOwnProperty(key)) { empty = false; break; }
    }

    // (D2) CART IS EMPTY
    if (empty) {
      item = document.createElement("div");
      item.innerHTML = "Cart is empty";
      cart.hItems.appendChild(item);
    }

    // (D3) CART IS NOT EMPTY - LIST ITEMS
    else {
      let p, total = 0, subtotal = 0;
      for (let id in cart.items) {
        // ITEM
        p = products[id];
        item = document.createElement("div");
        item.className = "c-item";
        cart.hItems.appendChild(item);

        // NAME
        part = document.createElement("div");
        part.innerHTML = p.name;
        part.className = "c-name";
        item.appendChild(part);

        // REMOVE
        part = document.createElement("input");
        part.type = "button";
        part.value = "X";
        part.className = "c-del cart";
        part.onclick = () => { cart.remove(id); };
        item.appendChild(part);

        // QUANTITY
        part = document.createElement("input");
        part.type = "number";
        part.min = 0;
        part.value = cart.items[id];
        part.className = "c-qty";
        part.onchange = function () { cart.change(id, this.value); };
        item.appendChild(part);

        // SUBTOTAL
        subtotal = cart.items[id] * p.price;
        total += subtotal;
      }

      // TOTAL AMOUNT
      item = document.createElement("div");
      item.className = "c-total";
      item.id = "c-total";
      item.innerHTML ="TOTAL: $" + total;
      cart.hItems.appendChild(item);

      // EMPTY BUTTONS
      item = document.createElement("input");
      item.type = "button";
      item.value = "Empty";
      item.onclick = cart.nuke;
      item.className = "c-empty cart";
      cart.hItems.appendChild(item);

      // CHECKOUT BUTTONS
      item = document.createElement("input");
      item.type = "button";
      item.value = "Checkout";
      item.onclick = cart.checkout;
      item.className = "c-checkout cart";
      cart.hItems.appendChild(item);
    }
  },

  // (E) ADD ITEM INTO CART
  add : (id) => {
    if (cart.items[id] == undefined) { cart.items[id] = 1; }
    else { cart.items[id]++; }
    cart.save(); cart.list();
  },

  // (F) CHANGE QUANTITY
  change : (pid, qty) => {
    // (F1) REMOVE ITEM
    if (qty <= 0) {
      delete cart.items[pid];
      cart.save(); cart.list();
    }

    // (F2) UPDATE TOTAL ONLY
    else {
      cart.items[pid] = qty;
      var total = 0;
      for (let id in cart.items) {
        total += cart.items[id] * products[id].price;
        document.getElementById("c-total").innerHTML ="TOTAL: $" + total;
      }
    }
  },

  // (G) REMOVE ITEM FROM CART
  remove : (id) => {
    delete cart.items[id];
    cart.save();
    cart.list();
  },

  // (H) CHECKOUT
  checkout : () => {
    // SEND DATA TO SERVER
    // CHECKS
    // SEND AN EMAIL
    // RECORD TO DATABASE
    // PAYMENT
    // WHATEVER IS REQUIRED

  }
};
window.addEventListener("DOMContentLoaded", cart.init);


</script>

<script src="products.js"></script>  
        

    <div id="cart-wrap" style='position: relative; left: 200px'>
      
      <!-- (B) PRODUCTS LIST -->
      <div id="cart-products"></div>

      <!-- (C) CURRENT CART -->
      <div id="cart-items"></div>
      
      
    </div>

<!-- ENDS HERE -->  


        <div class="clearfix"></div>
        
        <div class="btmMenu">
                
                
                <table>
                    <colgroup>
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
                              <a href="#" style="color: white; text-decoration: none;"> Order now </a> <br>
                              <a href="#" style="color: white; text-decoration: none;"> Contact us </a> <br>
                              <a href="#" style="color: white; text-decoration: none;"> Menu </a> <br>     
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
