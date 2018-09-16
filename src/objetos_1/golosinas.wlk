object bombon {

	var peso = 15

	method precio() {
		return 5
	}

	method peso() {
		return peso
	}

	method mordisco() {
		peso = peso * 0.8 - 1
	}

	method gusto() {
		return "frutilla"
	}

	method libreGluten() {
		return true
	}

}

object alfajor {

	var property peso = 300
	const property libreGluten = false

	method precio() = 12

	method gusto() = 'Chocolate'

	method mordisco() {
		peso *= 0.8
	}

}

object caramelo {

	var property peso = 5
	var property libreGluten = true

	method precio() = 1

	method gusto() = 'Frutilla'

	method mordisco() {
		peso -= 1
	}

}

object chupetin {

	var property peso = 7
	const property libreGluten = true

	method precio() = 2

	method gusto() = 'Naranja'

	method mordisco() {
		if (peso > 2) {
			peso *= 0.9
		}
	}

}

object oblea {

	var property peso = 250
	const property libreGluten = false

	method precio() = 5

	method mordisco() {
		if (peso > 70) {
			peso *= 0.5
		} else {
			peso *= 0.75
		}
	}

	method gusto() = 'Vainilla'

}

object chocolatin {

	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var property peso
	const property libreGluten = false

	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		peso = cuanto
	}

	method precio() = pesoInicial * 0.5

	method gusto() = 'Chocolate'

	method mordisco() {
		peso -= 2
	}

}

object golosinaBaniada {

	var golosinaInterior
	var pesoBanio = 4

	method baniaA(unaGolosina) {
		golosinaInterior = unaGolosina
	}

	method precio() = golosinaInterior.precio() + 2

	method peso() = golosinaInterior.peso() + pesoBanio

	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) {
			pesoBanio -= 2
		}
	// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}

	method gusto() {
		return golosinaInterior.gusto()
	}

	method libreGluten() = golosinaInterior.libreGluten()

}

object tuttifrutti {

	var property peso = 5
	var property libreGluten 
	const property sabores = [ 'Frutilla', 'Chocolate', 'Naranja' ]
	var property gusto = sabores.get(0)
	var cantMordiscos = 0

	method precio() = if (libreGluten) 7 else 10

	method mordisco() {
		cantMordiscos = if (cantMordiscos >= 2) 0 else cantMordiscos + 1
		gusto = sabores.get(cantMordiscos)
	}

}

