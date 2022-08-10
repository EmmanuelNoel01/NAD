<%-- 
    Document   : RegisterCustomer
    Created on : Aug 9, 2022, 2:26:42 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        
                <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul>
      <li style="display: inline; float: left; background-color: #f1f1f1">
          <a style="display: block; padding: 20px; background-color: #dddddd;" href="index.jsp">Home </a>
      </li>
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="cart.jsp">Products</a>
      </li>
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="log-out">Log Out</a>
      </li>
           <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="login.jsp">Log In</a>
      </li>        
    </ul>
  </div>
        
         <div>
            <!-- register form -->
            <form action="/CustomerRegistration.java" method="post" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>LOGIN</h2>
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#f1f1f1; padding:30px;"> 
                        <label for="agentName"><b>Name</b></label>
                        </br>
                        <input type="text" placeholder="Enter Name" name="name" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>
                        </br>
                        </br>
                        <label for="region"><b>Gender</b></label>
                        </br>
                        <input type="text" placeholder="Enter Your Gender" name="gender" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>
                        </br>
                         <label for="agentName"><b>Preferences</b></label>
                        </br>
                        <textarea placeholder="Enter Your Preferences" name="pref" rows="5" cols="50"></textarea>
<!--                        <input type="text" placeholder="Enter Your Preferences" name="pref" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>-->
                        </br>
                        </br>
                        <label for="region"><b>Location</b></label>
                        </br>
                        <input type="text" placeholder="Enter Your Current Location" name="location" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>
                        </br>
                        <label for="region"><b>Password</b></label>
                        </br>
                        <input type="password" placeholder="Enter Password" name="pass" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>
                        </br>
                        </br>
                        <button href="loginsuccess.jsp" type="submit"
                        style="
                           border-radius: 20px;
                           background-color: #3285d1;
                           color: white;
                           padding: 14px 20px;
                           margin: auto;
                           border: none;
                           cursor: pointer;
                           width: 50%;">        
                        Register</button>
                        </br>
                        </br>
                   </div>
               </div>
             </form>
        </div>
        <div class="clear"> </div><br /><br />
            <div class="footer"style="position:absolute;bottom:0; width:100%;">
                  <div class="wrap">
                 <div class="footer-right" style="float:none; text-align: center; ">
                         <p>&copy; 2021 Marketing Campaign. All Rights Reserved | Design by Josh</p>
                 </div>
                 <div class="clear"> </div>
            </div>
        </div>
    </body>
</html>
