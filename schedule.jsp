<%-- 
    Document   : adminPlatform
    Created on : Jan 11, 2022, 1:13:30 PM
    Author     : users
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Platform</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href='//fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="assets/css/responsiveslides.css">
        <link rel="stylesheet" href="assets/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/responsiveslides.min.js"></script>
    </head>
    <body>
        
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul>
      <li style="display: inline; float: left; background-color: #f1f1f1">
          <a style="display: block; padding: 20px; background-color: #dddddd;" href="index.jsp">Home </a>
      </li>
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="progress.jsp.jsp">Products</a>
      </li>
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="dashboard.jsp">Dasboard</a>
      </li> 
      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="login.jsp">Log Out</a>
      </li> 
<!--      <li style="display: inline; float: left; background-color: #dddddd">
        <a style="display: block; padding: 20px; background-color: #dddddd;" href="RegisterCustomer.jsp">Register</a>
      </li> -->
    </ul>
  </div>
        <br>
        <br>
        <br>
        
        
        <div class="wrap">
            <h4 style="margin-top:45px; margin-bottom: 25px; color:black; ">Hello Manager</h4>
            
            <div style="margin-top:20px; margin-bottom: 60px; color:black; ">
                <div style=" float: left;">
                    <form action="business/reports">
                        <h3>Generate Reports from All Modules <a href="progress.jsp">here</a> </h3>
                    </form>
                    </div>
                <div style=" float: right;">
                    <h3><a href="Managerlogin.jsp">Logout</a></h3>
                </div>
            </div>
        </div>
        
        <div class="clear"> </div>
        <%-- register agent --%>
        <div>
            <!-- register form -->
            <form action="/MarketingCampaign/Calculate" method="get" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                    <h2>CALCULATE PRODUCTS</h2>
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#f1f1f1; padding:30px;"> 
                        <label for="agentName"><b>Products for long term</b></label>
                        </br>
                        <input type="number" placeholder="Enter Number of Products" name="products" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <button type="submit"
                        style="
                           border-radius: 20px;
                           background-color: #3285d1;
                           color: white;
                           padding: 14px 20px;
                           margin: auto;
                           border: none;
                           cursor: pointer;
                           width: 50%;" value="Register">        
                        Calculate</button>
                        </br>
                        </br>
                   </div>
               </div>
             </form>
            <br>
            <br>
            
            <form action="/MarketingCampaign/Calculate" method="get" style="border: 3px solid #f1f1f1;">
                <div style="text-align: center; margin: 24px 0 12px 0;">
                </div>

               <div style="padding: 20px 70px 20px 70px; width: 50%; margin: auto;">
                   <div style="background-color:#f1f1f1; padding:30px;"> 
                        <label for="agentName"><b>Enter Number of Employees Working on The Long Term Products</b></label>
                        </br>
                        <input type="number" placeholder="" name="xxx" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        <label for="agentName"><b>Enter Number of Employees Working on The Mid Term Products</b></label>
                        </br>
                        <input type="number" placeholder="" name="yyy" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        <label for="agentName"><b>Enter Number of Employees Working on The Short Term Products</b></label>
                        </br>
                        <input type="number" placeholder="" name="zzz" required style="width: 100%; padding: 12px 20px; margin: 8px 0; display: inline-block; border: 1px solid #ccc; box-sizing: border-box;">
                        </br>
                        </br>
                        <button type="submit"
                        style="
                           border-radius: 20px;
                           background-color: #3285d1;
                           color: white;
                           padding: 14px 20px;
                           margin: auto;
                           border: none;
                           cursor: pointer;
                           width: 50%;" value="Register">        
                            Relocate</button>
                        </br>
                        </br>
                   </div>
               </div>
             </form>
            
            
            
        </div>

        <div class="clear"> </div>
        <%-- table section --%>
        
        <div class="wrap" style="align-content: center; padding-top: 30px; padding-bottom: 30px;">
            <div style="text-align: center; ">
                <div>
                    <h2 style="font-size:25px; color: black; margin-bottom: 10px;">PRODUCTS SECTION</h2>
                </div>
                <div style="width: 100%;">
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for products.." title="Type in a name">
                </div>
            </div>
            <table id="myTable" class="responsive-table"> 
                <tr>
                    <th><b>Long-term Products</b></th>
                    <th><b>Mid-term Products</b></th>
                    <th><b>Short-term Products</b></th>
                </tr>
                <tr>
                  <td>Total Products: 50</td>
                  <td>Total Products: 5</td>
                  <td>Total Products: 10</td>
                  <td><a href="#">Print</a></td>
                </tr>
            </table>
        </div>
        
        <div class="clear"> </div>
        <%-- Progress section --%>
            

            <div class="wrap" style="">
            <h2 style="text-align: center; margin-top:45px; color:black; font-size:25px; color: black; margin-bottom: 10px; text-transform: uppercase;">For all your progress as regards the ongoing campaigns.</h2>

            <div class="clear"> </div><br /><br />
            <div style="width: 100%; margin-bottom: 30px;">
                <div style="width: 49%; margin-left: 2px; float:left;">
                    <div id="myChart" style="width:100%; max-width:600px; height:500px;"></div>
                </div>    
                <div style="width: 49%; margin-right: 0px; float:right;">
                    <div id="myChart2" style="width:100%; max-width:600px; height:500px;"></div>  
                </div>
            </div>
            </div>
        
        <div class="clear"> </div>
        
        <div class="footer"style=" width:100%;">
              <div class="wrap">
             <div class="footer-right" style="float:none; text-align: center; ">
                     <p>&copy; 2021 Marketing Campaign. All Rights Reserved | Design by Josh</p>
             </div>
             <div class="clear"> </div>
        </div>
        </div>
        
        <script>
            google.charts.load('current',{packages:['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
            // Set Data
            var data = google.visualization.arrayToDataTable([
              ['Price', 'Size'],
              [50,7],[60,8],[70,8],[80,9],[90,9],
              [100,9],[110,10],[120,11],
              [130,14],[140,14],[150,15]
            ]);
            // Set Options
            var options = {
              title: 'House Prices vs. Size',
              hAxis: {title: 'Square Meters'},
              vAxis: {title: 'Price in Millions'},
              legend: 'none'
            };
            // Draw
            var chart = new google.visualization.LineChart(document.getElementById('myChart'));
            chart.draw(data, options);
            }
        </script>
        
        <script>
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Contry', 'Mhl'],
              ['Italy',55],
              ['France',49],
              ['Spain',44],
              ['USA',24],
              ['Argentina',15]
            ]);

            var options = {
              title:'World Wide Wine Production'
            };

            var chart = new google.visualization.BarChart(document.getElementById('myChart2'));
              chart.draw(data, options);
            }
        </script>
        
        <script>
        function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
          input = document.getElementById("myInput");
          filter = input.value.toUpperCase();
          table = document.getElementById("myTable");
          tr = table.getElementsByTagName("tr");
          for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
              txtValue = td.textContent || td.innerText;
              if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
              } else {
                tr[i].style.display = "none";
              }
            }       
          }
        }
        </script>
        
    </body>
</html>

