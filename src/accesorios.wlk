import bicis.*
import deposito.*

class Farolito {
	const property peso = 0.5
	const property carga = 0
	const property esLuminoso = true
}

class Canasto{
	var property volumen = 0
	var property peso = 0
	var property carga = 0
	const property esLuminoso = false
	method peso(){return self.volumen() / 10}
	method carga(){return self.volumen()  * 2}
}

class Morral{
	var property largo = 0
	const property peso = 1.2
	var property tieneOjoDeGato = false
	var property carga = 0
	var property esLuminoso = (self.tieneOjoDeGato())
	method carga(){return self.largo() / 3}
}

/* 
 * Luego que el desarrollador realice las evaluaciones pertinente para definir
 * de que forma va a implementarse el nuevo accesorio, ya sea un objeto o 
 * una clase es importante que el accesorio agregado respete el contrato siendo 
 * polimorfico para otro objeto que le envie un mensaje, los entienda y pueda 
 * responderlos de la misma forma que los accesorios ya agregados.
 */

