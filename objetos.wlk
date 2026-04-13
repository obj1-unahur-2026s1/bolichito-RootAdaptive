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

object arito {
  method color() = celeste
  method material() = cobre
  method pesoEnGramos() = 180
}


object banquito {
  var color = naranja
  method color() = color 
  method material() = madera
  method pesoEnGramos() = 1700
  method nuevoColor(colorNuevo){
    color = colorNuevo
  }
}

object cajita{
  var objeto_en_caja = muñeco
  
  method color() = rojo
  method material() = cobre
  method pesoEnGramos(){return 400}

  method objeto_dentro(){
    return objeto_en_caja 
  }
  method nuevo_objeto_dentro(nuevo_objeto){
    objeto_en_caja = nuevo_objeto
  }

  method peso_objeto_en_caja(){
    return objeto_en_caja.pesoEnGramos()
  }

  method peso_Total_De_Caja( ){
    return self.pesoEnGramos() + self.peso_objeto_en_caja()
  }
}
