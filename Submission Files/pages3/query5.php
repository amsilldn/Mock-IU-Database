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
<h3 style="display:inline";>REPORT 5 (8b): </h3><h4 style="display:inline";>Produce an alphabetical list of students who have not attended during the two most recent semesters along with their parents' phone number.</h4>
<table border="1px solid black";><tr><th>Name</th><th>Parent Phone</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 

$sql = "SELECT DISTINCT s.fname, s.lname, s.parent_phone FROM student AS s WHERE NOT EXISTS (SELECT * FROM section AS se, participate AS p WHERE s.studentID=p.studentID AND se.sectionID=p.sectionID AND se.semID='FA17')";
$result = mysqli_query($conn, $sql);
//Use to debug
//var_dump($_POST);
//var_dump($sql);
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
	echo "<tr><td>". $row["fname"]. " " . $row["lname"]. "</td><td>" . $row['parent_phone']. "</td></tr>".
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