<div class="cabecera" style="background-image: url('images/fondo4.jpg')">
<header>
	<div class = "foto">
	<img src="images/logo_transparente.png" alt="Logo">
	</div>
	<div class="texto">
	<h1>H U E L L A S</h1>
	</div>
	<div class="boton1">
			<?php if (isset($_SESSION['loginTrabajador'])) {	?>
				<a href="cierre_sesion.php"><input type="button" class="butn" value="Cerrar Sesión"></a>
			<?php }else{ ?>
				<a href="inicio_sesion.php"><input type="button" class="butn" value="Iniciar Sesión"></a>	
			<?php } ?>

			</div>

	<div class = "menu">

	<ul>
		<li><a href="consulta_citas_trabajadores.php"><span title="Citas">Citas</span></a></li>
        <li><a href="historial_paciente.php"><span title="Historial">Historial</span></a></li>
	</ul>
	</header>
	</div>
