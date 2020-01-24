/**
 * A reescritura funciona da seguinte forma: quando eu tenho um método, como por exemplo o método de "fazer som" da classe "Animal" do artigo anterior, e eu quero que este método se comporte diferente ou altere o conteúdo dele dentro das outras classes "cachorro" ou "gato".
 * Para fazer isso é simples, basta colocar o "@override" e colocar o método exatamente como está na outra classe. E ao executar o método ele não irá pegar o método da classe "Animal", mas sim da classe que eu adicionou o termo acima, vejamos:
 */

void main(){
  Cachorro cachorro = Cachorro("Bob", 10.0, 100);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar(); 

  Gato gato = Gato("Jerry", 10.0);

  gato.fazerSom();
  gato.comer();
  // como estou acessando um método do gato não se pode colocar somente cifrão, deve-se colocar entre chaves
  print("Está amigável? ${gato.estaAmigavel() == true ? 'SIM' : 'NÃO'}");
}

class Animal {
  String nome;
  double peso; 

  Animal(this.nome, this.peso); 

  void comer(){
    print("$nome comeu");
  }

  void fazerSom(){
    print("$nome fez som!");
  }
}

class Cachorro extends Animal {
  int fofura;

  Cachorro(String nome, double peso, this.fofura): super(nome, peso);

  void brincar(){
    fofura += 10;
    print("fofura do $nome aumentou para $fofura");
  }

  @override
    // este método sobreescreve o método da classe Animal
  void fazerSom(){
    print("$nome fez au!");
  }

  @override
  toString(){
    return "Cachorro | Nome: $nome, Peso: $peso, Fofura: $fofura";
  }
} 

class Gato extends Animal {
  Gato(String nome, double peso): super(nome, peso);

  estaAmigavel(){
    return true;
  }

  @override
  // este método sobreescreve o método da classe Animal
  void fazerSom(){
    print("$nome fez miau!");
  }
}