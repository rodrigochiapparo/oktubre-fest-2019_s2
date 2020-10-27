import marcas.*
class Personas {
	var property peso
	var property jarrasQueCompro = []
	var property leGustaMusicaTradicional
	var property nivelDeAguante
	var property marcasQueLeGustan = []
	
	
	method estaEbria() { return jarrasQueCompro.sum({ j => j.contenidoDeAlcohol()}) * peso > nivelDeAguante}
	
	method totalDeAlcoholIngerido(cerveza) { return jarrasQueCompro.sum({ j => j.contenidoDeAlcohol()})}
	
	method quiereEntrarA(carpa){ return marcasQueLeGustan.contains(carpa.marcaQueVende()) and leGustaMusicaTradicional == carpa.tieneBanda() }
	
	method puedeEntrarA(carpa){ return self.quiereEntrarA(carpa) and carpa.dejaEntrarA(self) }
	
	method entrarA(carpa){ if (self.puedeEntrarA(carpa)) { carpa.genteQueHayDentro().add(self)} else { self.error("no hay disponibilidad")}}
	
	method esEbrioEmpedernido(){ return jarrasQueCompro.all({ j => j.capacidad() >= 1}) and self.estaEbria()}
	
	method esPatriota() { return jarrasQueCompro.all({ j => j.paisDondeSeFabrica() == self.pais() })}
	
	method pais(){}
	
	
}


class Belgas inherits Personas {
	
	method marcasQueLeGusta(cerveza){ return cerveza.lupulo() > 4 }
    override method pais(){ return "belgica"}
   
}

class Checos inherits Personas { 
	method marcasQueLeGusta(cerveza){ return  cerveza.graduacion() > 8}
	override method pais(){ return "Republica Checa"}
	
}

class Alemanes inherits Personas {
	
	method marcasQueLeGusta(cerveza){}
	
    override method quiereEntrarA(carpa){ return super(carpa) and carpa.disponibilidad().even()}
    
    override  method pais(){ return "Alemania"}
     
     
}
