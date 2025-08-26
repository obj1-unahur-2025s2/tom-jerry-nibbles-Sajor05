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
    
    //E F E C T O
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

  //R E T O R N O
  method edad() = años
  method peso() = self.edad()*20

  //E F E C T O
  method cumpleaños() {
    años+=1
  }
}

object nibbles {
  method edad() = 1.75
  method peso() = 35
}

// Inventar otro ratón

object pepito {
  method edad() = 2.5
  method peso() = self.edad()*20
}