/*
 * 
 * Los extension methods sólo funcionan con variables
 * con tipado estático pero se llevan bien con variables
 * cuyo tipo pueda ser inferido por Dart
 * 
 */

extension ParseNumbers on String {
  int parseInt() => int.parse(this);
  double parseDouble() => double.parse(this);
}

// también podemos extender operadores

extension ShiftString on String {
  String operator <<(int shift) {
    return this.substring(shift, this.length) + this.substring(0, shift);
  }
}

main() {
  int i = '42'.parseInt();
  print(i);
  
  var name = 'Marcos';
  var shift = name << 2;
  
  print(shift);
}
