<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
</body>
</html>
<?php
//include "inc.connect/connect.php";
include "../koneksi.php";
$kdgejala=$_POST['kdgejala'];
$gejala=$_POST['gejala'];
$sqlrs=mysql_query("SELECT kdgejala FROM tb_gejala WHERE kdgejala='$kdgejala'");
$rs=mysql_num_rows($sqlrs);
if($rs==0){
	// jika data nol maka simpan data
	$perintah="INSERT INTO tb_gejala (kdgejala,gejala) VALUES ('$kdgejala','$gejala')";
	$berhasil=mysql_query($perintah) or die (" Data tidak masuk database / data telah ada ".mysql_error());
	if ($berhasil){
		echo "<center><b>Data Berhasil Disimpan </b></center>";
		echo "<center><a href='haladmin.php?top=gejala.php'>Ok</a></center>";
		}else{
		echo "<center><font color='#ff0000'><strong>Penyimpanan Gagal</strong></font></center><br>";
		echo "<center><a href='/admin/haladmin.php?top=gejala.php'>Kembali</a></center>";
		}
	}else{
	// cek jika data sudah ada
	echo"<table style='margin-top:150px;' align='center'><tr><td>";
	echo"<div style='width:500px; height:50px auto; border:1px dashed #CCC; color:#F90; padding:3px 3px 3px 3px;'>";
	echo "<center><font>Kode Gejala $kdgejala <strong>Telah ada di database, Masukkan Kode Unik..!</strong></font></center><br>";
	echo "<center><a href='../admin/haladmin.php?top=gejala.php'>Kembali</a></center>";
	echo"</div>";
	echo"</td></tr></table>";
	}
?>
	  
