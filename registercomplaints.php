<!DOCTYPE HTML>
<?php session_start();
if ($_SESSION['s_email'] == true) {
} else {
    header('location:index.php');
}
?>

<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Register Complaints</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
   <div class="w3-container">
     <nav class="navbar navbar-inverse bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Garbage Collection</a>
    </div>
    <ul class="nav navbar-nav">
      <?php
        if($_SESSION['type'] == 'user'){
          echo "<li><a href=\"registercomplaints.php\">Launch Complaints</a></li>";
        }
      ?>
      <li><a href="showcomplaints.php">Complaints</a></li>
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </div>
</nav>

  <h2><center>Register complaints</center></h2>
   <input class="w3-input w3-border w3-padding" type="text" placeholder="Search for names.." id="myInput" onkeyup="myFunction()">
<table class="w3-table-all w3-margin-top" id="myTable">
<tr>

<th>bin_id</th>
<th>area</th>
<th>city</th>
<th>locality</th>
<th>landmark</th>
<th>loadtype</th>
<th>cycle</th>
</tr>
</th>
</tr></thead>
<?php
$con = mysqli_connect("localhost","root","","registration");


if(!$con)
{
echo "Failed To Connect <br>".mysqli_connect_error();
}
$sql = "select * from createbin";
$result = mysqli_query($con,$sql);
while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['bin_id'] . "</td>";
echo "<td>" . $row['area'] . "</td>";
echo "<td>" . $row['city'] . "</td>";
echo "<td>" . $row['locality'] . "</td>";
echo "<td>" . $row['landmark'] . "</td>";
echo "<td>" . $row['loadtype'] . "</td>";
echo "<td>" . $row['cycle'] . "</td>";

echo "<td><a href=\"postcomplaints.php?edit=".$row['bin_id']."&area=".$row['area']."\"><button class=\"w3-button w3-red\">Register complaints</button></a></td>";
}
?>


</tr>
</table>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
</body>
</html>
