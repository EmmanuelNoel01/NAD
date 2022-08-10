 <%-- 
    Document   : login
    Created on : Jan 8, 2022, 12:02:32 PM
    Author     : joshmyles
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
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
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="Managerlogin.jsp">Manager</a>
      </li>
           <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="login.jsp">Log In</a>
      </li>        
    </ul>
  </div> 
        
        <div>
            <!-- register form -->
            <form action="upload.jsp" method="post" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>LOGIN</h2>
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#e0e0e0; padding:30px;"> 
                        <label for="agentName"><b>Name</b></label>
                        </br>
                        <input type="text" placeholder="Enter Name" name="name" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;" required>
                        </br>
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
                        Login</button>
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
                         <p>&copy; 2021 Marketing Campaign. All Rights Reserved |</p>
                 </div>
                 <div class="clear"> </div>
            </div>
        </div>
    </body>
</html>
