<?php                                  
$uin= "UIN";
$full name= "Name";
$subject= "Subject";
$theme= "Theme";
$email= "Email";
$phone number= "Phone number";
$full name in english= "Full name";
$project="Project work file (docx, pdf, pptx)"


$conn = new mysqli($uin, $full name, $subject $theme, $email, $phone number, $full name in english, $project);

if ($conn->connect_error) {
    die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

$sql = "SELECT * FROM Users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["UIN"]."</td><td>".$row["Name"]."</td><td>".$row["Subject"]."</td><td>".$row["Theme"]."</td><td>".$row["Email"]."</td><td>".$row["Phone number"]."</td><td>".$row["Name in english"]."</td><td>".$row["Project work file"]."</td></tr>";
    }
} else {
    echo "Нет результатов";
}

$conn->close();
?>
