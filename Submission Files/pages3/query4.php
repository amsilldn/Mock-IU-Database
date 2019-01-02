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
<h3 style="display:inline";>REPORT 4 (2B): </h3><h4 style="display:inline";>Produce a list of rooms that are equipped with *some feature* that is available at a *particular time*</h4>
<table border="1px solid black";><tr><th>Room</th><th>roomID</th></tr>
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$feature = mysqli_real_escape_string($conn, $_POST['feature']);
$time = mysqli_real_escape_string($conn, $_POST['time']);
$meetDays = mysqli_real_escape_string($conn, $_POST['meetDays']);

$sql = "SELECT DISTINCT b.bldgID, r.room_num, r.roomID FROM building AS b, room AS r, room_feat AS rf, feature AS f, section AS se WHERE r.roomID=rf.roomID AND b.bldgID=r.bldgID AND f.featID=rf.featID AND r.roomID=se.roomID AND f.featID='$feature' AND se.meet_days='$meetDays' AND se.end_time='$time'";
$result = mysqli_query($conn, $sql);
//Use to debug
//var_dump($_POST);
//var_dump($sql);
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
	echo "<tr><td>". $row["bldgID"]. " " . $row["room_num"]. "</td><td>" . $row["roomID"]. "</td></tr>".
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