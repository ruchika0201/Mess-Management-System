<html>
<head>

<style>
 
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

html
{    background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)),url(https://d3381fd3mt5iv0.cloudfront.net/wp-content/uploads/2017/12/holiday2013_front.jpg) no-repeat;
  background-size: cover;
  background-attachment: fixed;
  height:100%;
}

#feedback-page
{
	text-align:center;
}

#form-main
{
	width:100%;
	float:left;
	padding-top:0px;
}

#form-div 
{
	background-color:rgba(72,72,72,0.4);
	padding-left:35px;
	padding-right:35px;
	padding-top:10px;
	padding-bottom:10px;
	width: 450px;
	float: left;
	left: 50%;
	position: absolute;
  margin-top:30px;
	margin-left: -260px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}

.feedback-input
 {
	color:#3c3c3c;
	font-family: Helvetica, Arial, sans-serif;
    font-weight:500;
	font-size: 18px;
	border-radius: 0;
	line-height: 22px;
	background-color: #fbfbfb;
	padding: 13px 13px 13px 54px;
	margin-bottom: 10px;
	width:100%;
	border-radius:5px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
    border: 3px;
}

.feedback-input:focus
{
	background: #fff;
	box-shadow: 0;
	border: 3px solid #3498db;
	color: #3498db;
	border-radius:15px;
	outline: none;
    padding: 13px 13px 13px 54px;
}

.focused
{
	color:#30aed6;
	border:#30aed6 solid 3px;
}

/* Icons ---------------------------------- */
#name
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
	background-repeat: no-repeat;
}

#name:focus
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#address
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
	background-repeat: no-repeat;
}

#address:focus
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#contact
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
	background-repeat: no-repeat;
}

#contact:focus
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}
#user-name
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
	background-repeat: no-repeat;
}

#user-name:focus
{
	background: transparent;
	background-size: 15px 15px;
	background-position: 8px 5px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#email
{
	background: transparent;
	background-size: 30px 30px;
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#email:focus
{
	background: transparent;
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#password
{
	background: transparent;
	background-size: 30px 30px; 
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#password:focus
{
	background: transparent;
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}

#confirm-password
{
	background: transparent;
	background-size: 30px 30px; 
	background-position: 11px 8px;
	background-repeat: no-repeat;
}

#confirm-password:focus
{
	background: transparent;
	background-size: 30px 30px;
  background-position: 11px 8px;
	background-repeat: no-repeat;
}



textarea
 {
    width: 100%;
    height: 150px;
    line-height: 150%;
    resize:vertical;
}

	input:hover, textarea:hover,
input:focus, textarea:focus {
	background-color:white;
}

#button-blue{
	font-family: 'Montserrat', Arial, Helvetica, sans-serif;
	float:left;
	width: 100%;
	border: #fbfbfb solid 4px;
	cursor:pointer;
	background-color: #3498db;
	color:white;
	font-size:24px;
	padding-top:22px;
	padding-bottom:22px;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}

#button-blue:hover
{
	background-color: rgba(0,0,0,0);
	color: #0493bd;
}
	

	
.ease {
	width: 0px;
	height: 74px;
	background-color: #fbfbfb;
	-webkit-transition: .3s ease;
	-moz-transition: .3s ease;
	-o-transition: .3s ease;
	-ms-transition: .3s ease;
	transition: .3s ease;
}

.submit:hover .ease{
  width:50%;
  background-color:white;
}

@media only screen and (max-width: 580px) {
	#form-div{
		left: 3%;
		margin-right: 3%;
		width: 88%;
		margin-left: 0;
		padding-left: 3%;
		padding-right: 3%;
	}
}
</style>

</head>

<body>

<div id="form-main">
  <div id="form-div">
    <form class="form" id="form1" action="Mess" method="post">
      
      <p class="name" style="color:white">
        Name:<input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
      </p>
	  
	  <p class="address" style="color:white">
        Address:<input name="address" type="text" class="validate[required,custom[address]] feedback-input" id="email" placeholder="address" />
      </p>
	  
	   <p class="user-name" style="color:white">
        User-Name:<input name="username" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="User-Name" id="user-name" />
      </p>
	  
	  <p class="contact" style="color:white">
        Contact:<input name="contact" type="tel" class="validate[required,custom[conntact]] feedback-input" id="contact" placeholder="Contact" />
      </p>
      
      <p class="email" style="color:white">
        Email-id:<input name="email" type="email" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Email" />
      </p>
	  
	  <p class="password" style="color:white">
        Password:<input name="password" type="password" class="validate[required,custom[password]] feedback-input" id="email" placeholder="Password" />
      </p>
	  
	  <p class="confirm-password" style="color:white">
        Confirm-Password:<input name="confirm-password" type="password" class="validate[required,custom[confirm-password]] feedback-input" id="email" placeholder="Confirm-Password" />
      </p>
	  
	   <p style="color:white">
	  MESS-TYPE:<br>
	   <input type="checkbox" name="mess_type" value="veg" checked> VEG<br>
       <input type="checkbox" name="mess_type" value="non-veg">NON-VEG<br>
	   <input type="checkbox" name="mess_type" value="jain"> JAIN<br><br>
	  </p>
	  
	  <p class="price" style="color:white">
        Price Per Plate:<input name="price_plate" type="price_plate"  placeholder="Price Per Plate" />
      </p>
	  
	  	<!--    <p style="color:white">
	  MESS-TIME:<br>
	   <input type="checkbox" name="mess_time" value="1_time" checked> 1_time<br>
       <input type="checkbox" name="mess_time" value="2_time">2_time<br>
	   <input type="checkbox" name="mess_time" value=""> JAIN<br><br>
	  </p>-->
	  
	  
	  	 <!--  <p style="color:white">
	  MESS-PERIOD:<br>
	   <input type="checkbox" name="mess_period" value="1_day" checked> 1_day<br>
       <input type="checkbox" name="mess_period" value="3_days">3_days<br>
	   <input type="checkbox" name="mess_period" value="15_days"> 15_days<br><br>
	  </p>  -->
	  
	  
	  
	  
      
      
      <div class="submit">
        <input type="submit" value="Submit" id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
  </div>
  
  </body>
  </html>