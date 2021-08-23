<?php
session_start();
include "db.php";
if (isset($_SESSION["uid"])) {

	$f_name = $_POST["firstname"];
	$email = $_POST['email'];
	$address = $_POST['address'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $zip= $_POST['zip'];
    $cardname= $_POST['cardname'];
    $cardnumber= $_POST['cardNumber'];
    $expdate= $_POST['expdate'];
    $cvv= $_POST['cvv'];
    $user_id=$_SESSION["uid"];
    $cardnumberstr=(string)$cardnumber;
    $total_count=$_POST['total_count'];
    $prod_total = $_POST['total_price'];
	date_default_timezone_set("Asia/Kathmandu");
	$ord_dat=date("Y-m-d h:i:s");
	$order_date = $ord_dat; 

    
    
    $sql0="SELECT order_id from `orders_info`";
    $runquery=mysqli_query($con,$sql0);
    if (mysqli_num_rows($runquery) == 0) {
        echo( mysqli_error($con));
        $order_id=1;
    }else if (mysqli_num_rows($runquery) > 0) {
        $sql2="SELECT MAX(order_id) AS max_val from `orders_info`";
        $runquery1=mysqli_query($con,$sql2);
        $row = mysqli_fetch_array($runquery1);
        $order_id= $row["max_val"];
        $order_id=$order_id+1;
        echo( mysqli_error($con));
    }

	$sql = "INSERT INTO `orders_info` 
	(`order_id`,`user_id`,`f_name`, `email`,`address`, 
	`city`, `state`, `zip`, `cardname`,`cardnumber`,`expdate`,`prod_count`,`total_amt`,`cvv`,`order_date`) 
	VALUES ($order_id, '$user_id','$f_name','$email', 
    '$address', '$city', '$state', '$zip','$cardname','$cardnumberstr','$expdate','$total_count','$prod_total','$cvv','$order_date')";

// to send email also 
				
                $toEmail = 'nationaldrugh@gmail.com,sdahal2@gmail.com';
                $emailSubject = 'Medicine order request';
                $htmlContent = '<h4>New medicine order by '. $f_name . '</h4>
                    <p><b>Full Name:</b> '.$f_name.'</p>
                    <p><b>Email/Mobile:</b> '.$email .' / '. $mobile. '</p>
                    <p><b>Medicine item/s:</b> '.$total_count.'</p>
                    <p><b>Worth Rs.:</b><br/>'.$prod_total.'</p>';
                $headers = "From: $f_name"." <".$email.">";
                $message = "{$mime_boundary}\n" . $htmlContent . "\n\n";
				$headers = "From: $f_name"." <".$email.">";
				$returnpath = "-f" . $email;
				$headers .= "\r\n". "MIME-Version: 1.0";
                $headers .= "\r\n". "Content-type:text/html;charset=UTF-8";
				$mail = mail($toEmail, $emailSubject, $message, $headers, $returnpath); 
// end of email sent

    if(mysqli_query($con,$sql)){
        $i=1;
        $prod_id_=0;
        $prod_price_=0;
        $prod_qty_=0;
        while($i<=$total_count){
            $str=(string)$i;
            $prod_id_+$str = $_POST['prod_id_'.$i];
            $prod_id=$prod_id_+$str;		
            $prod_price_+$str = $_POST['prod_price_'.$i];
            $prod_price=$prod_price_+$str;
            $prod_qty_+$str = $_POST['prod_qty_'.$i];
            $prod_qty=$prod_qty_+$str;
            $sub_total=(int)$prod_price*(int)$prod_qty;
            $sql1="INSERT INTO `order_products` 
            (`order_id`,`product_id`,`qty`,`amt`) 
            VALUES ('$order_id','$prod_id','$prod_qty','$sub_total')";
            if(mysqli_query($con,$sql1)){
                $del_sql="DELETE from cart where user_id=$user_id";
                if(mysqli_query($con,$del_sql)){
					echo "<font color='green'><h1 align='center'>Order completed!!!</h1>";
                    echo"<script>window.location.href='user_profile.php'</script>";
                }else{
                    echo(mysqli_error($con));
                }

            }else{
                echo(mysqli_error($con));
            }
            $i++;


        }
    }else{

        echo(mysqli_error($con));
        
    }
    
}else{
    echo"<script>window.location.href='index.php'</script>";
}
	




?>