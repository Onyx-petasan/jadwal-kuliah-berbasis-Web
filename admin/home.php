<?php
include "page/header.php"; ?>
<?php
include "page/sidebar.php"; 

	if(!empty($_GET['page']) && $_GET['page']=='home'){
		include "content/home.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-prodi'){
		include "content/input-prodi.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-dosen'){
		include "content/input-dosen.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-matakuliah'){
		include "content/input-matakuliah.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-jadwalkuliah'){
		include "content/input-jadwalkuliah.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='lihat-jadwalkuliah'){
		include "content/lihat-jadwalkuliah.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-ruangan'){
		include "content/input-ruangan.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='laporan-histori'){
		include "content/laporan-histori.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='laporan-presensi'){
		include "content/laporan-presensi.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='jadwalkuliah'){
		include "content/jadwalkuliah.php";
	}
	elseif(!empty($_GET['page']) && $_GET['page']=='input-status'){
		include "content/input-status.php";
	}
	else{
		include "content/404.php";
	}



 include "page/footer.php"; ?>
