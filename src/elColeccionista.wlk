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
	method elementosValenMas(){ coleccion.filter({c => c.valor()>500}) }
}

object estampilla{
	var property antiguedad = 100
	var property valoracion = 10
	method valor() = antiguedad * valoracion
}

object ollaDeHierro{
	method valor()=200
}

object collar{
	method valor()=100000
}

object memoria{
	var property capacidad = 4
	method valor()=capacidad*100
	method alterar(p)=capacidad-capacidad*p
}


object libro{
	var property valor = 300
	method valor()=valor
}

