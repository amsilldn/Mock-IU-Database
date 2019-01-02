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
<h3 style="display:inline";>REPORT 2 (3B): </h3><h4 style="display:inline";>Produce a list of faculty who have never taught a *specified course*</h4>
<table border="1px solid black";><tr><th>Name</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$courseID = mysqli_real_escape_string($conn, $_POST['courseID']);

$sql = "SELECT DISTINCT e.fname, e.lname FROM employee AS e WHERE NOT EXISTS (SELECT * FROM section AS s WHERE e.employeeID=s.facultyID AND s.courseID='$courseID') AND e.type='Faculty'";
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
</table>
</body>
</html>