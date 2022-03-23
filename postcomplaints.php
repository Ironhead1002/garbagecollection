<?php
session_start();
if ($_SESSION['s_email'] == true) {
} else {
    header('location:index.php');
}

if(count($_POST)>0) {
  $con = mysqli_connect("localhost","root","","registration");
  $sql = "INSERT INTO postcomplaint (email, bin_id, area, complaint, phone) VALUES ('" . $_SESSION["s_email"] . "','" . $_GET["edit"] . "','" . $_GET["area"] . "','" . $_POST["complaint"] . "','" . $_POST["phone"] . "')";
  mysqli_query($con,$sql);
  $current_id = mysqli_insert_id($con);
  if(!empty($current_id)) {
    ?>
    <script>
     alert("Complaint Added Successfully");
      location.replace('registercomplaints.php');
    </script>
    <?php
  }
  else{
   ?>
    <script>
     alert("Error Successfully");
      location.replace('registercomplaints.php');
    </script>
    <?php
  }
}
?>

<html>
<head>
  <link rel="stylesheet" type="text/css" href="style1.css" />
</head>
<body>
<div class="container">
  <h2><center>Post Complaint</center></h2>
 <form name="frmUser" method="post" action="">
<div style="width:500px;">
<div class="message"><?php if(isset($message)) { echo $message; } ?></div>

    <label for="complaint">Complaint</label> <br><br>
    <textarea required="required" id="complaint" name="complaint" rows="7" cols="65"></textarea><br><br><br>
    <label for="complaint">Complaint</label> <br><br>
    <input type="text" name="phone" placeholder="Contact No." required=required>
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
