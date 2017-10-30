<?php
require 'config/config.php';
include("includes/classes/User.php");
include("includes/classes/Post.php");
include("includes/classes/Message.php");
include("includes/classes/Notification.php");

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
  <script src="assets/js/bootbox.min.js"></script>
  <script src="assets/js/demo.js"></script>
  <script src="assets/js/jquery.jcrop.js"></script>
  <script src="assets/js/jcrop_bits.js"></script>



  <link rel="stylesheet"  type="text/css" href="assets/css/bootstrap.css">
  <link rel="stylesheet" href="assets/css/style.css" type="text/css">
  <link rel="stylesheet" href="assets/css/font-awesome.css">	
  <link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />

</head>
<body>

<header>
  <h1>BuzzFeed</h1>
  <nav role='navigation'>
    <?php
        $messages = new Message($con,$userLoggedIn);
		$num_messages = $messages->getUnreadNumber();
		
		$notifications = new Notification($con,$userLoggedIn);
		$num_notifications = $notifications->getUnreadNumber();
		
		$user_obj = new User($con,$userLoggedIn);
        $num_requests = $user_obj->getNumberOfFriendRequests();
    ?>
    <ul>
		<li><a class="link-1" href="<?php echo $userLoggedIn; ?>">
				<?php echo $user['first_name']; ?>
			</a></li>
      <li><a class="link-1" href="index.php"><i class="fa fa-home fa-lg"></i></a></li>
       <li><a class="link-2" href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>','message')"><i class="fa fa-envelope fa-lg"></i>
       <?php
				if($num_messages > 0)
				 echo '<span class="notification_badge" id="unread_message">' . $num_messages . '</span>';
				?>     
      </a></li>
	  <li><a class="link-3" href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>','notification')"><i class="fa fa-bell fa-lg"></i>
	  		<?php
				if($num_notifications > 0)
				 echo '<span class="notification_badge" id="unread_notification">' . $num_notifications . '</span>';
				?> 	
		</a></li>
	  <li><a class="link-4" href="requests.php"><i class="fa fa-users fa-lg"></i>
		
	  			<?php
				if($num_requests > 0)
				 echo '<span class="notification_badge" id="unread_requests">' . $num_requests . '</span>';
				?> 
		</a></li>
	  <li><a class="link-4" href="#"><i class="fa fa-cog fa-lg"></i></a></li>
	  <li><a class="link-4" href="includes/handlers/logout.php"><i class="fa fa-sign-out fa-lg"></i></a></li>
    </ul>
  </nav>
  <div class="dropdown_data_window" style="height:0px;border:none;"></div>
  <input type="hidden" id="dropdown_data_type" value="">  
</header>

<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';

	$(document).ready(function() {

		$('.dropdown_data_window').scroll(function() {
			var inner_height = $('.dropdown_data_window').innerHeight(); 
			var scroll_top = $('.dropdown_data_window').scrollTop();
			var page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
			var noMoreData = $('.dropdown_data_window').find('.noMoreDropdownData').val();

			if ((scroll_top + inner_height >= $('.dropdown_data_window')[0].scrollHeight) && noMoreData == 'false') {

				var pageName; 
				var type = $('#dropdown_data_type').val();


				if(type == 'notification')
					pageName = "ajax_load_notifications.php";
				else if(type == 'message')
					pageName = "ajax_load_messages.php"


				var ajaxReq = $.ajax({
					url: "includes/handlers/" + pageName,
					type: "POST",
					data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(response) {
						$('.dropdown_data_window').find('.nextPageDropdownData').remove();  
						$('.dropdown_data_window').find('.noMoreDropdownData').remove(); 


						$('.dropdown_data_window').append(response);
					}
				});

			} 

			return false;

		}); 


	});

	</script>
	<div class="wrapper">
