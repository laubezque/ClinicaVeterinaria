<?php
session_start();

require_once ("gestionBD.php");
require_once ("gestionarPacientes.php");
require_once ("paginacion_consulta.php");

if (!isset($_SESSION['login']))
	Header("Location: inicio_sesion.php");
else {
	if (isset($_SESSION["paciente"])) {
		$paciente = $_SESSION["paciente"];
		unset($_SESSION["paciente"]);
	}

	// ¿Venimos simplemente de cambiar página o de haber seleccionado un registro ?
	// ¿Hay una sesión activa?
	if (isset($_SESSION["paginacion"]))
		$paginacion = $_SESSION["paginacion"];
	
	$pagina_seleccionada = isset($_GET["PAG_NUM"]) ? (int)$_GET["PAG_NUM"] : (isset($paginacion) ? (int)$paginacion["PAG_NUM"] : 1);
	$pag_tam = isset($_GET["PAG_TAM"]) ? (int)$_GET["PAG_TAM"] : (isset($paginacion) ? (int)$paginacion["PAG_TAM"] : 1);

	if ($pagina_seleccionada < 1) 		$pagina_seleccionada = 1;
	if ($pag_tam < 1) 		$pag_tam = 5;

	// Antes de seguir, borramos las variables de sección para no confundirnos más adelante
	unset($_SESSION["paginacion"]);

	$conexion = crearConexionBD();

	// La consulta que ha de paginarse
    $query = 'SELECT CLIENTES.DNI, '
    .'PACIENTES.IDPACIENTE,PACIENTES.FECHANAC,PACIENTES.COLORPELO,PACIENTES.RAZA,PACIENTES.ESPECIE '
    .'FROM CLIENTES, PACIENTES '
    .'WHERE '.' CLIENTES.DNI = PACIENTES.DNI '
    .' ORDER BY IDPACIENTE ';
    
    

	// Se comprueba que el tamaño de página, página seleccionada y total de registros son conformes.
	// En caso de que no, se asume el tamaño de página propuesto, pero desde la página 1
	$total_registros = total_consulta($conexion, $query);
	$total_paginas = (int)($total_registros / $pag_tam);

	if ($total_registros % $pag_tam > 0)		$total_paginas++;

	if ($pagina_seleccionada > $total_paginas)		$pagina_seleccionada = $total_paginas;

	// Generamos los valores de sesión para página e intervalo para volver a ella después de una operación
	$paginacion["PAG_NUM"] = $pagina_seleccionada;
	$paginacion["PAG_TAM"] = $pag_tam;
	$_SESSION["paginacion"] = $paginacion;

	$filas = consulta_paginada($conexion, $query, $pagina_seleccionada, $pag_tam);

	cerrarConexionBD($conexion);
}
?>


<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <!-- Hay que indicar el fichero externo de estilos -->
    <link rel="stylesheet" type="text/css" href="css/consulta_pacientes.css" />
	<script type="text/javascript" src="./js/boton.js"></script>
  <?php include_once("head.php"); ?>
  <title>Gestión de veterinaria:pacientes</title>
</head>

<body>

<?php

include_once ("cabecera.php");

?>



<main>

        <table class="consulta">
            <thead>
            <tr>
                <th>ID Paciente</th>
                <th>Fecha de nacimiento</th>
                <th>Color de pelo</th>
                <th>Raza</th>
                <th>Especie</th>
                <th>DNI</th>

            </tr>
            </thead>

	 <tfoot>

        <tr>

		<div id="enlaces">

			<?php

				for( $pagina = 1; $pagina <= $total_paginas; $pagina++ )

					if ( $pagina == $pagina_seleccionada) { 	?>

						<span class="current"><td><?php echo $pagina; ?></td></span>

			<?php }	else { ?>

						<a href="consulta_pacientes.php?PAG_NUM=<?php echo $pagina; ?>&PAG_TAM=<?php echo $pag_tam; ?>"><?php echo $pagina; ?></a>

			<?php } ?>
        </tr>
        </div>
    



		<form method="get" action="consulta_pacientes.php">

			<input id="PAG_NUM" name="PAG_NUM" type="hidden" value="<?php echo $pagina_seleccionada?>"/>

			Mostrando

			<input id="PAG_TAM" name="PAG_TAM" type="number"

				min="1" max="<?php echo $total_registros; ?>"

				value="<?php echo $pag_tam?>" autofocus="autofocus" />

			entradas de <?php echo $total_registros?>

			<input type="submit" value="Cambiar">

		</form>

    </tfoot>
    

   



	<?php

		foreach($filas as $fila) {

    ?>
    
                    <td><?php $fila['IDPACIENTE'] ?></td>
                    <td><?php $fila['FECHANAC'] ?></td>
                    <td><?php $fila['COLORPELO'] ?></td>
                    <td><?php $fila['RAZA'] ?></td>
                    <td><?php $fila['ESPECIE'] ?></td>
                    <td><?php $fila['DNI'] ?></td>

    </table>
       
	<article class="paciente">

		<form method="get" action="controlador_pacientes.php">

			<div class="fila_paciente">

				<div class="datos_paciente">

					<input id="DNI" name="DNI"

						type="hidden" value="<?php echo $fila["DNI"]; ?>"/>

					<input id="IDPACIENTE" name="IDPACIENTE"

						type="hidden" value="<?php echo $fila["IDPACIENTE"]; ?>"/>

					<input id="FECHANAC" name="FECHANAC"

						type="hidden" value="<?php echo $fila["FECHANAC"]; ?>"/>

					<input id="COLORPELO" name="COLORPELO"

						type="hidden" value="<?php echo $fila["COLORPELO"]; ?>"/>

					<input id="RAZA" name="RAZA"

						type="hidden" value="<?php echo $fila["RAZA"]; ?>"/>
                    
                    <input id="ESPECIE" name="ESPECIE"

						type="hidden" value="<?php echo $fila["ESPECIE"]; ?>"/>



				<?php

					if (isset($paciente) and ($paciente["IDPACIENTE"] == $fila["IDPACIENTE"])) { ?>

						<!-- Editando título -->

						<h3><input id="IDPACIENTE" name="IDPACIENTE" type="text" value="<?php echo $fila["IDPACIENTE"]; ?>"/>	</h3>

						<h4><?php echo $fila["RAZA"] . " " . $fila["ESPECIE"]; ?></h4>

                <?php }	else { ?>
                    
                    <td><?php $fila['IDPACIENTE'] ?></td>

						<!-- mostrando título -->
                        <tbody>
						<input id="IDPACIENTE" name="IDPACIENTE" type="hidden" value="<?php echo $fila["IDPACIENTE"]; ?>"/>

						<td><?php echo $fila["IDPACIENTE"]; ?></td>

                        <td><?php echo $fila["RAZA"]; ?></td>
                        <td> <?php $fila["ESPECIE"]; ?></td>
                        </tbody>
				<?php } ?>

				</div>



				
			</div>

		</form>

    </article>
    
    



	<?php } ?>

</main>



<?php

include_once ("pie.php");
?>

</body>

</html>