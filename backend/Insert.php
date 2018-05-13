<?php 
 $content=$title=" ";
	$content= check_input($_POST["content"]);
	$title= check_input($_POST["title"]);
	 

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "ip_project";
 
    try {
        $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $query= "INSERT INTO news VALUES ('$content','$title','')";

        $stmt = $connect->prepare($query); 
        $stmt->execute();
       
         
        echo "OK 200";
 
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

?>
<?php 

        header("Location: ../insert");
      exit();
 ?>