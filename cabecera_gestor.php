<div class="cabecera" style="background-image: url('images/fondo4.jpg')">
<header>
	<div class = "foto">
	<img src="images/logo_transparente.png" alt="Logo">
	</div>
	<div class="texto">
	<h1>H U E L L A S</h1>
	</div>
	<div class="boton1">
	<?php if (isset($_SESSION['loginGestor'])) {	?>
				<a href="cierre_sesion.php"><input type="button" class="butn" value="Cerrar Sesión"></a>
			<?php }else{ ?>
				<a href="inicio_sesion.php"><input type="button" class="butn" value="Iniciar Sesión"></a>	
			<?php } ?>

			</div>

	<div class = "menu">

	<ul>
        <li><a href="consulta_citas_gestor.php"><span title="Citas">Citas</span></a></li>
        <li><a href="consulta_trabajadores.php"><span title="Empleados">Empleados</span></a></li>
	</ul>
			</header>

	</div>