import golosinas.*

object mariano {

	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var property golosinas = []
	var peso

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

	method golosinaDeSabor(unSabor) = golosinas.find{ golosina => golosina.gusto() == unSabor }

	method golosinasDeSabor(unSabor) = golosinas.filter{ golosina => golosina.gusto() == unSabor }

	method sabores() = golosinas.map{ golosina => golosina.gusto() }.withoutDuplicates()

	method golosinaMasCara() = golosinas.max{ golosina => golosina.precio() }

	method pesoGolosinas() = golosinas.sum{ golosina => golosina.peso() }

	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas)

	method gustosFaltantes(gustosDeseados) {
		return gustosDeseados.difference(self.sabores().asSet())
	}

	method baniar(unaGolosina) {
		if (golosinas.contains(unaGolosina)) {
			golosinas.remove(unaGolosina)
		}
		golosinas.add(new GolosinaBaniada(golosinaInterior = unaGolosina))
	}

}

