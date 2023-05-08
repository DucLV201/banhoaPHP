<?php 
if(isset($_POST['gui'])){
  $mail = $_POST['msg1'];
	$noidung = $_POST['msg2'];
  $sql_khachhang = mysqli_query($con, "INSERT INTO tbl_msg(time,mail,noidung) values (Now(),'$mail','$noidung')");
}
?>
<style>
  .testip{
    background: #dedede;
    border: none;
    width: 100%;
    outline: none;
    padding: 11px 10px 10px 10px;
    font-size: 13px;
    color: #bb7474;
  }
</style>
<button class="nut-mo-chatbox" onclick="moForm()">Bạn có câu hỏi?</button>
<div class="Chatbox" id="myForm">
  <form action="" method="post" class="form-container" id="formSendMsg">
    <h1>Chatbox</h1>

    <label for="msg"><b>Email</b></label><br>
    <input class="testip" placeholder="Email của bạn" name="msg1" required></input>
    <label for="msg"><b>Lời Nhắn</b></label><br>
    <input class="testip" placeholder="Bạn hãy nhập lời nhắn.." name="msg2" required></input>
    <button type="submit" class="btn" name="gui">Gửi</button>
    <button type="button" class="btn nut-dong-chatbox" onclick="dongForm()">Đóng</button>
  </form>
</div>
<script>
    /*Hàm Mở Form*/
function moForm() {
  document.getElementById("myForm").style.display = "block";
}
/*Hàm Đóng Form*/
function dongForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>