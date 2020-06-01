import accesorios.*
import deposito.*


class Bicis {
	var property rodado 
	var property largo
	var property marca
	var property accesorios = []
	var property id = 0
	method altura(){return self.rodado() * 2.5 + 15}
	method velocidadCrucero(){return if(largo > 120) self.rodado() + 6 else self.rodado() + 2}
	method carga(){return accesorios.sum({accesorio => accesorio.carga()})}
	method peso(){return rodado/2 + accesorios.sum({accesorio => accesorio.peso()})}
	method tieneLuz(){return accesorios.any({accesorio => accesorio.esLuminoso()})}
	method accesoriosLivianos(){return accesorios.count({accesorio => accesorio.peso() < 1})}
	method ponerAccesorio(accesorio){accesorios.add(accesorio)}
	method sacarAccesorio(accesorio){accesorios.remove(accesorio)}
}
