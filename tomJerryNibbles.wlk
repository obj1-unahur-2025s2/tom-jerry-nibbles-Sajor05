/*
------------------
-- P A R T E  1 --
------------------
*/


object tom {
    //V A R I B A L E S
    var energia = 50

    //R E T O R N O
    method energia() = energia
    method velocidadMaxima() = (5 + (self.energia()/10))
    method puedeCazar(unRaton) = self.energia() >= unRaton.distancia()/2
    
    //E F E C T O
    method cazar(unRaton,unaDistancia) {
      if(self.puedeCazar(unRaton)){
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
    method comer(unRaton) {
      energia+=12+unRaton.peso()
    }
    method correr(unaDistancia) {
      energia-=unaDistancia/2
    }
}

object jerry {
  //V A R I A B L E S
  var años = 2
  var distancia = 50

  //R E T O R N O
  method edad() = años
  method peso() = self.edad()*20
  method distancia() = distancia

  //E F E C T O
  method cambiarDistancia(unaDistancia) {
    distancia=0.max(unaDistancia)
  }
  method cumpleaños() {
    años+=1
  }
}

object nibbles {
  //V A R I A B L E S
  var distancia = 500

  //R E T O R N O
  method edad() = 1.75
  method peso() = 35
  method distancia() = distancia

  //E F E C T O
  method cambiarDistancia(unaDistancia) {
    distancia=0.max(unaDistancia)
  }
}

// Inventar otro ratón

object pepito {
  //V A R I A B L E S
  var distancia = 500
  var peso = 35
  var energia = 500
  //R E T O R N O
  method edad() = 2.5
  method peso() = peso
  method energia() = energia
  method distancia() = distancia

  //E F E C T O
  method cambiarPeso(unPeso) {
    peso=0.max(unPeso)
  }
  method correrRapidisimo(unaDistancia) {
    energia-=unaDistancia/6
  }
  method cambiarDistancia(unaDistancia) {
    distancia=0.max(unaDistancia)
  }
}