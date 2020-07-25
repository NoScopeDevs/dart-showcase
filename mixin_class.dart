/**
 * Los mixins son una forma de reutilizar el código de una clase en múltiples jerarquías de clase.
 */
void main() {
  final perro = Perro();
  perro.nombre();
  perro.moverse();

  final pato = Pato();
  pato.nombre();
  pato.moverse();
  pato.volar();
}

class Animal {
  void moverse() {
    print('Animal se mueve');
  }

  void nombre() {
    print('Soy un Mamifero');
  }
}

mixin Volar {
  @override
  void nombre() {
    print('Soy un Pato');
  }

  void volar() {
    print('Animal volando');
  }
}

class Perro extends Animal {}

class Pato extends Animal with Volar {}
