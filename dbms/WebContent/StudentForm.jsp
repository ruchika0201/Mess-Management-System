<html>
<head>

<style>
 
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

html
{    background: linear-gradient(rgba(0,0,0,.9), rgba(0,0,0,.6)),url(http://www.gatewaytotakeaway.com/wp-content/uploads/2018/02/Indian-food-678x381.jpg) no-repeat;
  background-size: cover;
  background-attachment: fixed;
  height:100%;
  overflow:scroll;
}
@font-face {
  font-family: myFont;
  src: url(lobster.otf);
}

body 
{
	  font-family: Lato, sans-serif;
	  font-weight: 100;
	  overflow:hidden;
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
	background-color:rgba(72,72,72,0.3);
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
		border: none;
		line-height: 22px;
		background-color: transparent;
		padding: 13px 13px 13px 54px;

		margin: 20px;
		width:85%;
	
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		-ms-box-sizing: border-box;
		box-sizing: border-box;
	  border-bottom: 1px solid #b2b2b2;
}

	.feedback-input:focus{
		background-color: transparent;
		box-shadow: 0;
		border: none;
		border-bottom: 1px solid #ffffff;
		color: #3498db;
		outline: none;
	  padding: 13px 13px 13px 54px;
	}

	.focused{
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

	textarea:focus{border-bottom: solid-orange;}

	input:hover, textarea:hover,
	input:focus, textarea:focus {
		border-bottom: solid orange ;


	}


	#button-blue{
		font-family: 'Montserrat', Arial, Helvetica, sans-serif;
		float:left;
		width: 40%;

		border-radius:25px;
		border: none;
		cursor:pointer;
		background-color: #008000;
		color:white;
		font-size:24px;
		padding-top:20px;
		padding-bottom:20px;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	  margin-top:25px;
	  margin-left:10px;
	  font-weight:500;

	}
 
	#button-blue:hover{
		background-color: #fbfbfb;

		color: #008000;
		width:40%;
		padding-top:20px;
		padding-bottom:20px;
		
	}
	.submit{
		display: inline-block;
		width:100%;
		padding-left:18px;

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
text:focus{border-bottom: solid-orange;}

	input:hover, textarea:hover,
	input:focus, textarea:focus {
		border-bottom: 5px solid orange ;


	}
	input[type=text]{
	
	border-bottom: solid-orange;
	color:white;
	
	}
	input[type=text]:focus{
	
	border-bottom: 5px solid orange;
	color:white;
	
	}
	input[type=password]{
	
	border-bottom: solid-orange;
	color:white;
	
	}
	input[type=password]:focus{
	
	border-bottom: 5px solid orange;
	color:white;
	
	}
	input[type=tel]{
	
	border-bottom: solid-orange;
	color:white;
	
	}
	input[type=tel]:focus{
	
	border-bottom: 5px solid orange;
	color:white;
	
	}
	input[type=email]{
	
	border-bottom: solid-orange;
	color:white;
	
	}
	input[type=email]:focus{
	
	border-bottom: 5px solid orange;
	color:white;
	
	}
	#button-blue{
		font-family: 'Montserrat', Arial, Helvetica, sans-serif;
		float:left;
		width: 40%;
		text-align:center;
		border-radius:25px;
		border: none;
		cursor:pointer;
		background-color: #008000;
		color:white;
		font-size:24px;
		padding-top:20px;
		padding-bottom:20px;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	  margin-top:25px;
	  margin-left:10px;
	  font-weight:500;

	}
 
	#button-blue:hover{
		background-color: #fbfbfb;

		color: #008000;
		width:40%;
		padding-top:20px;
		padding-bottom:20px;
		
	}
	.submit{
		display: inline-block;
		width:100%;
		padding-left:18px;

	}
</style>
<header>
			<nav>
			<div id="row"> 
				<img src="logo-white.png" style="width:80px; height:80px; padding:20px;" >
				<p style="color:white; font:Times New Roman; font-size:35px; font-weight:normal; margin-left:120px; margin-top:-90px; font-family:myFont" >Magic-O-Meal</p>
				<br>
				<br>
				<br>
				<br>
				<p style="color:white; font:Times New Roman; font-size:25px; font-weight:normal; margin-left:500px; margin-top:-90px">Student's Registeration Form</p>
				
			</div>
		</nav>
</head>

<body>


<div id="form-main">
  <div id="form-div">
    <form class="form" id="form1" action="Student" method="post">
      
      <p class="name" style="color:white">
       <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
      </p>
	  
	  
	  
	   <p class="user-name" style="color:white">
       <input name="username" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Username" id="user-name" />
      </p>
       <p class="password" style="color:white">
       <input name="password" type="password" class="validate[required,custom[password]] feedback-input" id="email" placeholder="Password" />
      </p>
	  
	  <p class="confirm-password" style="color:white">
        <input name="confirm-password" type="password" class="validate[required,custom[confirm-password]] feedback-input" id="email" placeholder="Confirm Password" />
      </p>
	  
	  <p class="contact" style="color:white">
      <input name="contact" type="tel" class="validate[required,custom[contact]] feedback-input" id="contact" placeholder="Contact" />
      </p>
      
      <p class="email" style="color:white">
        <input name="email" type="email" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Email" />
      </p>
      <p class="address" style="color:white">
        <input name="address" type="text" class="validate[required,custom[address]] feedback-input" id="email" placeholder="Address" />
      </p>
	       
      <div class="submit">
        <input type="submit" value="Submit" id="button-blue"/>
        <div class="ease"></div>
      </div>
    </form>
  </div>
  
  </body>
  </html>