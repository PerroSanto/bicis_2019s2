import bicis.*
import accesorios.*

class Depositos {
	const  coleccionDeBicis = []
	var idBici = 1
	method guardarBici(bici){coleccionDeBicis.add(bici);bici.id(idBici);idBici += 1}
	method sacarBici(bici){coleccionDeBicis.remove(bici)}
	method bicisRapidas(){return coleccionDeBicis.filter({bici => bici.velocidadCrucero() > 25})}
	method marcaDeBicis(){ const coleccion = #{};coleccion.addAll(coleccionDeBicis.map({bici => bici.marca()}));return coleccion}
	method esNocturno(){return coleccionDeBicis.all({bici => bici.tieneLuz()})}
	method tieneBiciQueCarga(kilos){return coleccionDeBicis.any({bici => bici.carga() > kilos})}
	method marcaBiciRapida(){return self.bicisRapidas().max({bici => bici.velocidadCrucero()}).marca()}
	method cargaTotalBicisLargas(){return coleccionDeBicis.filter({bici => bici.largo() > 170}).sum({bici => bici.carga()})}
	method cantBicisSinAccesorios(){return coleccionDeBicis.count({bici => bici.accesorios() == null})}
	method bicisCompanieras(unaBici){return coleccionDeBicis.filter({bici => bici.id() != unaBici.id() and bici.largo().between(unaBici.largo()-10,unaBici.largo()+10) and bici.marca() == unaBici.marca()})} 
}
