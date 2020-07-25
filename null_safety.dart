 // // Para probar null safety: https://nullsafety.dartpad.dev/

void main() {
  
  String player0; // esto hace llorar a DartPad
  print(player0);
  
  // para las validaciones, las variables deben ser nullables
  
  String? player1;
  player1 ??= 'Elian'; // chequea si es null y asigna si lo es
  print(player1);
  
  String? player2;
  print(player2 ?? 'Marcos'); // chequea si es null

  String? player3; // esto le dice a DartPad que está bien que sea null
  print(player3);
  
}
