object rolando{
	var property capacidad = 2
	const artefactos = #{}
	var property hogar = castillo
	const property historial = []
	
	method encontrar(artefacto){
		historial.add(artefacto)
		if(self.tieneCapacidad()) { artefactos.add(artefacto) }
	}
	
	method tieneCapacidad() = capacidad > artefactos.size()
		
	method artefactos() = artefactos
	
	method posesiones() = artefactos + hogar.baul()

	method irASuHogar() {
		//NOOOOOOOO hacer esto!!!!  hogar.baul().addAll(artefactos) 
		hogar.almacenar(artefactos)
		artefactos.clear()
	}
	
	method posee(artefacto) {		
		return self.posesiones().contains(artefacto)
	} 	
	
}

object castillo{
	const baul = #{}
	
	method almacenar(cosas){
		baul.addAll(cosas) 
	}
	
	method baul() = baul
}

object espada{
	
} 

object libro{
	
} 

object collar{
	
} 

object armadura{
	
} 
