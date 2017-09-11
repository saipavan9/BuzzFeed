<?php  
require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';
?>

<html>
<head>
	<title>Welcome to Buzzfeed!</title>
	<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/register_style.css">
	<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
	<script src="assets/js/register.js"></script>
	
</head>
<body>
	<?php
		if(isset($_POST['register_button'])){
			echo'
			<script>
			$(document).ready(function(){
				$("#first").hide();
				$("#second").show();
			});
			</script>
			';
		}

	?>
	<div class="wrapper">
		<div class="login_box">
		<div class="login_header">
			<h1>BuzzFeed</h1>
			Login or Sign up Here!
		</div>
		<div id="first">
			<form action="register.php" method ="POST">
				<input type="email" name="log_email" placeholder="Email Address" value="<?php 
					if(isset($_SESSION['log_email'])) {
						echo $_SESSION['log_email'];
					} 
					?>" required>
				<br>
				<input type="password" name="log_password" placeholder="Password">
				<br>
				<?php if(in_array("Your Email or Password is incorrect<br>",$error_array)) echo "Your Email or Password is incorrect<br>" ?>	
				<button type="submit" class="pure-button pure-button-primary" id="login" name="login_button">Login</button>
				<br>
				<a href="#" id="signup">Need an account? Register Here!</a>
					
			</form>
		</div>
		<div id="second">
				<form action="register.php" method="POST">
					<input type="text" name="reg_fname" placeholder="First Name" value="<?php 
					if(isset($_SESSION['reg_fname'])) {
						echo $_SESSION['reg_fname'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Your first name must be between 2 and 25 characters<br>", $error_array)) echo "Your first name must be between 2 and 25 characters<br>"; ?>
		
					<input type="text" name="reg_lname" placeholder="Last Name" value="<?php 
					if(isset($_SESSION['reg_lname'])) {
						echo $_SESSION['reg_lname'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Your last name must be between 2 and 25 characters<br>", $error_array)) echo "Your last name must be between 2 and 25 characters<br>"; ?>

					<input type="email" name="reg_email" placeholder="Email" value="<?php 
					if(isset($_SESSION['reg_email'])) {
						echo $_SESSION['reg_email'];
					} 
					?>" required>
					<br>

					<input type="email" name="reg_email2" placeholder="Confirm Email" value="<?php 
					if(isset($_SESSION['reg_email2'])) {
						echo $_SESSION['reg_email2'];
					} 
					?>" required>
					<br>
					<?php if(in_array("Email already in use<br>", $error_array)) echo "Email already in use<br>"; 
					else if(in_array("Invalid email format<br>", $error_array)) echo "Invalid email format<br>";
					else if(in_array("Emails don't match<br>", $error_array)) echo "Emails don't match<br>"; ?>

					<input type="password" name="reg_password" placeholder="Password" required>
					<br>
					<input type="password" name="reg_password2" placeholder="Confirm Password" required>
					<br>
					<?php if(in_array("Your passwords do not match<br>", $error_array)) echo "Your passwords do not match<br>"; 
					else if(in_array("Your password can only contain english characters or numbers<br>", $error_array)) echo "Your password can only contain english characters or numbers<br>";
					else if(in_array("Your password must be betwen 5 and 30 characters<br>", $error_array)) echo "Your password must be betwen 5 and 30 characters<br>"; ?>
					<button type="submit" class="pure-button pure-button-primary" id="login" name="register_button">Register</button>
					<br>
					<?php if(in_array("<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br>", $error_array)) echo "<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br>"; ?>
					<a href="#" id="signin">Already an account?Sign in Here!!</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>