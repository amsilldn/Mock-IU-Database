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
<h3 style="display:inline";>REPORT 5 (Additional Query 1): </h3><h4 style="display:inline";>Provide a list of students taking a certain major and their contact information (email - personal, work or school, and phone - Cellular or Home) in alphabetical order.</h4>
<table border="1px solid black";><tr><th>Name</th><th>Email</th><th>Phone</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$major = mysqli_real_escape_string($conn, $_POST['major']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']); 

$sql = "SELECT DISTINCT s.fname, s.lname, m.title, se.email, sp.phone FROM student AS s, major AS m, student_major AS sm, student_email AS se, student_phone AS sp WHERE s.studentID=sp.studentID AND sp.studentID=se.studentID AND se.studentID=sm.studentID AND sm.majorID=m.majorID AND m.title='$major' AND sp.type='$phone' AND se.type='$email' ORDER BY s.lname";
$result = mysqli_query($conn, $sql);
//Use to debug
//var_dump($_POST);
//var_dump($sql);
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
	echo "<tr><td>". $row["fname"]. " " . $row["lname"]. "</td><td>" . $row["email"]. "</td><td>" . $row["phone"]. "</td></tr>".
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