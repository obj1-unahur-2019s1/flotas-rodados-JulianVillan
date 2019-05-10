
class Corsa {
	var property color
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso()= 1300 
}

class Kwid {
	var property tieneTanque 
	
	method color() { return "azul"}
	
	method capacidad() = if (tieneTanque) { 3 } else { 4 } 
	
	method velocidadMaxima() = if (tieneTanque){ 120 } else { 110 }
	
	method peso() { if (tieneTanque){ return 1350 } else { return 1200 }}
	
}

object trafic{
	var property interior = interiorComodo
	var property motor = motorPulenta
	const pesoBase = 4000
	
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = pesoBase + interior.peso() + motor.pes()
	method color() = "blanco"
}

object interiorComodo {
 	method capacidad() = 5
 	method peso() = 700
 }

object interiorPopular {
 	method capacidad() = 12
 	method peso() = 1000
 }

object motorPulenta { 
	method peso() = 800
	method velocidadMaxima() = 130
}

object motorBataton {
	method peso() = 500
	method velocidadMaxima() = 80
}



/*consola o test para generar objetos
var auto = new Vehiculo()
	auto.cantPasajeros(3)
var auto2 = new Vehiculo()
	auto2.cantPasajeros(6)*/

