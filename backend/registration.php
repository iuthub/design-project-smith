 <?php 
 $name=$sname=$login=$passw="";
 

 
	$name=check_input($_POST["name"]);
	$sname=check_input($_POST["sname"]);
	$login=check_input($_POST["login"]);
	$passw=check_input($_POST["password"]);

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "ip_project";

    try {
        $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


        $stmt = $connect->prepare("INSERT INTO user 
        							VALUES ('$name','$sname','$login','$passw')");
        $stmt->execute();
               
    }
    catch (PDOException $except) {
        echo  $except->getMessage();
    }
    $connect = null;
 

 function check_input($data){
 	$data=trim($data);
 	$data=stripcslashes($data);
 	$data=htmlspecialchars($data);
 	return $data;
 }
 
?> <?php 

        header("Location: ../registration");
        exit();
 ?>
 /*//header("Location: http://example.com/myOtherPage.php");
//die();
// similar behavior as an HTTP redirect
window.location.replace("http://stackoverflow.com");

// similar behavior as clicking on a link
window.location.href = "/../home";*/