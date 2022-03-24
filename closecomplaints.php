<?php
session_start();
if ($_SESSION['s_email'] == true) {
} else {
    header('location:index.php');
}

$a = $_GET['edit'];
$con = mysqli_connect("localhost","root","","registration");
$sql = "UPDATE postcomplaint SET status = 'close' WHERE complaint_id = $a";
$cnt = mysqli_query($con,$sql);

if($cnt) {
  ?>
  <script>
   alert("Complaint Closed Successfully");
    location.replace('showcomplaints.php');
  </script>
  <?php
}
else{
 ?>
  <script>
   alert("Error Successfully");
    location.replace('showcomplaints.php');
  </script>
  <?php
}

?>
