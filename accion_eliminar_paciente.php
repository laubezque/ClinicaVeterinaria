<?php
	session_start();

	require_once("gestionBD.php");
	require_once("gestionarPacientes.php"); //Completar más tarde
		
	// Comprobar que hemos llegado a esta página porque se ha rellenado el formulario
	if (isset($_SESSION["formulario"])) {
		$nuevoUsuario = $_SESSION["formulario"];
		$_SESSION["formulario"] = null;
        $_SESSION["errores"] = null;
	}
    else {
        

        Header("Location: consulta_pacientes.php");	
    }
    $id = $nuevoUsuario["idPaciente"];

	$conexion = crearConexionBD(); 
	

?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/accion_alta_petCita.css" />
  <title>Mascota eliminada</title>
  <?php include_once("head.php")?>
</head>

<body>
	<?php
        include_once("cabecera.php");
	?>

	<main>
		<?php if (eliminarPacientes2ID($conexion,$id)) { 
		?>
				<h1>Su mascota ha sido eliminada correctamente.</h1>
				<div >	
					¿Quieres volver a tu perfil? Pulsa  <a href="consulta_citas.php">aquí</a>.
				</div>
		<?php } else { ?>
					<h1>Parece que su mascota tiene una cita pendiente o ya ha sido atendida.</h1>
				<div >	
					¿Quieres volver a tu perfil? Pulsa  <a href="consulta_citas.php">aquí</a>.
				</div>
		<?php } ?>

	</main>

	<?php
		include_once("pie.php");
	?>
</body>
</html>
<?php
	cerrarConexionBD($conexion);
?>

