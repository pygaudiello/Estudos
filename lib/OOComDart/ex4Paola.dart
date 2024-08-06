// ignore_for_file: file_names, avoid_print

void main(){

  Legumes mandioca1 = Legumes(true, 'Macaxeira', 1200.59, 'Marrom');

  Frutas banana1 = Frutas('Doce', 5, true, 'Banana', 250.65, 'Amarela');

  Nozes macadamia1 = Nozes(100.00, 'Doce', 20, true , 'Macadâmia', 1.95, 'Branco Amarelado');

  Citricas limao1 = Citricas(10, 'Azedo', 5, true, 'Limão', 5.25, 'Verde');

  mandioca1.infoAlimento();
  banana1.infoAlimento();
  macadamia1.infoAlimento();
  limao1.infoAlimento();

  mandioca1.cozinhar();
  limao1.fazerSuco();
  
  banana1.estaMadura(10);
}


class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(
    this.nome,
    this.peso,
    this.cor
  );

  void infoAlimento(){
    print('Este(a) $nome é saboroso e pesa $peso gramas, além da coloração $cor');
  }
}

class Frutas extends Alimento{
  
  String sabor;
  int diasDesdeColheita;
  bool? isMadura; 
 
  Frutas(
    this.sabor,
    this.diasDesdeColheita,
    this.isMadura,
    super.nome, 
    super.peso, 
    super.cor);

 estaMadura(int diasParaMadura) {
  isMadura = diasDesdeColheita >= diasParaMadura;
    if(isMadura == true){
      print('A $nome está madura');
    }
    else{
      print('A $nome não está madura, ela precisa de $diasParaMadura dias para estar madura');
    }
  }

void fazerSuco(){
  print('Você fez um ótimo suco de $nome');
}

}

class Legumes extends Alimento{
  bool isPrecisaCozinhar;
  
  Legumes(
    this.isPrecisaCozinhar, 
    super.nome, 
    super.peso, 
    super.cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print('Pronto, o(a) $nome está cozinhando');
    }else{
      print('Não precisa cozinhar');
    }
  }
}

class Citricas extends Frutas{
  double nivelDeAzedo;

  Citricas(
    this.nivelDeAzedo,
    super.sabor, 
    super.diasDesdeColheita,
    super.isMadura, 
    super.nome, 
    super.peso, 
    super.cor);

void existeRefri(bool existe){
  if(existe){
    print('Existe refrigerante de $nome');
  }else{
    print('Não existe refri de $nome');
  }
}
}

class Nozes extends Frutas{
  double porcentagemOleoNatural;

  Nozes(
    this.porcentagemOleoNatural,
    super.sabor, 
    super.diasDesdeColheita, 
    super.isMadura, 
    super.nome, 
    super.peso, 
    super.cor);
}