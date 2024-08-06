// Classe Abstrata: Animal
// ignore_for_file: file_names, avoid_print

abstract class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void emitirSom();
  void mover();
  void alimentar();
}

// Classe Concreta: Cachorro
class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade);

  @override
  void emitirSom() {
    print('$nome faz: Au Au!');
  }

  @override
  void mover() {
    print('$nome está correndo!');
  }

  @override
  void alimentar() {
    print('$nome está comendo ração.');
  }
}

// Função principal para testar a implementação
void main() {
  Cachorro meuCachorro = Cachorro('Rex', 3);

  meuCachorro.emitirSom();
  meuCachorro.mover();
  meuCachorro.alimentar();
}
