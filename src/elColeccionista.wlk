//add
//clear
// rise
//lisen

//last ultimo elemento

//const lista = []
//lista.addAll([3,4,7])
//lista.last()
//lista.get(lista.size()-1)
//lista.clear()"

//var property memoria ddr y libro ave

//filter
//sum con el closure
//metodo a cada uno de los objetos que pasa algo cuando se quemen, que sea poli
//foreach a cada element


object pedro{
	var coleccion = [estampilla, ollaDeHierro,collar,memoria,libro]
	method encuentraElemento(unElemento){coleccion.add(unElemento)}
	method robanColecccion(){coleccion.clear()}
	method cuantasCosasEnColeccion(){coleccion.size()}
	method noHayNada(){coleccion.isEmpty()}
	method mejorColeccion(elemento)=elemento.valor()>coleccion.last().valor()
	method elementosValenMas(){ coleccion.filter({c => c.valor()>500}) }
	method cotizacionTotal() = coleccion.sum({c => c.valor()})
	method seQuemaElUltimoElemento(){		
		coleccion.last().quemar()
		if (coleccion.last().estaArruinado()){
			coleccion.remove(coleccion.last())
		}
		coleccion.removeAll(self.filtrarQuemados())
	}
	method seQuemaTodaLaColeccion(){
		coleccion.forEach({c => c.quemar()})
		coleccion.removeAll(self.filtrarQuemados())
	}
	method filtrarQuemados() = coleccion.filter({c => c.estaArruinado()})
}

object estampilla{
	var property antiguedad = 100
	var property valoracion = 10
	method valor() = antiguedad * valoracion
}

object ollaDeHierro{
	const property estaArruinado = false
	method valor()=200
	method quemar(){}
}

object collar{
	const property estaArruinado = false
	method valor()=100000
	method quemar(){}
}

object memoria{
	const property estaArruinado = false
	var property capacidad = 4
	method valor()=capacidad*100
	method alterar(p){capacidad*=capacidad*p/100}
	method quemar(){capacidad*=0.01}
}


object libro{
	var property valor = 300
	method valor()=valor
}

