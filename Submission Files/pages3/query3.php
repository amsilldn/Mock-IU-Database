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
<h3 style="display:inline";>REPORT 3 (6C): </h3><h4 style="display:inline";>Produce a list of students and faculty who were in a *particular building* at a *particular time*.</h4>
<table border="1px solid black";><tr><th>Name</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$building = mysqli_real_escape_string($conn, $_POST['building']);
$time = mysqli_real_escape_string($conn, $_POST['time']);

$sql = "SELECT DISTINCT s.fname, s.lname FROM student AS s, participate AS p, section AS se, building AS b WHERE s.studentID=p.studentID AND p.sectionID=se.sectionID AND b.bldgID='BH' AND se.start_time='$time' UNION SELECT DISTINCT e.fname, e.lname FROM employee AS e, building AS b, section AS se WHERE e.type='Faculty' AND e.employeeID=se.facultyID AND b.bldgID='$building' AND se.start_time='$time' UNION SELECT DISTINCT e.fname, e.lname FROM employee AS e, room AS r, building AS b WHERE (e.type='Faculty' OR e.type='Advisor') AND e.office=r.roomID AND r.bldgID=b.bldgID AND b.bldgID='$building'";
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