
main() {
  var pessoa = Pessoa('Tiago', 'Brasileiro');

  var grandeHumorista = Humorista("Pedro", "Americano");
  print('Nome do humorista: ${pessoa.nome}');
  print('Nacionalidade do humorista: ${pessoa.nacionalidade}');
  grandeHumorista.fazerSom();
  grandeHumorista.respirar();
  grandeHumorista.fazerRir();
}

abstract class Animal {
  void respirar();

  void fazerSom(){
    print('fazendo som');
  }
}

class Pessoa implements Animal {
  String nome, nacionalidade;

  // método construtor
  Pessoa(this.nome, this.nacionalidade);

  @override
  void respirar() {
    print('respirando igual um humano');
  }
  
  @override
  void fazerSom() {
    print('fazendo som como Humano');
  }
}

abstract class Engracado {
  void fazerRir();
}

class Humorista extends Pessoa implements Engracado {
  // como criamos construtores na class Pessoa, temos que passá-lo para o super
  Humorista(String nome, String nacionalidade) : super(nome, nacionalidade);

  void fazerRir() {
    print("humorista engracado");
  }  
}
