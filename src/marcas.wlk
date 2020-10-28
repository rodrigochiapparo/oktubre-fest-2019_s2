class Cerveza {
	
	var property lupulo
	var property paisDondeSeFabrica
	var property graduacion
	
	

	
}

class CervezaRubia inherits Cerveza {
	
}

class CervezaNegra inherits Cerveza {
	
	override method graduacion() { return graduacionReglamentaria.graduacionMundial().min(lupulo * 2) }
}

class CervezaRoja inherits CervezaNegra {
	
	override method graduacion() { return super()* 1.25}
}

object graduacionReglamentaria {
	var property graduacionMundial = 0 
}

class Jarras {
	
	var property capacidad
	var property marca 
	var property contenido
	
	method contenidoDeAlcohol() { return capacidad * contenido.graduacion() }
}

object corona{}
object quilmes{}
object schneider{}