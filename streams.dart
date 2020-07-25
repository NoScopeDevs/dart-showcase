/*

  Los streams proveen una secuencia asíncrona de data
  Las secuencias de data incluyen eventos generados por el usuario y data que se lee de archivos
  Podés procesar un stream usando await o listen() del Stream API
  Los streams proveen una gran forma de responder a errores
  Hay dos tipos de stream: de única suscripción o de broadcast (múltiples suscripciones)

  Aquí tenemos el ejemplo del clásico contador recreado en consola con un stream
*/

import 'dart:async';

class Counter {
  Counter() {
    Timer.periodic(
      Duration(seconds: 1),
      (t) {
        _controller.sink.add(_count);
        _count++;
      },
    );
  }

  var _count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;

  dispose() {
    _controller.close();
  }
}

void main() async {
  final subscription = Counter().stream.listen(
        (item) => print(item),
      );

  await Future.delayed(
    Duration(seconds: 10),
    () => subscription.cancel(),
  );

  print('Y eso es un stream :)');
}
