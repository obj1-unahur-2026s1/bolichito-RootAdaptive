import objetos.*
import colores.*

object rosa {
    method leGusta(objeto){
        return objeto.pesoEnGramos() <= 2000
    } 
}

object  estefania {
    method leGusta(objeto){
        return objeto.color().EsColorFuerte()
    }
}

object luisa {
    method leGusta(objeto){
        return objeto.color().EsBrillante()
    }
}

object juan {
    method leGusta(objeto){
        return not objeto.color().Esbrillante() or
        objeto.peso().between(1200,1800)
    }
}