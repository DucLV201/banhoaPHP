<!-- top Products -->
<div class="">
	<div class="container py-xl-4 py-lg-2">
		<!-- tittle heading -->
		<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">Danh mục sản phẩm</h3>
			<!-- //tittle heading -->
			<div class="row">
				<!-- product left -->
				<div class="agileinfo-ads-display col-lg-9">
					<div class="wrapper">
						<?php
						$sql_cate_home = mysqli_query($con, "SELECT * FROM tbl_category ORDER BY category_id ASC");
						while ($row_cate_home = mysqli_fetch_array($sql_cate_home)) {
							$id_category = $row_cate_home['category_id'];
						?>
							<!-- first section -->
							<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
								<h3 class="heading-tittle text-center font-italic"><?php echo $row_cate_home['category_name'] ?></h3>
								<div class="row">
									<?php
									$sql_product = mysqli_query($con, "SELECT * FROM tbl_sanpham ORDER BY sanpham_id ASC");
									while ($row_sanpham = mysqli_fetch_array($sql_product)) {
										if ($row_sanpham['category_id'] == $id_category) {
									?>
											<div class="col-md-4 product-men mt-5">
												<div class="men-pro-item simpleCart_shelfItem">
													<div class="men-thumb-item text-center">
														<img id="test" src="images/<?php echo $row_sanpham['sanpham_image'] ?>" alt="">
														<div class="men-cart-pro">
															<div class="inner-men-cart-pro">
																<a href="index1.php?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>" class="link-product-add-cart">Xem sản phẩm</a>
															</div>
														</div>
													</div>
													<div class="item-info-product text-center border-top mt-4">
														<h4 class="pt-1">
															<a href="?quanly=chitietsp&id=<?php echo $row_sanpham['sanpham_id'] ?>"><?php echo $row_sanpham['sanpham_name'] ?></a>
														</h4>
														<div class="info-product-price my-2">
															<span class="item_price"><?php echo number_format($row_sanpham['sanpham_giakhuyenmai']) . 'vnđ' ?></span>
															<del><?php echo number_format($row_sanpham['sanpham_gia']) . 'vnđ' ?></del>
														</div>
														<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
															<form action="?quanly=giohang" method="post">
																<fieldset>
																	<input type="hidden" name="tensanpham" value="<?php echo $row_sanpham['sanpham_name'] ?>" />
																	<input type="hidden" name="sanpham_id" value="<?php echo $row_sanpham['sanpham_id'] ?>" />
																	<input type="hidden" name="giasanpham" value="<?php echo $row_sanpham['sanpham_gia'] ?>" />
																	<input type="hidden" name="hinhanh" value="<?php echo $row_sanpham['sanpham_image'] ?>" />
																	<input type="hidden" name="soluong" value="1" />
																	<input type="submit" name="themgiohang" value="Thêm giỏ hàng" class="button" />
																</fieldset>
															</form>
														</div>
													</div>
												</div>
											</div>
									<?php
										}
									}
									?>
								</div>
							</div>
							<!-- //first section -->
						<?php
						}
						?>

					</div>
				</div>
				<!-- //product left -->

				<!-- product right -->
			<div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
				<div class="side-bar p-sm-4 p-3">
					<div class="search-hotel border-bottom py-2">
						<h3 class="agileits-sear-head mb-3">Loại hoa</h3>
						<form action="index1.php?quanly=timkiem" method="post">
							<input type="search" placeholder="Tìm theo loại hoa..." name="search_product" required="">
							<input type="submit" value=" " name="search_button">
						</form>
						<div class="left-side py-2">
						<form action="index1.php?quanly=timkiem" method="post">
							<ul>
								<li>
									<input type="radio" class="checked" name="search_product" value="hoa hồng">
									<span class="span">Hoa hồng</span>
								</li>
								<li>
									<input type="radio" class="checked" name="search_product" value="hoa baby" >
									<span class="span">Hoa baby</span>
								</li>
								<li>
									<input type="radio" class="checked" name="search_product" value="giỏ hoa">
									<span class="span">Giỏ hoa</span>
								</li>
								<li>
									<input type="radio" class="checked" name="search_product" value="Bó hoa">
									<span class="span">Bó hoa</span>
								</li>
								<li>
									<input type="radio" class="checked" name="search_product" value="Hoa sinh nhật" >
									<span class="span">Hoa sinh nhật</span>
								</li>
								<li>
									<input type="radio" class="checked" name="search_product" value="Lan hồ điệp">
									<span class="span">Lan hồ điệp</span>
								</li>
								<li>
									<input type="radio" class="checked" name="one">
									<span class="span">Nhabexims</span>
								</li>
								<li>
									<input type="radio" class="checked" name="one">
									<span class="span">Vinamit</span>
								</li>
								<input type="submit" value=" " name="search_button">
							</ul>
							</form>
						</div>
					</div>
					<!-- price -->
					<div class="range border-bottom py-2">
 						<h3 class="agileits-sear-head mb-3">Giá</h3>
 						<div class="w3l-range">
 							<form action="index1.php?quanly=timkiem" method="POST">
 								<ul>
 									<li>
 										<input class="input-clo" type="submit" value="Dưới đ50,000" name="search_gia1">
 									</li>
 									<li class="my-1">
 										<input class="input-clo" type="submit" value="đ50,000 - đ100,000" name="search_gia2">

 									</li>
 									<li>
 										<input class="input-clo" type="submit" value="đ100,000 - 200,000" name="search_gia3">
 									</li>
 									<li class="my-1">
 										<input class="input-clo" type="submit" value="đ200,000 - đ500,000" name="search_gia4">
 									</li>
 									<li>
 										<input class="input-clo" type="submit" value="đ500,000 - đ1000,000" name="search_gia5">
 									</li>
 									<li class="mt-1">
 										<input class="input-clo" type="submit" value="Trên đ1000,000"name="search_gia6">
 									</li>
 								</ul>
 							</form>
 						</div>
 					</div>
					<!-- //price -->
					<!-- best seller -->
					<div class="f-grid py-2">
							<h3 class="agileits-sear-head mb-3">Sản phẩm nổi bật</h3>
							<div class="box-scroll">
								<div class="scroll">
									<?php
									$sql_product_sidebar = mysqli_query($con,"SELECT * FROM tbl_sanpham WHERE sanpham_hot='1' ORDER BY sanpham_id DESC"); 
									while($row_sanpham_sidebar = mysqli_fetch_array($sql_product_sidebar)){
									?>
									<div class="row">
										<div class="col-lg-3 col-sm-2 col-3 left-mar">
											<img src="images/<?php echo $row_sanpham_sidebar['sanpham_image'] ?>"  class="img-fluid">
										</div>
										<div class="col-lg-9 col-sm-10 col-9 w3_mvd">
											<a href="">&nbsp&nbsp&nbsp <?php echo $row_sanpham_sidebar['sanpham_name'] ?></a>
											<a href="" class="price-mar mt-2">&nbsp&nbsp&nbsp <?php echo number_format($row_sanpham_sidebar['sanpham_giakhuyenmai']).'vnđ' ?></a>
											<del style="margin-left: 15px; "><?php echo number_format($row_sanpham_sidebar['sanpham_gia']).'vnđ' ?></del>
										</div>
									</div>
									<br>
									<?php
									} 
									?>
									
									
								</div>
							</div>
						</div>
						<!-- //best seller -->
				</div>
				<!-- //product right -->
			</div>
			</div>
	</div>
</div>
<!-- //top products -->