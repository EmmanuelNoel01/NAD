<%-- 
    Document   : adminlogin
    Created on : Jan 11, 2022, 10:56:20 AM
    Author     : joshmyles
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
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
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="progress.jsp">Products</a>
      </li>
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="adminlogin.jsp">Manager</a>
      </li>
           <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="login.jsp">Log In</a>
      </li>        
    </ul>
  </div>        
        
        <div>
            <!-- login form -->
            <form action="adminLoginServlet" method="post" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>MANAGER LOGIN</h2>
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#f1f1f1; padding:30px;"> 
                        <label for="userName"><b>Username</b></label>
                        </br>
                        <input type="text" placeholder="Enter username" name="userName" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <label for="password"><b>Password</b></label>
                        </br>
                        <input type="password" placeholder="Enter Password" name="password" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
<!--                        <a href="schedule.jsp"> register</a>-->
                        <button type=""
                        style="
                           border-radius: 20px;
                           background-color: #3285d1;
                           color: white;
                           padding: 14px 20px;
                           margin: auto;
                           border: none;
                           cursor: pointer;
                           width: 50%;"><a  href="schedule.jsp">        
                                Login</a></button>
                        </br>
                        </br>
                   </div>
               </div>
             </form>
        </div>
        
        <div class="clear"> </div>
        
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
