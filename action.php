<?php
session_start();
$ip_add = getenv("REMOTE_ADDR");
include "db.php";
if(isset($_POST["category"])){
	$category_query = "SELECT * FROM categories";
    
	$run_query = mysqli_query($con,$category_query) or die(mysqli_error($con));
	echo "
		
            
            <div class='aside'>
							<h3 class='aside-title'>Categories</h3>
							<div class='btn-group-vertical'>
	";
	if(mysqli_num_rows($run_query) > 0){
       // $i=1;
		while($row = mysqli_fetch_array($run_query)){
            
			$cid = $row["cat_id"];
			$cat_name = $row["cat_title"];
            $sql = "SELECT COUNT(*) AS count_items FROM med_products WHERE product_cat=$cid";
            $query = mysqli_query($con,$sql);
            $row = mysqli_fetch_array($query);
            $count=$row["count_items"];
           // $i++;
            
            
			echo "
					
                    <div type='button' class='btn navbar-btn category' cid='$cid'>
									
									<a href='store.php'>
										<span  ></span>
										$cat_name
										<small class='qty'>($count)</small>
									</a>
								</div>
                    
			";
            
		}
        
        
		echo "</div>";
	}
}
if(isset($_POST["brand"])){
	$brand_query = "SELECT * FROM brands";
	$run_query = mysqli_query($con,$brand_query);
	echo "
		<div class='aside'>
							<h3 class='aside-title'>Brand</h3>
							<div class='btn-group-vertical'>
	";
	if(mysqli_num_rows($run_query) > 0){
       // $i=1;
		while($row = mysqli_fetch_array($run_query)){
            
			$bid = $row["brand_id"];
			$brand_name = $row["brand_title"];
            $sql = "SELECT COUNT(*) AS count_items FROM med_products WHERE product_brand=$bid ";
            $query = mysqli_query($con,$sql);
            $row = mysqli_fetch_array($query);
            $count=$row["count_items"];
           // $i++;
			echo "
					
                    
                    <div type='button' class='btn navbar-btn selectBrand' bid='$bid'>
									
									<a href='store.php'>
										<span ></span>
										$brand_name
										<small >($count)</small>
									</a>
								</div>
			";
		}
		echo "</div>";
	}
}
if(isset($_POST["page"])){
	$sql = "SELECT * FROM med_products";
	$run_query = mysqli_query($con,$sql);
	$count = mysqli_num_rows($run_query);
	$pageno = ceil($count/12);
	for($i=1;$i<=$pageno;$i++){
		echo "
			<li><a href='#product-row' page='$i' id='page' class='active'>$i</a></li>
            
            
		";
	}
}
if(isset($_POST["getProduct"])){
	$limit = 12;
	if(isset($_POST["setPage"])){
		$pageno = $_POST["pageNumber"];
		$start = ($pageno * $limit) - $limit;
	}else{
		$start = 0;
	}
	$product_query = "SELECT * FROM med_products, categories, med_preparation, med_strength WHERE product_cat=cat_id AND product_prep = preparation_id AND product_stren = strength_id LIMIT $start,$limit";
	$run_query = mysqli_query($con,$product_query);
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			// $pro_brand = $row['product_brand'];
			$pro_title = $row['product_title'];
			$preparation = $row['preparation_title'];
			$strength = $row['strength_title'];
			
			$pro_price = $row['product_price'];
			$dis_price = $row['product_m_price'];
			$total_dis = $dis_price-$pro_price; 
			
			// $pro_image = $row['product_image'];
			
			
            
            $cat_name = $row["cat_title"];
			echo "
				
                        
                        <div class='col-md-4 col-xs-6' >
								<a href='product.php?p=$pro_id'><div class='product'>
									<div class='product-img'>
									"; ?>
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									while($row1 = mysqli_fetch_array($run_query1)){
									$new_image = $row1['product_image'];
									?>
									
										<img src='product_images/<?php echo $new_image; ?>' style='max-height: 170px;' alt=''>
									<?php 
									}
									?>									
									<?php echo "
										<div class='product-label'>
											<span class='sale'>Save</span>
											<span class='new'>रु. $total_dis</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h5 class='product-name header-cart-item-name'><small><a href='product.php?p=$pro_id'>$preparation. $pro_title - $strength</a></small></h5>
										<h5 class='product-price header-cart-item-info'><small>रु.  $pro_price<del class='product-old-price'>रु. $dis_price</del></small></h5>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
								     
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
							</div>
                        
			";
		}
	}
}


if(isset($_POST["get_seleted_Category"]) || isset($_POST["selectBrand"]) || isset($_POST["search"])){
	if(isset($_POST["get_seleted_Category"])){
		$id = $_POST["cat_id"];
		$sql = "SELECT * FROM med_products,categories WHERE product_cat = '$id' AND product_cat=cat_id";
        
	}else if(isset($_POST["selectBrand"])){
		$id = $_POST["brand_id"];
		$sql = "SELECT * FROM med_products, categories WHERE product_brand = '$id' AND product_cat=cat_id ";
	}else {
        
		$keyword = $_POST["keyword"];
        header('Location:store.php');
		$sql = "SELECT * FROM med_products,categories WHERE product_cat=cat_id AND product_keywords LIKE '%$keyword%'";
       
	}
	
	$run_query = mysqli_query($con,$sql);
	while($row=mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			// $pro_brand = $row['product_brand'];
			$pro_title = $row['product_title'];
			$pro_price = $row['product_price'];
			$dis_price = $row['product_m_price'];
			$total_dis = $dis_price-$pro_price; 
			// $pro_image = $row['product_image'];
			
			
            $image_query = "SELECT med_products.*, product_images.* FROM med_products INNER JOIN product_images ON med_products.product_id=product_images.product_id WHERE med_products.product_id = product_images.product_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									$row1 = mysqli_fetch_array($run_query1);
									$new_image = $row1['product_image'];
            
            $cat_name = $row["cat_title"];
			echo "
					
                        
                        <div class='col-md-4 col-xs-6'>
								<a href='product.php?p=$pro_id'><div class='product'>
									<div class='product-img'>"; ?>
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									while($row1 = mysqli_fetch_array($run_query1)){
									$new_image = $row1['product_image'];
									?>
									
										<img src='product_images/<?php echo $new_image; ?>' style='max-height: 170px;' alt=''>
									<?php 
									}
									?>		
										
									
									<?php echo "

									<div class='product-label'>
											<span class='sale'>Save</span>
											<span class='new'>रु. $total_dis</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h5 class='product-name header-cart-item-name'><small><a href='product.php?p=$pro_id'>$pro_title</a></small></h5>
										<h5 class='product-price header-cart-item-info'><small>रु.  $pro_price<del class='product-old-price'>रु.  $dis_price</del></small></h5>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' href='#' tabindex='0' class='add-to-cart-btn'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
							</div>
			";
		}
	}
	


	if(isset($_POST["addToCart"])){
		

		$p_id = $_POST["proId"];
		

		if(isset($_SESSION["uid"])){

		$user_id = $_SESSION["uid"];

		$sql = "SELECT * FROM cart WHERE p_id = '$p_id' AND user_id = '$user_id'";
		$run_query = mysqli_query($con,$sql);
		$count = mysqli_num_rows($run_query);
		if($count > 0){
			echo "
				<div class='alert alert-warning'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Product is already added into the cart Continue Shopping..!</b>
				</div>
			";//not in video
		} else {
			$sql = "INSERT INTO `cart`
			(`p_id`, `ip_add`, `user_id`, `qty`) 
			VALUES ('$p_id','$ip_add','$user_id','1')";
			if(mysqli_query($con,$sql)){
				echo "
					<div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Medicine is Added....</b>
					</div>
				";
			}
		}
		}else{
			$sql = "SELECT id FROM cart WHERE ip_add = '$ip_add' AND p_id = '$p_id' AND user_id = -1";
			$query = mysqli_query($con,$sql);
			if (mysqli_num_rows($query) > 0) {
				echo "
					<div class='alert alert-warning'>
							<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
							<b>Product is already added into the cart Continue Shopping..!</b>
					</div>";
					exit();
			}
			$sql = "INSERT INTO `cart`
			(`p_id`, `ip_add`, `user_id`, `qty`) 
			VALUES ('$p_id','$ip_add','-1','1')";
			if (mysqli_query($con,$sql)) {
				echo "
					<div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Your product is Added Successfully..!</b>
					</div>
				";
				exit();
			}
			
		}
		
		
		
		
	}

//Count User cart item

echo "
<style>
.dropdown-backdrop{
    position: static;
}
</style>
"; 
if (isset($_POST["count_item"])) {
	//When user is logged in then we will count number of item in cart by using user session id
	if (isset($_SESSION["uid"])) {
		$sql = "SELECT COUNT(*) AS count_item FROM cart WHERE user_id = $_SESSION[uid]";
	}else{
		//When user is not logged in then we will count number of item in cart by using users unique ip address
		$sql = "SELECT COUNT(*) AS count_item FROM cart WHERE ip_add = '$ip_add' AND user_id < 0";
	}
	
	$query = mysqli_query($con,$sql);
	$row = mysqli_fetch_array($query);
	echo $row["count_item"];
	exit();
}
//Count User cart item

//Get Cart Item From Database to Dropdown menu
if (isset($_POST["Common"])) {

	if (isset($_SESSION["uid"])) {
		//When user is logged in this query will execute
		
		
		$sql = "SELECT a.product_id,a.product_brand,a.product_title, a.product_price,a.product_pack_qty, b.id,b.qty,c.pack_id, c.pack_title, d.preparation_id, d.preparation_title FROM med_products a,cart b, med_packaging c, med_preparation d WHERE a.product_id=b.p_id AND a.product_pack = c.pack_id AND a.product_prep =d.preparation_id AND b.user_id='$_SESSION[uid]' ";
	}else{
		//When user is not logged in this query will execute
		$sql = "SELECT a.product_id,a.product_brand,a.product_title, a.product_price,a.product_pack_qty, b.id,b.qty,c.pack_id, c.pack_title, d.preparation_id, d.preparation_title FROM med_products a,cart b, med_packaging c, med_preparation d WHERE a.product_id=b.p_id AND a.product_pack = c.pack_id AND a.product_prep =d.preparation_id AND b.ip_add='$ip_add' AND b.user_id < 0 ";
	}
	$query = mysqli_query($con,$sql);
	if (isset($_POST["getCartItem"])) {
		//display cart item in dropdown menu
		if (mysqli_num_rows($query) > 0) {
			$n=0;
			$total_price=0;
			while ($row=mysqli_fetch_array($query)) {
                
				$n++;
				$product_id = $row["product_id"];
				$product_title = $row["product_title"];
				$product_price = $row["product_price"];
				$total_dis = $dis_price-$pro_price; 
				$pro_qty = $row['product_pack_qty'];
				$pack = $row['pack_title'];
				$prep = $row['preparation_title'];
				
				// $product_image = $row["product_image"];
				
									
				$cart_item_id = $row["id"];
				$qty = $row["qty"];
				$total_price=$total_price+($product_price*$qty);
				echo '
					
                    
                    <div class="product-widget">'; ?>
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $product_id GROUP BY product_id HAVING product_id = $product_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									while($row1 = mysqli_fetch_array($run_query1)){
									$new_image = $row1['product_image'];
									?>
									
										<div class="product-img">
													<img src="product_images/<?php echo $new_image; ?>" alt="">
												</div>
									<?php 
									}
									?>	
					
												
												
												
												<?php echo ' 
												
												<div class="product-body">
													<h5 class="product-name"><small>'.$prep.'. <a href="#">'.$product_title.'</a> &nbsp; &nbsp; &nbsp;   X '.  $qty.'</small></h3>
													<h4 class="product-price"><small><span class="qty">'.$n.')</span>रु. '.$product_price*$qty.'</small></h4>
												</div>
												
											</div>'
                    
                    
                    ;
				
			}
            
            echo '<div class="cart-summary">
				    <small class="qty">'.$n.' Medicine(s) selected</small>
				    <h5>Grand Total: रु. '.$total_price.'</h5>
				</div>'
            ?>
				
				
			<?php
			
			exit();
		}
	}
	
    
    
    if (isset($_POST["checkOutDetails"])) {
		if (mysqli_num_rows($query) > 0) {
			//display user cart item with "Ready to checkout" button if user is not login
			echo '<div class="main ">
			<div class="table-responsive">
			<form method="post" action="login_form.php">
			
	               <table id="cart" class="table table-hover table-condensed" id="">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:7%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
                    ';
				$n=0;
				while ($row=mysqli_fetch_array($query)) {
					$n++;
					$product_id = $row["product_id"];
					$product_title = $row["product_title"];
					$product_price = $row["product_price"];
					$product_price = $row["product_price"];
					$dis_price = $row['product_m_price'];
					$pro_qty = $row['product_pack_qty'];
					$pack = $row['pack_title'];
					$prep = $row['preparation_title'];
					
					
					
					$cart_item_id = $row["id"];
					$qty = $row["qty"];

					echo 
						'
                             
						<tr>
							<td data-th="Product" >
								<div class="row">
								
									<div class="col-sm-4 ">
									
									'; ?> 
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $product_id GROUP BY product_id HAVING product_id = $product_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									while($row1 = mysqli_fetch_array($run_query1)){
									$new_image = $row1['product_image'];
									?>
									
										<img src="product_images/<?php echo $new_image; ?>" style="height: 70px;width:75px;"/>
									<?php 
									}
									?>	
									
									
								<?php echo '	
							
									<h4 class="nomargin product-name header-cart-item-name"><a href="product.php?p='.$product_id.'">'.$prep.'. ' . $product_title.'</a></h4>
									</div>
									<div class="col-sm-6">
										<div style="max-width=50px;">
										<p>Please click refresh (<i class="fa fa-refresh"></i> ->) button if you change quantity, here; the quantity 1 = ('. $pro_qty .' - '. $prep .') &nbsp; '. $pack.' of '. $prep.'. ' . $product_title.'</p>
										</div>
									</div>
									
									
								</div>
							</td>
                            <input type="hidden" name="product_id[]" value="'.$product_id.'"/>
				            <input type="hidden" name="" value="'.$cart_item_id.'"/>
							<td data-th="Price"><input type="text" class="form-control price" value="'.$product_price.'" readonly="readonly"></td>
							<td data-th="Quantity">
								<input type="text" class="form-control qty" value="'.$qty.'" >
							</td>
							<td data-th="Subtotal" class="text-center"><input type="text" class="form-control total" value="'.$product_price.'" readonly="readonly"></td>
							<td class="actions" data-th="">
							<div class="btn-group">
								<a href="#" class="btn btn-info btn-sm update" update_id="'.$product_id.'"><i class="fa fa-refresh"></i></a>
								
								<a href="#" class="btn btn-danger btn-sm remove" remove_id="'.$product_id.'"><i class="fa fa-trash-o"></i></a>		
							</div>							
							</td>
						</tr>
					
                            
                            ';
				}
				
				echo '</tbody>
				<tfoot>
					
					<tr>
						<td><a href="store.php" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><b class="net_total" ></b></td>
						<div id="issessionset"></div>
                        <td>
							
							';
				if (!isset($_SESSION["uid"])) {
					echo '
					
							<a href="" data-toggle="modal" data-target="#Modal_register" class="btn btn-success">Ready to Checkout</a></td>
								</tr>
							</tfoot>
				
							</table></div></div>';
                }else if(isset($_SESSION["uid"])){
					//Paypal checkout form
					echo '
					</form>
					
						<form action="checkout.php" method="post">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="business" value="sdahal2@gmail.com">
							<input type="hidden" name="upload" value="1">';
							  
							$x=0;
							$sql = "SELECT a.product_id,a.product_title, a.product_price,b.id,b.qty FROM med_products a,cart b WHERE a.product_id=b.p_id AND b.user_id='$_SESSION[uid]'";
							$query = mysqli_query($con,$sql);
							while($row=mysqli_fetch_array($query)){
								$x++;
								echo  	

									'
									<input type="hidden" name="prod_id_'.$x.'" value="'.$row["product_id"].'">
									<input type="hidden" name="total_count" value="'.$x.'">
									<input type="hidden" name="item_name_'.$x.'" value="'.$row["product_title"].'">
								  	 <input type="hidden" name="item_number_'.$x.'" value="'.$x.'">
								     <input type="hidden" name="amount_'.$x.'" value="'.$row["product_price"].'">
								     <input type="hidden" name="quantity_'.$x.'" value="'.$row["qty"].'">';
								}
							  
							echo   
								'<input type="hidden" name="return" value="payment_success.php"/>
					                <input type="hidden" name="notify_url" value="payment_success.php">
									<input type="hidden" name="cancel_return" value="cancel.php"/>
									<input type="hidden" name="currency_code" value="NPR "/>
									<input type="hidden" name="custom" value="'.$_SESSION["uid"].'"/>
									<input type="submit" id="submit" name="login_user_with_product" name="submit" class="btn btn-success" value="Ready to Checkout">
									</form></td>
									
									</tr>
									
									</tfoot>
									
							</table></div></div>    
								';
				}
			}
	}
	
	
}

//Remove Item From cart
if (isset($_POST["removeItemFromCart"])) {
	$remove_id = $_POST["rid"];
	if (isset($_SESSION["uid"])) {
		$sql = "DELETE FROM cart WHERE p_id = '$remove_id' AND user_id = '$_SESSION[uid]'";
	}else{
		$sql = "DELETE FROM cart WHERE p_id = '$remove_id' AND ip_add = '$ip_add'";
	}
	if(mysqli_query($con,$sql)){
		echo "<div class='alert alert-danger'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Product is removed from cart</b>
				</div>";
		exit();
	}
}


//Update Item From cart
if (isset($_POST["updateCartItem"])) {
	$update_id = $_POST["update_id"];
	$qty = $_POST["qty"];
	if (isset($_SESSION["uid"])) {
		$sql = "UPDATE cart SET qty='$qty' WHERE p_id = '$update_id' AND user_id = '$_SESSION[uid]'";
	}else{
		$sql = "UPDATE cart SET qty='$qty' WHERE p_id = '$update_id' AND ip_add = '$ip_add'";
	}
	if(mysqli_query($con,$sql)){
		echo "<div class='alert alert-info'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Product is updated</b>
				</div>";
		exit();
	}
}
?>