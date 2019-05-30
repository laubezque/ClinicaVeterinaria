<?php
function alta_cita($conexion,$usuario) {
    $fecha = date('d/m/Y', strtotime($usuario["fecha"]));

   
    
	try {
		$consulta = "CALL ALTA_CITA(:Dni, :OIDGestor,:FechaInicio, :FechaFin, :DuracionMin, :Coste)";
		$stmt=$conexion->prepare($consulta);
		$stmt->bindParam(':Dni',$usuario["nif"]);
		$stmt->bindParam(':OIDGestor',$usuario["IdPaciente"]);
		$stmt->bindParam(':FechaInicio',$fecha);
		$stmt->bindParam(':FechaFin',$fechaFin);
		$stmt->bindParam(':DuracionMin',$usuario["duracionMin"]);
		$stmt->bindParam(':Coste',$usuario["coste"]);
   

		$stmt->execute();
		
		return true;	
	} catch(PDOException $e) {
        var_dump($e->getMessage());
		return false;
		// Si queremos visualizar la excepción durante la depuración: $e->getMessage();
		
    }
}
  
function consultarUsuario($conexion,$email,$pass) {
 	$consulta = "SELECT COUNT(*) AS TOTAL FROM CLIENTES WHERE EMAIL=:email AND PASS=:pass";
	$stmt = $conexion->prepare($consulta);
	$stmt->bindParam(':email',$email);
	$stmt->bindParam(':pass',$pass);
	$stmt->execute();
	return $stmt->fetchColumn();
}
?>