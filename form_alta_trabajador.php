<?php
	session_start();
	
	// Importar librerías necesarias para gestionar direcciones y géneros literarios
	require_once("gestionBD.php");
	//require_once("gestionar_direcciones.php");
	//require_once("gestionar_generos_literarios.php");
	
	// Si no existen datos del formulario en la sesión, se crea una entrada con valores por defecto
	if (!isset($_SESSION["formulario"])) {
		$formulario['nif'] = "";                                      //  
		$formulario['nombre'] = "";                                   //
		$formulario['apellidos'] = "";                                //    
		$formulario['fechaNacimiento'] = "";                          //           
		$formulario['email'] = "";                                    //
		$formulario['pass'] = "";                                     //
		$formulario['calle'] = "";                                    // 
    $formulario['numeroTelefono'] = "";    
    $formulario['esGestor'] = "";
    $formulario['horasTrabajo'] = "";
    $formulario['sueldo'] = "";                                       
                                      
	
		$_SESSION["formulario"] = $formulario;
	}
	// Si ya existían valores, los cogemos para inicializar el formulario
	else{
		
		$formulario = $_SESSION["formulario"];
	}		
	// Si hay errores de validación, hay que mostrarlos y marcar los campos (El estilo viene dado y ya se explicará)
	if (isset($_SESSION["errores"])){
		$errores = $_SESSION["errores"];
		unset($_SESSION["errores"]);
	}
		
	// Creamos una conexión con la BD
	$conexion = crearConexionBD();
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/form_alta_cliente.css" />

  <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
  <!--<script src="https://code.jquery.com/jquery-3.1.1.min.js" type="text/javascript"></script>-->
  <script src="js/validacion_cliente_alta_usuario.js" type="text/javascript"></script>
  <title>Gestión de Clinica Veterinaria: Alta de Cliente</title>
	<?php
        include_once("head.php");
	?>
</head>

<body>
	<script>
		// Inicialización de elementos y eventos cuando el documento se carga completamente
		$(document).ready(function() {
			$("#altaUsuario").on("submit", function() {
				return validateForm();
			});
			
			// EJERCICIO 2: Manejador de evento para copiar automáticamente el email como nick del usuario
			$("#email").on("input", function(){
				$("#nick").val($(this).val());
			});

			// EJERCICIO 3: Manejador de evento del color de la contraseña
			$("#pass").on("keyup", function() {
				// Calculo el color
				passwordColor();
			});

	</script>
	
	<?php
        include_once("cabecera_trabajadores.php");
	?>
	
	<?php 
		// Mostrar los erroes de validación (Si los hay)
		if (isset($errores) && count($errores)>0) { 
	    	echo "<div id=\"div_errores\" class=\"error\">";
			echo "<h4> Errores en el formulario:</h4>";
    		foreach($errores as $error){
    			echo $error;
			} 
    		echo "</div>";
  		}
	?>
	
	<form id="altaTrabajador" method="post" action="validacion_alta_trabajador.php"
		>
		<!--novalidate--> 
		<!--onsubmit="return validateForm()"-->   
		<p><i>Los campos obligatorios están marcados con </i><em>*</em></p>
		<fieldset><legend>Datos personales.</legend>
			<div></div><label for="nif">DNI:<em>*</em></label>
			<input id="nif" name="nif" type="text" placeholder="12345678X" pattern="^[0-9]{8}[A-Z]" title="Ocho dígitos seguidos de una letra mayúscula" value="<?php echo $formulario['nif'];?>" required>
			</div>

			<div><label for="nombre">Nombre:<em>*</em></label>
			<input id="nombre" name="nombre" type="text" size="40" value="<?php echo $formulario['nombre'];?>" required/>
			</div>

			<div><label for="apellidos">Apellidos:</label>
			<input id="apellidos" name="apellidos" type="text" size="80" value="<?php echo $formulario['apellidos'];?>"/>
			</div>

			<div><label for="fechaNacimiento">Fecha de nacimiento:<em>*</em></label>
			<input type="date" id="fechaNacimiento" name="fechaNacimiento" value="<?php echo $formulario['fechaNacimiento'];?>"/>
			</div>

			<div><label for="email">Email:<em>*</em></label>
			<input id="email" name="email"  type="email" placeholder="usuario@dominio.extension" value="<?php echo $formulario['email'];?>" required/>
			</div>

			<div><label for="numeroTelefono">Telefono:<em>*</em></label>
			<input id="numeroTelefono" name="numeroTelefono" type="text" size="9" pattern="^[0-9]{9}"value="<?php echo $formulario['numeroTelefono'];?>" required/>
			</div>

		</fieldset>

		<fieldset><legend>Datos de cuenta.</legend>
			
			<div><label for="nick">Nickname:</label>
				<input id="nick" name="nick" type="text" size="40" value="<?php echo $formulario['email'];?>" />
			</div>
			<div><label for="pass">Password:<em>*</em></label>
                <input type="password" name="pass" id="pass" placeholder="Mínimo 8 caracteres entre letras y dígitos" required oninput="passwordValidation(); "/>
			</div>
			<div><label for="confirmpass">Confirmar Password:<em>*</em> </label>
				<input type="password" name="confirmpass" id="confirmpass" placeholder="Confirmación de contraseña"  oninput="passwordConfirmation();""required"/>
			</div>
		</fieldset>

		<fieldset>
			<legend>
				Dirección y detalles laborales.
			</legend>

			<div><label for="calle">Calle/Avda.:<em>*</em></label>
			<input id="calle" name="calle" type="text" size="80" value="<?php echo $formulario['calle'];?>" required/>
			</div>

      <div><label for="horasTrabajo">Horas de trabajo semanal:<em>*</em></label>
			<input id="horasTrabajo" name="horasTrabajo"  type="text"  value="<?php echo $formulario['horasTrabajo'];?>" required/>
			</div>

			<div><label for="sueldo">Salario mensual:<em>*</em></label>
			<input id="sueldo" name="sueldo" type="text"  pattern="^[0-9]{6}"value="<?php echo $formulario['sueldo'];?>" required/>
			</div>

			<div><label for="sueldo">Es gestor:<em>*</em></label>
			<input id="esGestor" name="esGestor" type="text"  value="<?php echo $formulario['esGestor'];?>" required/>
			</div>
		
		</fieldset>

		<div><input type="submit" value="Enviar" /></div>

		<?php
		include_once("pie.php");
		cerrarConexionBD($conexion);
	?>
	
	</form>
	
	
	
	</body>
</html>
