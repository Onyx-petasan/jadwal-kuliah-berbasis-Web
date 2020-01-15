<!DOCTYPE html>
<html lang="en">
<head>
	<?php 
		session_start();
		include 'koneksi.php'; // memanggil koneksi
		?>

		<?php 

		 if(@$_SESSION['admin']) { //apabila sessionnya admin
		  $userlogin = @$_SESSION['admin'];
		   
		 } else {
		 header("location: login.php");
		  
		}

		 // menuliskan query mysql dimana kode_user = $userlogin
		 // yaitu session pada script di atas
		 $sql = mysql_query("select * from tb_admin where id = '$userlogin'") or die(mysql_error());
		 
		 //menjadikan data sebagai arrray
		 $data = mysql_fetch_array($sql);
	 ?>
<title>Jadwal Kuliah</title>
<meta charset="UTF-8" />
<meta http-equiv=refresh content=300>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link rel="stylesheet" href="css/colorpicker.css" />
<link rel="stylesheet" href="css/datepicker.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />

<link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script> 
<style type="text/css">
	.nav-user{
		position: absolute;
    z-index: 25;
    top: 0px;
    right: 10px;
	}
</style>


</head>
<body>
<div class="navbar navbar-inverse nav-user">
  <ul class="nav">
    <li id="profile-messages" ><a title="profile"  ><i class="icon icon-user"></i>  <span class="text">Hy , <?php echo $data['nama']  ?></span><b class="caret"></b></a></li>
    <li><a href="logout.php" title="profile"><i class="icon-key"></i> Log Out</a></li>
  </ul>
</div>
	<div class="col-md-12">
		<div class="row">
			<?php 
			$use=$_SESSION['nama'];
			?>				
	
		</div>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Jadwal Kuliah</a></h1>
</div>
<!--close-Header-part--> 