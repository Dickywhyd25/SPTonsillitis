<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hapus User</title>
<style type="text/css">
body { margin:50px;background-image:url(../Image/Bottom_texture.jpg);}
div { border:1px dashed #666; background-color:#CCC; padding:10px;}
</style>
</head>

<body>
<div>
<?php
include "../koneksi.php";
$id_user=$_GET['id_user'];
$query=mysql_query("DELETE FROM tb_hasil WHERE idpasien='$id_user'")or die(mysql_error());
if($query){
	echo "<center><font color='#0000ff'>DATA BERHASIL DIHAPUS..!</font></center>";
	echo "<center><a href='../admin/haladmin.php?top=lapuser.php'>OK</a></center>";
	}else{
		echo "<center><font color='#ff0000'>Data Tidak dapat dihapus</font></center>";
		echo "<center><a href='../admin/haladmin.php?top=lapuser.php'>Kembali</a></center>";
		}
?>
</div>
</body>
</html>