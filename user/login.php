<?php
	include 'koneksi.php';
	
	class usr{}
	
	$nip = $_POST["nip"];
	$password = $_POST["password"];
	
	if ((empty($nip)) || (empty($password))) { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom tidak boleh kosong"; 
		die(json_encode($response));
	}
	
	$query = mysql_query("SELECT * FROM tb_dosen WHERE nip='$nip' AND password='$password'");
	
	$row = mysql_fetch_array($query);
	
	if (!empty($row)){
		$response = new usr();
		$response->success = 1;
		$response->message = "Selamat datang ".$row['nip'];
		$response->id = $row['id'];
		$response->nip = $row['nip'];
		die(json_encode($response));
		
	} else { 
		$response = new usr();
		$response->success = 0;
		$response->message = "Username atau password salah";
		die(json_encode($response));
	}
	
	mysql_close();

?>