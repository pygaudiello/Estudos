// ignore_for_file: avoid_print, file_names

void main() {
  String nome = 'Laranja';
  double peso = 98;
  int diasDesdeColheita = 30;
  int diasParaMadura = 20;

  String estadoDaFruta;

  if (diasDesdeColheita >= diasParaMadura) {
    estadoDaFruta = 'madura';
  } else {
    estadoDaFruta = 'verde';
  }

  print('A $nome pesa $peso gramas! \n'
      'Ela foi colhida há $diasDesdeColheita dias e precisa de $diasParaMadura para amadurecer. \n'
      'Logo, a $nome está $estadoDaFruta!');
}
