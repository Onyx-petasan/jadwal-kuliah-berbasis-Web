<!--sidebar-menu-->
<?php
  function aktif($aktif){
    if(strpos($_GET['page'], $aktif) !== false){
      $a = 'active';
    }
    else{
      $a = '';
    }
    return $a;
  }
?>

<div id="sidebar"><a href="home.php" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="<?php echo aktif('home');?>"><a href="home.php?page=home"><i class="icon icon-home"></i> <span>Dashboard</span></a></li>
    
    <li class="submenu <?php echo aktif('input');?>"> <a href="#"><i class="icon icon-pencil"></i> <span>Input Data</span> <span class="label label-important">6</span></a>
      <ul>
        <li><a href="home.php?page=input-prodi">Prodi</a></li>
        <li><a href="home.php?page=input-dosen">Dosen</a></li>
        <li><a href="home.php?page=input-matakuliah">Matakuliah</a></li>
        <li><a href="home.php?page=input-jadwalkuliah">Jadwalkuliah</a></li>
        <li><a href="home.php?page=input-ruangan">Ruangan</a></li>
        <li><a href="home.php?page=input-status">Status</a></li>
      </ul>
    </li>
    <!-- <li class="<?php echo aktif('lihat-jadwalkuliah');?>"><a href="home.php?page=lihat-jadwalkuliah"><i class="icon icon-screenshot"></i> <span>Lihat Jadwal Kuliah</span></a></li> -->
    
    <li class="submenu <?php echo aktif('laporan');?>"> <a href="#"><i class="icon icon-list-alt"></i> <span>Laporan</span> <span class="label label-important">1</span></a>
      <ul>
        <!-- <li><a href="home.php?page=laporan-histori">Histori</a></li> -->
        <li><a href="home.php?page=laporan-presensi">Presensi</a></li>
      </ul>
  </ul>
</div>
<!--sidebar-menu-->