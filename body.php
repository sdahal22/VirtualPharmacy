<?php
$postData = $uploadedFile = $statusMsg = '';
$msgClass = 'errordiv';
if(isset($_POST['submit'])){
    // Get the submitted form data
    $postData = $_POST;
    $email = $_POST['email'];
    $name = $_POST['name'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];
    
    // Check whether submitted data is not empty
    if(!empty($email) && !empty($name) && !empty($subject) && !empty($message)){
        
        // Validate email
        if(filter_var($email, FILTER_VALIDATE_EMAIL) === false){
            $statusMsg = 'Please enter your valid email.';
        }else{
            $uploadStatus = 1;
            
            // Upload attachment file
            if(!empty($_FILES["attachment"]["name"])){
                
                // File path config
                $targetDir = "uploads/";
                $fileName = basename($_FILES["attachment"]["name"]);
                $targetFilePath = $targetDir . $fileName;
                $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
                
                // Allow certain file formats
                $allowTypes = array('pdf', 'doc', 'docx', 'jpg', 'png', 'jpeg');
                if(in_array($fileType, $allowTypes)){
                    // Upload file to the server
                    if(move_uploaded_file($_FILES["attachment"]["tmp_name"], $targetFilePath)){
                        $uploadedFile = $targetFilePath;
                    }else{
                        $uploadStatus = 0;
                        $statusMsg = "Sorry, there was an error uploading your file.";
                    }
                }else{
                    $uploadStatus = 0;
                    $statusMsg = 'Sorry, only PDF, DOC, JPG, JPEG, & PNG files are allowed to upload.';
                }
            }
            
            if($uploadStatus == 1){
                
                // Recipient
                $toEmail = 'nationaldrugh@gmail.com,sdahal2@gmail.com';

                // Sender
				
                $from = $email;
                $fromName = $name;

                
                // Subject
                $emailSubject = 'Prescription Request Submitted by '.$name;
                
                // Message 
                $htmlContent = '<h2>Prescription Request Submitted to National Drug House</h2>
                    <p><b>Name:</b> '.$name.'</p>
                    <p><b>Email:</b> '.$email.'</p>
                    <p><b>Mobile no:</b> '.$subject.'</p>
                    <p><b>Message:</b><br/>'.$message.'</p>';
                
                // Header for sender info
                $headers = "From: $fromName"." <".$from.">";

                if(!empty($uploadedFile) && file_exists($uploadedFile)){
                    
                    // Boundary 
                    $semi_rand = md5(time()); 
                    $mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 
                    
                    // Headers for attachment 
                    $headers .= "\nMIME-Version: 1.0\n" . "Content-Type: multipart/mixed;\n" . " boundary=\"{$mime_boundary}\""; 
                    
                    // Multipart boundary 
                    $message = "--{$mime_boundary}\n" . "Content-Type: text/html; charset=\"UTF-8\"\n" .
                    "Content-Transfer-Encoding: 7bit\n\n" . $htmlContent . "\n\n"; 
                    
                    // Preparing attachment
                    if(is_file($uploadedFile)){
                        $message .= "--{$mime_boundary}\n";
                        $fp =    @fopen($uploadedFile,"rb");
                        $data =  @fread($fp,filesize($uploadedFile));
                        @fclose($fp);
                        $data = chunk_split(base64_encode($data));
                        $message .= "Content-Type: application/octet-stream; name=\"".basename($uploadedFile)."\"\n" . 
                        "Content-Description: ".basename($uploadedFile)."\n" .
                        "Content-Disposition: attachment;\n" . " filename=\"".basename($uploadedFile)."\"; size=".filesize($uploadedFile).";\n" . 
                        "Content-Transfer-Encoding: base64\n\n" . $data . "\n\n";
                    }
                    
                    $message .= "--{$mime_boundary}--";
                    $returnpath = "-f" . $email;
                    
                    // Send email
                    $mail = mail($toEmail, $emailSubject, $message, $headers, $returnpath);
                    
                    // Delete attachment file from the server
                    @unlink($uploadedFile);
                }else{
                     // Set content-type header for sending HTML email
                    $headers .= "\r\n". "MIME-Version: 1.0";
                    $headers .= "\r\n". "Content-type:text/html;charset=UTF-8";
                    
                    // Send email
                    $mail = mail($toEmail, $emailSubject, $htmlContent, $headers); 
                }
                
                // If mail sent
                if($mail){
                    $statusMsg = 'Your prescription has been submitted successfully, <br/> Chemist will revert to you soon for the same!';
                    $msgClass = 'succdiv';
                    
                    $postData = '';
                }else{
                    $statusMsg = 'Your request submission failed, please try again with small size photo of your prescription.';
                }
            }
        }
    }else{
        $statusMsg = 'Please fill all the fields.';
    }
}
?> 
<!-- Start of recapcha 3 google -->


<!-- end of recapcha 3 google -->

  <div class="main main-raised">
        <div class="container mainn-raised" style="width:100%;">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
   

    <!-- Wrapper for slides -->
 <div class="carousel-inner">

      <div class="item active">
        <img src="img/banner3.jpg" alt="National Drug House" style="width:100%;">
        
      </div>

      <div class="item">
        <img src="img/banner2.jpg" style="width:100%;">
        
      </div>
    
      <div class="item">
        <img src="img/banner4.jpg" alt="National Drug House" style="width:100%;">
        
      </div>
      <div class="item">
        <img src="img/banner1.jpg" alt="National Drug House" style="width:100%;">
        
      </div>
      <div class="item">
        <img src="img/banner3.jpg" alt="National Drug House" style="width:100%;">
        
      </div>
  
    </div>

    <!-- Left and right controls -->
   <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only" >Previous</span>
    </a>
    <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> 
  
</div>
     


		<!-- SECTION -->
		<!-- <div class="section mainn mainn-raised"> -->
		
		
			<!-- container -->
		<!-- 	<div class="container"> -->
			
				<!-- row -->
		<!--		<div class="row"> -->
					<!-- shop -->
				<!--	<div class="col-md-4 col-xs-6">
						<a href="product.php?p=78"><div class="shop">
							<div class="shop-img">
								<img src="./img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Laptop<br>Collection</h3>
								<a href="product.php?p=78" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div> -->
					<!-- /shop -->

					<!-- shop -->
				<!-- 	<div class="col-md-4 col-xs-6">
						<a href="product.php?p=72"><div class="shop">
							<div class="shop-img">
								<img src="./img/shop03.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Accessories<br>Collection</h3>
								<a href="product.php?p=72" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div> -->
					<!-- /shop -->

					<!-- shop -->
				<!-- 	<div class="col-md-4 col-xs-6">
						<a href="product.php?p=79"><div class="shop">
							<div class="shop-img">
								<img src="./img/shop02.png" alt="">
							</div>
							<div class="shop-body">
								<h3>Cameras<br>Collection</h3>
								<a href="product.php?p=79" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
                            </div></a>
					</div> -->
					<!-- /shop -->
			<!--	</div> -->
				<!-- /row -->
			<!-- </div> -->
			<!-- /container -->
			
			
			
	<!-- 	</div> -->
		<!-- /SECTION -->
		  
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-6">
						<div class="section-title">
							<h5 class="title">Do you have prescription? Send it to order medicine/s >>>> </h5>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									
									<li class="active">
									<!-- Display submission status -->
<?php if(!empty($statusMsg)){ ?>
    <p class="statusMsg <?php echo !empty($msgClass)?$msgClass:''; ?>"><?php echo $statusMsg; ?></p>
<?php } ?>
<style>
.responsive {
  width: 100%;
  max-width: 400px;
  height: auto;
}
</style>
<img src="img/prescription_image.png" class="img-circle responsive" width="650" height="450" alt="Doctors Prescription">


									</li>
									
								</ul>
							</div>
						</div>
					</div> 
					<!-- /section title -->
					
					<!-- section title -->
					<div class="col-md-6">
						<div class="section-title">
							
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									
									<li class="active">
									
<!-- code for captcha captch v3 check server side integration -->
  <?php // Check if form was submitted:
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['recaptcha_response'])) {

    // Build POST request:
    $recaptcha_url = 'https://www.google.com/recaptcha/api/siteverify';
    $recaptcha_secret = '6LfRH_cUAAAAACA1AtbVlT2qRGv3rAZ4m2yIFbmR';
    $recaptcha_response = $_POST['recaptcha_response'];

    // Make and decode POST request:
    $recaptcha = file_get_contents($recaptcha_url . '?secret=' . $recaptcha_secret . '&response=' . $recaptcha_response);
    $recaptcha = json_decode($recaptcha);

    // Take action based on the score returned:
    if ($recaptcha->score >= 0.5) {
        // Verified - send email
    } else {
        // Not verified - show form error
    }

} ?>
  <!-- end of google captcha v3 check server side -->
<!-- Display contact form -->
<form method="post" action="" enctype="multipart/form-data">
    <div class="form-group">
        <input type="text" name="name" class="form-control" value="<?php echo !empty($postData['name'])?$postData['name']:''; ?>" placeholder="Name" required="">
    </div>
    <div class="form-group">
        <input type="email" name="email" class="form-control" value="<?php echo !empty($postData['email'])?$postData['email']:''; ?>" placeholder="Email address" required="">
    </div>
    <div class="form-group">
        <input type="tel" name="subject" class="form-control" value="<?php echo !empty($postData['subject'])?$postData['subject']:''; ?>" placeholder="Mobile no" pattern="^\d{10}$" required="">
    </div>
    <div class="form-group">
        <textarea name="message" class="form-control" placeholder="Write your message here" required=""><?php echo !empty($postData['message'])?$postData['message']:''; ?></textarea>
    </div>
    <div class="form-group">Prescription Image size < 0.5MB
        <input type="file" name="attachment" class="form-control" required>
    </div>
    <div class="submit">
        <input type="submit" name="submit" class="btn" value="Send">
    </div>
	
                        <input type="hidden" name="recaptcha_response" id="recaptchaResponse">

</form>

									</li>
									</form>
								</ul>
							</div>
						</div>
					</div> 
					<!-- /section title -->

					<!-- Products tab & slick -->
					
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
	<!--	 <div id="hot-deal" class="section mainn mainn-raised"> -->
			<!-- container -->
		<!--	<div class="container"> -->
				<!-- row -->
				<!--  <div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							
							<h2 class="text-uppercase">We will preparare medicine pack for your prescription</h2>
							<p>Upload your prescription</p>
							<input type="file" align="center" class="btn btn-warning" name="prescription" value="Upload" required>
							<input type="button" class="btn btn-info" name="submit" value="Send" required>
						</div>
					</div>
				</div>  -->
				<!-- /row -->
			<!-- </div> -->
			<!-- /container -->
	<!-- </div> -->
		<!-- /HOT DEAL SECTION -->
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				
				<!-- row -->
				<div class="row">

					<!-- section title -->
				<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Medicines </h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab1">List</a></li>
								<!--	<li><a data-toggle="tab" href="#tab2">Shirts</a></li>
									<li><a data-toggle="tab" href="#tab3">T-Shirts</a></li>
									<li><a data-toggle="tab" href="#tab4">Pants</a></li> -->
								</ul>
							</div>
						</div>
					</div> 
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
				<?php
                    include 'db.php';
								
				$product_query = "SELECT * FROM med_products,categories, brands, med_preparation, med_strength WHERE product_cat=cat_id AND product_brand=brand_id AND product_prep = preparation_id AND product_stren = strength_id";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
						$prep_title = $row['preparation_title'];
						$strength = $row['strength_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];
						?>
                        
                        
                                
								<div class='product'>
								<!--	<a href='product.php?p=$pro_id'><div class='product-img'>"; ?> -->
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									// $image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
								//	$run_query1 = mysqli_query($con,$image_query);
									// while($row1 = mysqli_fetch_array($run_query1)){
									// $new_image = $row1['product_image'];
									?>
									
										<!-- <img src='product_images/<?php // echo $new_image; ?>' style='max-height: 175px;' alt=''> -->
									<?php 
									// }
									?>	
										
										
										
									<!--	
										<div class='product-label'>
											<span class='sale'>-8%</span>
											<span class='new'>NEW</span>
										</div>
									</div></a>  -->
									
									<?php 
									echo "
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'><small>$prep_title. $pro_title - $strength</a></small></h3>
										<h4 class='product-price header-cart-item-info'><small> रु.  $pro_price</small><del class='product-old-price'><small> रु.  $dis_price </small></del></h4>
										
										
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
      
}
?>
										
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
					
				</div>
				<!-- /row -->
				
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

<!-- Section -->
		<div class="section main main-raised">
		<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div id="get_category">
				        </div>
						<!-- /aside Widget -->

						

						<!-- aside Widget -->
				<!-- 	<div id="get_brand">
				        </div> -->
						<!-- /aside Widget -->

						
					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store top filter -->
					<!--	<div class="store-filter clearfix">
							<div class="store-sort">
								<label>
									Sort By:
									<select class="input-select">
										<option value="0">Popular</option>
										<option value="1">Position</option>
									</select>
								</label>

								<label>
									Show:
									<select class="input-select">
										<option value="0">20</option>
										<option value="1">50</option>
									</select>
								</label>
							</div>
							<ul class="store-grid">
								<li class="active"><i class="fa fa-th"></i></li>
								<li><a href="#"><i class="fa fa-th-list"></i></a></li>
							</ul>
						</div> -->
						<!-- /store top filter -->

						<!-- store products -->
						<div class="row" id="product-row">
						<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
							<!-- product -->
							<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
							
							<!-- /product -->
						</div>
						<!-- /store products -->

						<!-- store bottom filter -->
						<div class="store-filter clearfix">
							<span class="store-qty">Showing 12-100 products</span>
							<ul class="store-pagination" id="pageno">
								<li ><a class="active" href="#aside">1</a></li>
								
								<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
       

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>
						

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div id="get_product_home">
								<!-- product widget -->
								
								<!-- product widget -->
							</div>

				<div id="get_product_home2">
								
				<?php	$product_query = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND  product_brand=brand_id ORDER BY RAND() LIMIT 3";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                       ?>
								<!-- product widget -->
								<div class="product-widget">
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
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
									
									
									
									<div class="product-body">
										<p class="product-category"><?php echo $cat_name; ?></p>
										<h3 class="product-name"><small><a href="#"><?php echo $pro_brand; ?></a></small></h3>
										<h4 class="product-price">रु.  <?php echo $pro_price; ?> <del class="product-old-price">रु. <?php echo $dis_price; ?></del></h4>
									</div>
								</div>
								<!-- product widget -->
								
					<?php } 
				} ?>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
								<?php	$product_query = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND  product_brand=brand_id ORDER BY RAND() LIMIT 3";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                       ?>
								<!-- product widget -->
								<div class="product-widget">
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
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
									
									
									
									<div class="product-body">
										<p class="product-category"><?php echo $cat_name; ?></p>
										<h3 class="product-name"><small><a href="#"><?php echo $pro_brand; ?></a></small></h3>
										<h4 class="product-price">रु.  <?php echo $pro_price; ?> <del class="product-old-price">रु. <?php echo $dis_price; ?></del></h4>
									</div>
								</div>
								<!-- product widget -->
								
					<?php } 
				} ?>

							</div>

							<div>
								<?php	$product_query = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND  product_brand=brand_id ORDER BY RAND() LIMIT 3";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                       ?>
								<!-- product widget -->
								<div class="product-widget">
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
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
									
									
									
									<div class="product-body">
										<p class="product-category"><?php echo $cat_name; ?></p>
										<h3 class="product-name"><small><a href="#"><?php echo $pro_brand; ?></a></small></h3>
										<h4 class="product-price">रु.  <?php echo $pro_price; ?> <del class="product-old-price">रु. <?php echo $dis_price; ?></del></h4>
									</div>
								</div>
								<!-- product widget -->
								
					<?php } 
				} ?>

								
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs">
					    
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
								<?php	$product_query = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND  product_brand=brand_id ORDER BY RAND() LIMIT 3";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                       ?>
								<!-- product widget -->
								<div class="product-widget">
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
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
									
									
									
									<div class="product-body">
										<p class="product-category"><?php echo $cat_name; ?></p>
										<h3 class="product-name"><small><a href="#"><?php echo $pro_brand; ?></a></small></h3>
										<h4 class="product-price">रु.  <?php echo $pro_price; ?> <del class="product-old-price">रु. <?php echo $dis_price; ?></del></h4>
									</div>
								</div>
								<!-- product widget -->
								
					<?php } 
				} ?>

								
							</div>

							<div>
								<?php	$product_query = "SELECT * FROM med_products,categories, brands WHERE product_cat=cat_id AND  product_brand=brand_id ORDER BY RAND() LIMIT 3";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['brand_title'];
                        $pro_title = $row['brand_title'];
                        $pro_price = $row['product_price'];
						$dis_price = $row['product_m_price'];
                       // $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                       ?>
								<!-- product widget -->
								<div class="product-widget">
									
									<?php 
									// this image query done appropriately  - Sunil Dahal - 23/04/2020 
									$image_query = "SELECT * FROM product_images WHERE product_id = $pro_id GROUP BY product_id HAVING product_id = $pro_id LIMIT 1";
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
									
									
									
									<div class="product-body">
										<p class="product-category"><?php echo $cat_name; ?></p>
										<h3 class="product-name"><small><a href="#"><?php echo $pro_brand; ?></a></small></h3>
										<h4 class="product-price">रु.  <?php echo $pro_price; ?> <del class="product-old-price">रु. <?php echo $dis_price; ?></del></h4>
									</div>
								</div>
								<!-- product widget -->
								
					<?php } 
				} ?>
								

								
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</div>
		