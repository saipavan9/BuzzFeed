<?php
$con = mysqli_connect("localhost","root","","social"); //Coneection Variable
if(mysqli_connect_errno())
{
  echo "Failed to connect: ".mysqli_connect_errno();
}
$query = mysqli_query($con,"INSERT INTO test VALUES ('1','Pavan')");
 ?>
<html>
<head>
  <title>Welcome to Swirl Feed </title>
</head>
<body>
Hello Pavan
</body>
</html>
