import objetos.*
import personas.*
object objeto_De_vidriera {
    var objeto_En_Vidriera = muñeco
    
    method objeto_En_Vidriera() = objeto_En_Vidriera
    method nuevo_objeto_en_Vidriera (nuevo_objeto){
        objeto_En_Vidriera = nuevo_objeto
    }
}

object objeto_De_Mostrador {
    var objeto_En_Mostrador = muñeco
    
    method objeto_En_Mostrador() = objeto_En_Mostrador
    method nuevo_objeto_en_Mostrador (nuevo_objeto){
        objeto_En_Mostrador = nuevo_objeto
    }
}
object bolichito {
     
    method Bolichito_es_Brillante(){
        return objeto_De_vidriera.objeto_En_Vidriera().material().EsBrillante() and
        objeto_De_Mostrador.objeto_En_Mostrador().material().EsBrillante()
    }

    method Bolichito_es_Monocromatico(){
        return objeto_De_vidriera.objeto_En_Vidriera().color() ==
        objeto_De_Mostrador.objeto_En_Mostrador().color()
    } 

    method Bolichito_es_Equilibrado(){
        return objeto_De_vidriera.objeto_En_Vidriera().pesoEnGramos() < 
        objeto_De_Mostrador.objeto_En_Mostrador().pesoEnGramos()
    }

    method tiene_objeto_de_color(color){
        return objeto_De_vidriera.objeto_En_Vidriera().color() == color 
        or objeto_De_Mostrador.objeto_En_Mostrador().pesoEnGramos() == color
    }

    method puede_mejorar(){
        return self.Bolichito_es_Monocromatico() or not self.Bolichito_es_Equilibrado()
    }

    method tiene_algo_para_ofrecer_a(persona){
        return persona.leGusta(objeto_De_vidriera.objeto_En_Vidriera()) or
        persona.leGusta(objeto_De_Mostrador.objeto_En_Mostrador())
    }
}