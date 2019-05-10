import vehiculo.*

class Dependencia {
	const flota = #{}
	var property empleados = 0
	
	method agregarFlota(rodado){ flota.add(rodado) }
	
	method quitarFlota(rodado){ flota.remove(rodado) }
	
	method pesoTotalFlota(){ return flota.sum { f => f.peso() } }
	
	method estaBienEquipada() { return ((flota.size() >= 3) and (flota.all { f => f.velocidad() >= 100 })) }
	
	method capacidadTotalEnColor(color){
		return flota.filter({ f => f.color() == color }).sum{ f => f.capacidad() }
	}
	
	method colorDelMasRapido() { 
		return flota.max { f => f.velocidadMaxima() }.color()
	}
	
	method capacidadFaltante() {
		return empleados - flota.sum { f => f.capacidad()}
	}
	
	method esGrande(){
		return empleados >= 40 and flota.size() >= 5
	}
}
