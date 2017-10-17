<?php
require 'config/config.php';

if (isset($_SESSION['username'])) {
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con,"SELECT * FROM users WHERE username='$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
}
else{
    header("Location:register.php");
}
?>
<html>
<head>
	<title>Welcome to BuzzFeed</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>


  <link rel="stylesheet"  type="text/css" href="assets/css/bootstrap.css">
  <link rel="stylesheet" href="assets/css/style.css" type="text/css">
  <link rel="stylesheet" href="assets/css/font-awesome.css">	

</head>
<body>

<header>
  <h1>BuzzFeed</h1>
  <nav role='navigation'>
    <ul>
		<li><a class="link-1" href="<?php echo $userLoggedIn; ?>">
				<?php echo $user['first_name']; ?>
			</a></li>
      <li><a class="link-1" href="index.php"><i class="fa fa-home fa-lg"></i></a></li>
       <li><a class="link-2" href="#"><i class="fa fa-envelope fa-lg"></i></a></li>
      <li><a class="link-3" href="#"><i class="fa fa-bell fa-lg"></i></a></li>
	  <li><a class="link-4" href="#"><i class="fa fa-users fa-lg"></i></a></li>
	  <li><a class="link-4" href="#"><i class="fa fa-cog fa-lg"></i></a></li>
	  <li><a class="link-4" href="includes/handlers/logout.php"><i class="fa fa-sign-out fa-lg"></i></a></li>
    </ul>
  </nav>  
</header>


	<div class="wrapper">
