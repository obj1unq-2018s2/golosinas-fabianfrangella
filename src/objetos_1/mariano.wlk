import golosinas.*

object mariano {

	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var property golosinas = []

	method comprar(golosina) {
		golosinas.add(golosina)
	}

	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}

	method probarGolosinas() {
		golosinas.forEach{ golosina => golosina.mordisco()}
	}

	method hayGolosinasSinTACC() = golosinas.any{ golosina => golosina.libreGluten() }

	method preciosCuidados() = golosinas.all{ golosina => golosina.precio() <= 10 }

	method golosinaDeSabor(unSabor) = golosinas.find{ golosina => golosina.sabor(unSabor) }

	method golosinasDeSabor(unSabor) = golosinas.filter{ golosina => golosina.sabor(unSabor) }

	method sabores() = golosinas.map{ golosina => golosina.gusto() }.withOutDuplicates()

	method golosinaMasCara() = golosinas.max{ golosina => golosina.precio() }

	method pesoGolosinas() = golosinas.sum{ golosina => golosina.peso() }

}

