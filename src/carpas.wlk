import marcas.*
class Carpas {
	
  var property disponibilidad
  var property gustosDelPublico
  var property tieneBanda
  var property marcaQueVende
  var property genteQueHayDentro = []
  
  method vendenJarras(){ return true}
  
  method dejaEntrarA(persona){ return disponibilidad > genteQueHayDentro.size() and not persona.estaEbria()}
  
  method ebriosEmpedernidos(){ return genteQueHayDentro.count({ g => g.esEbrioEmpedernido()})}
  
  method servirJarra(persona ,capacidad, contenido){
  	if (genteQueHayDentro.contains(persona))
  	 { persona.jarrasQueCompro().add( new Jarras(marca = self.marcaQueVende() , capacidad = capacidad , contenido = contenido) ) }
  	 else self.error("la persona no se encuentra en la carpa ")
  }
  
  
}
