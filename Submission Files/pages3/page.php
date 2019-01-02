<!doctype html>
<html>
<head>
<title>Team 01</title>
</head>
<body style="background-color: #aed6f1;">
<h2 style="display:inline";>TEAM 01</h2><center>Amanda Sill | Julian Dietrich | Grant Sullivan | Zichuang Xie</center><hr>
<h3 style="display:inline";>REPORT 1 (4A): </h3><h4 style="display:inline";>Produce a list of students who are eligible to register for a *specified course* that has a prerequisite</h4><br><br>

<form action="query1.php" method="POST">
<?php
$conn = mysqli_connect("db.soic.indiana.edu", "i308s18_team01", "my+sql=i308s18_team01", "i308s18_team01");

if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM course";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<strong>Select Course:</strong> <select name='courseID'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['courseID'] . "'>" . $row['title'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 2 (3B): </h3><h4 style="display:inline";>Produce a list of faculty who have never taught a *specified course*</h4>
<form action="query2.php" method="POST">
<?php
$sql = "SELECT * FROM course";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Course:</strong> <select name='courseID'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['courseID'] . "'>" . $row['title'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 3 (6C): </h3><h4 style="display:inline";>Produce a list of students and faculty who were in a *particular building* at a *particular time*.</h4>
<form action="query3.php" method="POST">
<?php
$sql = "SELECT * FROM building";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Building:</strong> <select name='building'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['bldgID'] . "'>" . $row['name'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}

$sql = "SELECT DISTINCT start_time FROM section";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<strong>Select Start Time:</strong> <select name='time'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['start_time'] . "'>" . $row['start_time'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 4 (2B): </h3><h4 style="display:inline";>Produce a list of rooms that are equipped with *some feature* that is available at a *particular time*</h4>
<form action="query4.php" method="POST">
<?php
$sql = "SELECT * FROM feature";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Feature:</strong> <select name='feature'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['featID'] . "'>" . $row['feature'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}

$sql = "SELECT DISTINCT end_time FROM section";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<strong>Select End Time:</strong> <select name='time'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['end_time'] . "'>" . $row['end_time'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}

$sql = "SELECT DISTINCT meet_days FROM section";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Meet Days:</strong> <select name='meetDays'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['meet_days'] . "'>" . $row['meet_days'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 5 (8b): </h3><h4 style="display:inline";>Produce an alphabetical list of students who have not attended during the two most recent semesters along with their parents' phone number.</h4>
<form action="query5.php" method="POST">
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 6 (Additional Query 1): </h3><h4 style="display:inline";>Provide a list of students taking a certain major and their contact information (email - personal, work or school, and phone - Cellular or Home) in alphabetical order.</h4>
<form action="query6.php" method="POST">
<?php
$sql = "SELECT * FROM major";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Major:</strong> <select name='major'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['title'] . "'>" . $row['title'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}

$sql = "SELECT DISTINCT type FROM student_email";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<strong>Select Email Type:</strong> <select name='email'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['type'] . "'>" . $row['type'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}

$sql = "SELECT DISTINCT type FROM student_phone";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Phone Type:</strong> <select name='phone'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['type'] . "'>" . $row['type'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
<br><hr><h3 style="display:inline";>REPORT 7 (Additional Query 2): </h3><h4 style="display:inline";>Produce a roster for a *specified section* sorted by student's last name, first name</h4>
<form action="query7.php" method="POST">
<?php
$sql = "SELECT DISTINCT sectionID FROM participate";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	echo "<br><br><strong>Select Section Number:</strong> <select name='section'>";
	while($row = mysqli_fetch_assoc($result)) {
	echo "<option value='" . $row['sectionID'] . "'>" . $row['sectionID'] . "</option>";
	}
	echo "</select>";
} else {
	echo "0 results";
}
mysqli_close($conn);
?>
<br><input type="submit" value="Run" style="background-color:#deb887;">
</form>
</body>
</html>