<%-- 
    Document   : test
    Created on : Nov 30, 2021, 3:58:42 AM
    Author     : alice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="checkout.css">
        <title>Payment</title>
       
    </head>
    <body>
        <div class="Main">
            <div>   
            <table class="top">
                <tr>
                    <td>
                        <img class="Logo" src="img/logom.jpg">	
                    </td>
                    <td>
                        <h1 class="title"><b>Billing information</b></h1>
                    </td>	
                </tr>
            </table>			
            <hr>
            </div>		
            <div>
                <div style="margin-left:10%">
                    <form method="post" action="#" onsubmit="#">
                        <div class="Input-Name">
                            <table class="First">
                                <tr>
                                    <td>
                    <!--Name input starts here-->
                                        <Span>    
                                        <label for="first_name" class="font" >Name<b class="red">*</b></label>
                                            <br>
                                            <input type="text" name="first_name" placeholder="First Name..." required>
                                            <br>
                                            <input type="text" name="last_name" placeholder="Last Name..." required>
                                            <br>
                                        </Span>
                    <!--Name input ends here--> 
                                    </td>
                    <!--Email input starts here-->
                                    <td>
                                        <Span>    
                                        <label for="email" class="font">Email<b class="red">*</b></label>
                                            <br>
                                            <input type="text" name="email" placeholder="E-mail..." required>
                                            <br>
                                            <input type="text" name="confirm_email" placeholder="Confirm E-mail..." required>
                                            <br>
                                        </span>
                                    </td>
                    <!--Email input ends here-->                        
                                </tr>
                            </table>
                        </div>
            <!--Phone input starts here-->
                        <div class="Phone" >
                            <label for="phoneA">Phone Number<b class="red">*</b></label><br>
                            <span>
                                <input type="number" style="width: 100px;" name="phoneA" placeholder='012' required/>
                                <input type="number" style="width: 460px;" name="phoneB" placeholder='3456789' required/>
                            </span>
                        </div>
            <!--Phone input ends here-->
            
            <!--Address input starts here-->
                        <div class="Address" >
                            <label for="Address">Address<b class="red">*</b></label>
                            <br>
                            <textarea style="width: 520px;" name="Address" required></textarea>
                        </div>
            <!--Address input ends here-->
                        <br>               
                    
                       
            <!--Country input starts here-->    
            <table>
                <tr>
                    <td>        &nbsp;                        
                                <select  style='width: 200px' name="country" required>
                                    <option value=""> Country </option>
                                    <option value="Malaysia">Malaysia</option>
                                </select>
                        </td>
                        <td>
            <!--Country input ends here-->    
           
            <!--City input starts here-->        
                                <input style='width: 200px' type="text" name="City" placeholder="City" required>
                                </td>
                </tr>              
            <!--City input ends here-->  
            </table>
                        
                        
                        <div class="PaymentMethod">	
             <!--Payment Method starts here-->                   
                                    <label for="PaymentMethod">Payment Method:<b class="red">*</b></label> <br>
                                    <input type="radio" name="disp" id="credit" value="Credit Card" required>Credit Card<br>
                                    <form>
                                            <input type="text" placeholder="Card number" required> 
                                            <input type="text" placeholder="MM/YY" required>
                                            <input type="text" placeholder="Name on card" required>
                                    </form>
                                    <br>
                                    <input type="radio" name="disp" id="payp" value="PayPal">PayPal<br>   
                                    
                                    
                                    <h4 id="error" style= "color:red"> </h4>  
                                    <input type="submit" onclick="checkButton()" value="Check Out">
                                     <!-- FUNCTIONS USED WHEN USER CLICKED ON CHECK OUT-->
                                    <script>  
                                    function checkButton() {
                                        //IF THE CREDIT CARD IS SELECTED, WITH DETAILS FILLED
                                        //ADD TRANSFERING CREDITS FUNCTION 
                                        //PROCEED TO HOME PAGE
                                                if(document.getElementById('credit').checked) {   
                                                    alert('Your order was successful! Thank you for purchasing!');
                                                    window.location.href = "home.jsp";
                                                }   
                                                //ELSE IF USER CLICKED ON PAYPAL METHOD, 
                                                        //USER WILL BE LEAD TO PAYPAL PAYING PAGE
                                                else if(document.getElementById('payp').checked) {   
                                                    window.location.href = 'https://www.paypal.com/my/home';   
                                                }   
                                                 //IF NONE IS SELECTED, THEN WILL REQUIRE THE USER TO FILL IN INFO 
                                                 //AND SELECT ONE METHOD TO PAY
                                                else {   
                                                    document.getElementById("error").innerHTML   
                                                        = "PLEASE ENTER ALL THE REQUIRED INFO!";   
                                                }   
                                            }
                                            //THIS FUNCTION IS TO ASK IF USER WANTS TO CANCEL THEIR ORDER AND BACK TO MENU PAGE
                                            
                                            function sure(){
                                                var c = confirm("Cancel ordering?");
                                                if (c == true){
                                                        window.location.href = "food.jsp";

                                                    } else {
                                                        text = "Canceled";
                                                    }
                                            }
                                    </script>   
                                
             <!--Payment Method ends here-->   
        
             <!--Back button with sure() function--> 
                        <input type="button" id="back" value="BACK" onclick="sure()">
                        
                    </form>
                </div>
            </div>
        </Div>
    </body>
</html>