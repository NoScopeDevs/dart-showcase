/*
 * Las Clases son una manera de definir como un plano para objetos
 * las clases abstractas nos permiten definir un realacion entre objetos
 * crar una interfaz que otros objetos puedan utilizar
 * */

import 'dart:math' as math;

void main() {
  Circulo circulo1 = Circulo(10.0);
  print(circulo1.nombre());
  print(circulo1.area());

  Cuadrado cuadrado1 = Cuadrado(10.0);
  print(cuadrado1.nombre());
  print(cuadrado1.area());
}

//Clase Abstracta que sirve como modelo de varias figuras
abstract class Figura {
  String nombre();
  double area();
}

class Circulo extends Figura {
  final double radio;

  Circulo(this.radio);

  @override
  String nombre() => 'Soy un circulo!';

  @override
  double area() => 2 * math.pi * radio;
}

class Cuadrado extends Figura {
  final double tamanioLado;

  Cuadrado(this.tamanioLado);

  @override
  String nombre() => 'Soy un cuadrado!';

  @override
  double area() => tamanioLado * tamanioLado;
}
