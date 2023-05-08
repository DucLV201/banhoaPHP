<style type="text/css">
  .goiy{
   
    width: 532px;
    height: 62px;
    background: #fcfcfc;
    /* border-top: 1px solid #797979; */
  }
  .baotron{
   width: 532px;
     position:absolute;
     z-index: 100;
     height: 310px;
     box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.22);
  }
  .goiy:hover{
    background: #ffe9e9;
  }
  .anhsp{
    width: 60px;
    height: 60px;
    object-fit: cover;
    border:1px solid red;
    float: left;
  }
  .sanp{
    height: 62px;
    margin-left: 5px;
  }
  .ptext{
    margin-bottom: 0px;
    margin-left: 5px;
  }
  .atext{
   font-weight:bold;
  }


</style>
<?php
//Including Database configuration file.
include "../db/connect.php";
//Getting value of "search" variable from "script.js".
if (isset($_POST['search'])) {
//Search box value assigning to $Name variable.
	$Name = $_POST['search'];
//Search query.
	$Query = "SELECT * FROM tbl_sanpham WHERE sanpham_name LIKE '%$Name%' LIMIT 5";
//Query execution
	$ExecQuery = MySQLi_query($con, $Query);?>  
<div class="baotron">
<?php
	//Fetching result from database.
	while ($Result = MySQLi_fetch_array($ExecQuery)) {
		?>
      
         <div class="goiy" >
    <div class="sanp">
      <img class="anhsp" src="images/<?php echo $Result['sanpham_image']; ?>">
      
       <a href="index1.php?quanly=chitietsp&id=<?php echo $Result['sanpham_id']; ?>" class="atext"><?php echo $Result['sanpham_name']; ?></a>
       <p class="ptext">Giá: đ<span style="color:red;"><?php echo $Result['sanpham_gia']; ?></span></p>
    </div>


   </div>
    
   
   <!-- Below php code is just for closing parenthesis. Don't be confused. -->
   <?php
}}
?>
  </div>