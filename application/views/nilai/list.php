<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">

<head>
	<title>List Nilai</title>
</head>

<body>

	<?php 
	if (isset($_GET['error'])) {
		$error = $_GET['error'];
		echo "<div class='error'><h3>Error</h3>". $error ."</div>";
	}
	?>

	<h3>Data Nilai</h3>

	<a href="nilai/add">Tambah Data</a>

	<table>
		
		<tr>
			<th>
				NIM
			</th>
			<th>
				Nama
			</th>
			<th>
				Kode MK
			</th>
			<th>
				Nama MK
			</th>
			<th>
				Index
			</th>
			<th>
				Aksi
			</th>
		</tr>

		<?php 
		foreach($nilais as $nilai)
		{
			echo "<tr>";
			echo "<td>". $nilai->NIM ."</td>";
			echo "<td>". $nilai->NamaMhs ."</td>";
			echo "<td>". $nilai->KodeMK ."</td>";
			echo "<td>". $nilai->NamaMK ."</td>";
			echo "<td>". $nilai->Nilai ."</td>";
			echo "<td>";
			echo "<form action='nilai/delete' method='POST'><input type='hidden' name='id_nilai' value='". $nilai->id ."'/><button type='submit'>Hapus</button></form>";
			echo "</td>";
			echo "</tr>";
		}

		if (count($nilais) == 0) {
			echo "<td>-</td>";
			echo "<td>-</td>";
			echo "<td>-</td>";
			echo "<td>-</td>";
			echo "<td>-</td>";
			echo "<td>-</td>";
		}

		?>

	</table>
</body>


</html>