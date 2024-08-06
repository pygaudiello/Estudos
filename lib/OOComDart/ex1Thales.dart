// ignore_for_file: file_names

class Fruta {
  String nome;
  int peso;
  int diasDesdeColheita;
  int diasParaMadura;
  late bool isMadura;

  Fruta({
    required this.nome,
    required this.peso,
    required this.diasDesdeColheita,
    required this.diasParaMadura,
  }) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }

  @override
  String toString() {
    return '''
A $nome pesa $peso g
Ela foi colhida há $diasDesdeColheita dias
precisa de $diasParaMadura para amadurecer
a $nome ${isMadura ? 'está madura' : 'não está madura'}
''';
  }
}

void main() {
  var laranja = Fruta(
    nome: 'Laranja',
    peso: 98,
    diasDesdeColheita: 30,
    diasParaMadura: 20,
  );
  // ignore: avoid_print
  print(laranja.toString());
}
