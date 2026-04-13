import colores.*

object remera {
  method color() = rojo
  method material() = lino
  method pesoEnGramos() = 800  
}

object pelota {
  method color() = pardo
  method material() = cuero
  method pesoEnGramos() = 1300  
}

object biblioteca {
  method color() = verde
  method material() = madera
  method pesoEnGramos() = 8000  
}

object muñeco {
  var peso = 50
  method color() = celeste
  method material() = vidrio
  method pesoEnGramos() = peso
  method nuevoPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}

object placa {
  var peso = 100
  var color = rojo
  method pesoEnGramos() = peso  
  method color() = color
  method material() = cobre 
  method nuevoColor(colorNuevo){
    color = colorNuevo
  }
  method nuevoPeso(pesoNuevo) {
    peso = pesoNuevo
  }
}

