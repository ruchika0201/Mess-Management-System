<html>
	<style>
	body {
	  font-family: Lato, sans-serif;
	  font-weight: 100;
	  overflow:hidden;
	}

	header {
	  height: 100vh;
	  width: 100vw;
	  background-image:linear-gradient(rgba(0,0,0,.6), rgba(0,0,0,.6)), url("https://images.pexels.com/photos/5938/food-salad-healthy-lunch.jpg?auto=compress&cs=tinysrgb&h=750&w=1260");
	  background-size: cover;
	  background-position: center;
	  background-repeat: no-repeat;
	  background-attachment: fixed;
	  position: relative;
	  
	}
	.intro-text {
	  position: absolute;
	  top: 40%;
	  left: 10%;
	}
@font-face {
  font-family: myFont;
  src: url(lobster.otf);
}
	h1 {
	  color: #eee;
	  font-size: 40px;
	  overflow:hidden;
	}
	a {
	  text-decoration: none;
	  margin-right: 30px;
	  color: orange;
	  overflow:hidden;
	  border: 1px solid orange;
	  border-radius: 25px;
	  padding: 10px 15px;
	}
	.btn-full {
	  background-color: orange;
	  color: white;  

	}
	.btn-full:hover{
		background-color: white;
	  color: orange;  

	}

		@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

	html{
	  background-size: cover;
	  height:100%;
	}

	#feedback-page{
		text-align:center;
	}
	
	#form-main{
		width:80%;
		float:right;
		padding-right:10px;
		padding-top:100px;
	}

	#form-div {
		background-color:rgba(0,0,0,0.5);
		padding-left:35px;
		padding-right:35px;
		padding-top:35px;
		padding-bottom:50px;
		width: 450px;
		height:490px;
		float: right;
		right: 5%;
		position: absolute;
	  margin-top:-180px;
		margin-left: -260px;
	  -moz-border-radius: 7px;
	  -webkit-border-radius: 7px;
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
	.feedback-input {
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
		/*color:#30aed6;
		border:#30aed6 solid 3px;*/
		color:rgba(255,255,255,0.5);
	}

	/* Icons ---------------------------------- */
	#name{
		background-image: url(http://rexkirby.com/kirbyandson/images/names.svg);
		background-size: 30px 30px;
		background-position: 11px 8px;
		background-repeat: no-repeat;
	}

	#name:focus{
		background-image: url(http://rexkirby.com/kirbyandson/images/names.svg);
		background-size: 30px 30px;
		background-position: 8px 5px;
	  background-position: 11px 8px;
		background-repeat: no-repeat;

	}

	#password{
		background-image: url(http://rexkirby.com/kirbyandson/images/password.svg);
		background-size: 30px 30px;
		background-position: 11px 8px;
		background-repeat: no-repeat;
	}

	#password:focus{
		background-image: url(http://rexkirby.com/kirbyandson/images/password.svg);
		background-size: 30px 30px;
	  background-position: 11px 8px;
		background-repeat: no-repeat;
	}

	

	#login{
		font-weight:bold;
		color:white;
		font-size:25px;
		text-align:center;
		font:Arial;

	}
	text:focus{border-bottom: solid-orange;}

	input:hover, textarea:hover,
	input:focus, textarea:focus {
		border-bottom: 5px solid orange ;


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
<!--		.submit{
			border-radius:25px;

		}
.submit:hover {
		color: #3498db;
		border-radius:25px;
		
	
			
	.ease {
		width: 0px;
		height: 74px;
		border-radius:25px;
		background-color: #fbfbfb;
		-webkit-transition: .3s ease;
		-moz-transition: .3s ease;
		-o-transition: .3s ease;
		-ms-transition: .3s ease;
		transition: .3s ease;
	}

	.submit:hover .ease{
	  width:40%;
	  
	  background-color:white;
	}-->

	#button-or{
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
 
	#button-or:hover{
		background-color:white;

		color: orange;
		width:40%;
		padding-top:20px;
		padding-bottom:20px;
		
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
	#row{
		
	}
	

	</style>
	<header>
			<nav>
			<div id="row"> <!-- Keep within 1140px width -->
				<img src="logo-white.png" style="width:80px; height:80px; padding:20px;" >
				<p style="color:white; font:Times New Roman; font-size:35px; font-weight:normal; margin-left:120px; margin-top:-90px; font-family:myFont" >Magic-O-Meal</p>
				
				
			</div>
		</nav>
			<div class="intro-text">
				<h1>Goodbye junk food.<br> Hello super healthy meals.</h1>
				
				<a class="btn-full" href="Admin.jsp">Super Admin</a>
			</div>
		<div id="space">
		</div>
			<div id="form-main">
				<div id="form-div">
					<form class="form" id="form1" action="Login" method="post">
					<p id="login">Student Login</p>
	      			<p class="name">
						<input name="uname" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Username" id="name" />
					</p>
	      
					<p class="password">
						<input name="password" type="password" class="validate[required,custom[email]] feedback-input" id="password" placeholder="Password" />
					</p>  
					<div class="submit">
						<input type="submit" value="Student" id="button-blue"/></form>
						<form class="form" id="form" action="messlog.jsp" method="post">	<input type="submit" value="Mess" id="button-blue"/> </form> 	
					</div>
						
				<center><p style="color:white">New User? Click Register to create an account</p></center>
				<center>	<form class="form" id="form1" action="Register" method="post">	<input type="submit" value="Register" id="button-blue" style="margin-left:110px;"/></form></center>
					</div>
			</div>  
	  </div>
	</header>
	</html>
