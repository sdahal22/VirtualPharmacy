<?php
session_start();
$ip_add = getenv("REMOTE_ADDR");
include "db.php";

if(isset($_POST["categoryhome"])){
	$category_query = "SELECT * FROM categories WHERE cat_id!=1";
    
	$run_query = mysqli_query($con,$category_query) or die(mysqli_error($con));
	echo "
		
            
            
				<!-- responsive-nav -->
				<div id='responsive-nav'>
					<!-- NAV -->
					<ul class='main-nav nav navbar-nav'>
                    <li class='active'><a href='index.php'>Home</a></li>
                      <li class=''><a href='store.php'>Store</a></li>
                    
	";
	// if(mysqli_num_rows($run_query) > 0){
	//	$i=1;
	//	while($row = mysqli_fetch_array($run_query)){
		//	$cid = $row["cat_id"];
		//	$cat_name = $row["cat_title"];
            
         //   $sql = "SELECT COUNT(*) AS count_items FROM med_products,categories WHERE product_cat=$i";
         //   $query = mysqli_query($con,$sql);
         //   $row = mysqli_fetch_array($query);
         //   $count=$row["count_items"]; 
		//	$i++;
         //   echo "
		  //  <li class='categoryhome' cid='$cid'><a href='store.php'>$cat_name</a></li>";
		// }
        
		echo "</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
               
			";
//	}
}


if(isset($_POST["page"])){
	$sql = "SELECT * FROM med_products";
	$run_query = mysqli_query($con,$sql);
	$count = mysqli_num_rows($run_query);
	$pageno = ceil($count/2);
	for($i=1;$i<=$pageno;$i++){
		echo "
			<li><a href='#product-row' page='$i' id='page'>$i</a></li>
            
            
		";
	}
}
if(isset($_POST["getProducthome"])){
	$limit = 3;
	if(isset($_POST["setPage"])){
		$pageno = $_POST["pageNumber"];
		$start = ($pageno * $limit) - $limit;
	}else{
		$start = 0;
	}
	$product_query = "SELECT * FROM med_products, brands, categories WHERE product_brand=brand_id AND product_cat=cat_id LIMIT $start,$limit";
	$run_query = mysqli_query($con,$product_query);
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['brand_title'];
			$pro_price = $row['product_price'];
			$dis_price = $row['product_m_price'];
			// $pro_image = $row['product_image'];
           
									
            $cat_name = $row["cat_title"];
			echo "
				
                       <div class='product-widget'>
                                <a href='product.php?p=$pro_id'> "; ?>
								
								
								<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
									$run_query1 = mysqli_query($con,$image_query);
									while($row1 = mysqli_fetch_array($run_query1)){
									$new_image = $row1['product_image'];
									?>
									
										<div class='product-img'>
										<img src='product_images/<?php echo $new_image; ?>' alt=''>
									</div>
									<?php 
									}
									?>	
									
									
									<?php echo "
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price'>रु. $pro_price<del class='product-old-price'>$dis_price</del></h4>
									</div></a>
								</div>
                        
			";
		}
	}
}


if(isset($_POST["gethomeProduct"])){
	$limit = 9;
	if(isset($_POST["setPage"])){
		$pageno = $_POST["pageNumber"];
		$start = ($pageno * $limit) - $limit;
	}else{
		$start = 0;
	}
    
	$product_query = "SELECT * FROM med_products,categories WHERE product_cat=cat_id LIMIT 4";
	$run_query = mysqli_query($con,$product_query);
	if(mysqli_num_rows($run_query) > 0){
        
		while($row = mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['brand_title'];
			$pro_price = $row['product_price'];
			$dis_price = $row['product_m_price'];
			$new_price = $dis_price - $pro_price;
			$pro_image = $row['product_image'];
            
            $cat_name = $row["cat_title"];
            
			echo "
				
                        
                                <div class='col-md-3 col-xs-6'>
								<a href='product.php?p=$pro_id'><div class='product'>
									<div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										<div class='product-label'>
											<span class='sale'>Save</span>
											<span class='new'>रु. $new_price</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>रु. $pro_price<del class='product-old-price'> $dis_price</del></h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										<div class='product-btns'>
											<button class='add-to-wishlist'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>add to compare</span></button>
											<button class='quick-view'><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
										</div>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                                </div>
							
                        
			";
		}
        ;
      
}
    
	}
    
if(isset($_POST["get_seleted_Category"]) || isset($_POST["selectBrand"]) || isset($_POST["search"])){
	if(isset($_POST["get_seleted_Category"])){
		$id = $_POST["cat_id"];
		$sql = "SELECT * FROM med_products,categories, brands WHERE product_cat = '$id' AND product_cat=cat_id AND brand_id = product_brand";
        
	}else if(isset($_POST["selectBrand"])){
		$id = $_POST["brand_id"];
		$sql = "SELECT * FROM med_products, categories, brands WHERE product_brand = '$id' AND brand_id = product_brand AND product_cat=cat_id ";
	}else {
        
		$keyword = $_POST["keyword"];
        header('Location:store.php');
		$sql = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND product_brand=brand_id AND product_keywords LIKE '%$keyword%'";
       
	}
	
	$run_query = mysqli_query($con,$sql);
	while($row=mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['cat_title'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['brand_title'];
			$pro_price = $row['product_price'];
			$dis_price = $row['product_m_price'];
			$new_dis = $dis_price - $pro_price; 
			// $pro_image = $row['product_image'];
			
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
									
										<img  src='product_images/<?php echo $new_image; ?>' style='max-height: 170px;' alt=''>
									<?php 
									}
									?>	
										
										
										
										<?php echo "
										<div class='product-label'>
											<span class='sale'>Save</span>
											<span class='new'>रु. $new_dis</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>रु. $pro_price<del class='product-old-price'> $dis_price</del></h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										<div class='product-btns'>
											<button class='add-to-wishlist' tabindex='0'><i class='fa fa-heart-o'></i><span class='tooltipp'>add to wishlist</span></button>
											<button class='add-to-compare'><i class='fa fa-exchange'></i><span class='tooltipp'>add to compare</span></button>
											<button class='quick-view' ><i class='fa fa-eye'></i><span class='tooltipp'>quick view</span></button>
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