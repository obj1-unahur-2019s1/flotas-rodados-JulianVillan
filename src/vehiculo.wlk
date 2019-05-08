
class Rodados {
	var capacidad = 0 
	var property velocidad = 0
 	var property peso = 0
 	var property color
 	var property tieneGas = false
	
	
	method capacidad(unValor){
		capacidad = unValor
		if (tieneGas) capacidad-- //resta 1   
	}
	method capacidad(){
		return capacidad 
	}
} 



object trafic{
	
	
}

/*consola o test para generar objetos
var auto = new Vehiculo()
	auto.cantPasajeros(3)
var auto2 = new Vehiculo()
	auto2.cantPasajeros(6)*/

