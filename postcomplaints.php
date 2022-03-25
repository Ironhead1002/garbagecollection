<?php
session_start();
if ($_SESSION['s_email'] == true) {
} else {
    header('location:index.php');
}

if(count($_POST)>0) {
  $con = mysqli_connect("localhost","root","","registration");
  $sql = "INSERT INTO postcomplaint (user_id, email, bin_id, area, complaint, phone) VALUES ('" . $_SESSION["user_id"] . "','" . $_SESSION["s_email"] . "','" . $_GET["edit"] . "','" . $_GET["area"] . "','" . $_POST["complaint"] . "','" . $_POST["mobile"] . "')";
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
  <script type="text/javascript" src="mobile.js"></script>
</head>
<body>
<div class="container">
  <h2><center>Post Complaint</center></h2>
 <form name="frmUser" method="post" onsubmit="return validation(this)" action="">
<div style="width:500px;">
<div class="message"><?php if(isset($message)) { echo $message; } ?></div>

    <label for="complaint">Complaint</label> <br><br>
    <textarea required="required" id="complaint" name="complaint" rows="7" cols="65"></textarea><br>
    <span id="complaint_span" style="color:red;">*</span><br><br><br>
    <label for="complaint">Contact Number</label> <br><br>
    <input type="text" name="mobile" placeholder="Contact No." id="mobile" required=required>
    <span id="mobile_span" style="color:red;">*</span><br>
    <input type="submit" value="Submit">
  </form>
</div>


</body>
</html>
