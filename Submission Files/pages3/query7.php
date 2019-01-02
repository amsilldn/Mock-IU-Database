<!DOCTYPE html>
<html>
<head>
<title>Team 01</title>
</head>
<body style="background-color: #aed6f1;">
<h2 style="display:inline";>TEAM 01</h2>
<form action="http://cgi.soic.indiana.edu/~juldietr/page.php">
    <input type="submit" value="Home" style="background-color:#deb887;">
</form>
<center>Amanda Sill | Julian Dietrich | Grant Sullivan | Zichuang Xie</center><hr>
<h3 style="display:inline";>REPORT 6 (Additional Query 2): </h3><h4 style="display:inline";>Produce a roster for a *specified section* sorted by student's last name, first name</h4>
<table border="1px solid black";><tr><th>Name</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$section = mysqli_real_escape_string($conn, $_POST['section']);
 

$sql = "SELECT DISTINCT s.fname, s.lname FROM student AS s, participate AS p, section AS se, building AS b WHERE s.studentID=p.studentID AND p.sectionID=se.sectionID AND p.sectionID='$section' ORDER BY s.lname DESC, s.fname ASC";
$result = mysqli_query($conn, $sql);
//Use to debug
//var_dump($_POST);
//var_dump($sql);
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
	echo "<tr><td>". $row["fname"]. " " . $row["lname"]. "</td></tr>".
"<br>";
	}
} else {
	echo "0 results";
}

mysqli_close($conn);
?>

</body>
</html>