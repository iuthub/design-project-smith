<?php 
 $content=$title=$id="";

if ($_SERVER["REQUEST_METHOD"]=="POST") { 
	$content=check_input($_POST["content"]);
    $title=check_input($_POST["title"]);
    $id=check_input($_POST["id"]);
     
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "ip_project";

    try {
        $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $query="UPDATE News SET Content = '$content',Title = '$title' WHERE id = '$id'";
        $stmt = $connect->prepare($query); 
        $stmt->execute();
         
         echo "OK 200";
 
    }
    catch (PDOException $except) {
        echo  $except->getMessage();
    }
    $connect = null;

}
 function check_input($data){
 	$data=trim($data);
 	$data=stripcslashes($data);
 	$data=htmlspecialchars($data);
 	return $data;
 }

?><?php 

     header("Location: ../update");
        exit();
 ?>