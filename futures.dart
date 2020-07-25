/**
 * Los futures nos facilitan el trabajo de procesos asincronos
 * Los Futures pueden tener 3 estados, incompletos, cuando es completado tiene un valor o un error
 * que hago si todavia esta incompleto, que hago si hay un error, que hago si hay un valor
 * dart code esta en un single thread, futures solo hacen mas facil el manejo de datos
 */

void main() {
  final future = Future(() {
    print('Creando Future');
    return 10;
  });

  print('main() terminado');

  // final future2 = Future.value(12);
  // final future3 = Future.error(Exception());

  // final future4 = Future.delayed(Duration(seconds: 2), () => 10);

  Future<int>.delayed(
    Duration(seconds: 3),
    () => throw Exception('soy un error'),
  ).then(
    (value) {
      print(value);
    },
  ).catchError(
    (error) {
      print("ERROR: $error");
    },
  ).whenComplete(
    () {
      print('Todo Termino');
    },
  );

  print('waiting...');
  // print('Future 4 $future4');
}
