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

  // pega as informações repassadas pelos animais gato e cachorro
  Animal(this.nome, this.peso); 

  void comer(){
    print("$nome comeu");
  } 

  void fazerSom(){
    print("$nome fez dom!");
  }
}
 
class Cachorro extends Animal {
  int fofura; 

  // Temos que passar a função super, pois nome e peso não estão sendo passados para a classe Animal, então coloca-se o super que é um construtor da nossa super classe Animal
  Cachorro(String nome, double peso, this.fofura): super(nome, peso); 

  void brincar(){
    fofura += 10;
    print("fofura do $nome aumentou para $fofura");
  }
} 

class Gato extends Animal {
  Gato(String nome, double peso): super(nome, peso); 

  estaAmigavel(){
    return true;
  }
}