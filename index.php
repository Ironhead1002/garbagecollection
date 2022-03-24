<html>
<head>
  <link rel="stylesheet" type="text/css" href="style1.css" />
</head>
<body>

<?php
session_start();
if(isset($_POST['submit'])){

  $con = mysqli_connect("localhost","root","","registration") or die("connection failed");
  $email = $_POST['email'];
  $password = $_POST['password'];

  $sql="select * from userregistration where email='$email' and password='$password' ";
  $quary = mysqli_query($con,$sql);
  $cnt = mysqli_num_rows($quary);

  if ($cnt>0)
  {
      $_SESSION['s_email'] = $email;
      while($row = mysqli_fetch_array($quary)){
        $_SESSION['type'] = $row['user_type'];
      }

      header("location:registercomplaints.php");
  }
  else
  {
    ?>
    <script>
     alert("Email Id or password is incorrect");
      location.replace('index.php');
    </script>
    <?php
  }

}
?>

<div class="container">
  <h2><center>Login</center></h2>
 <form name="logUser" method="post" action="">
<div style="width:500px;">
<div class="message"><?php if(isset($message)) { echo $message; } ?></div>


    <label for="email">Email</label>
    <input type="text" required id="email" name="email" >

    <label for="password">Password</label>
    <input type="password" required id="password" name="password" >

    <input type="submit" name="submit" value="Submit">
  </form>
  <div>
  <span><a href="registration.php" style="color:white;">Sign Up</a></span>
  <span style="padding-left: 330px;"><a style="color:white;" href="forgotpassword.php">Forgot Password</a></span>
</div>
</div>
</body>
</html>
