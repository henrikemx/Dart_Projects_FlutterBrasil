main (List arguments) {
  
  var jogadores = {
    "primeiro":"Ronaldo",
    "segundo":"Diego",
    "terceiro":"Paulo",
  };
  
  print('='*10 + ' Chaves ' + '='*10);
  var chaves = jogadores.keys;
  print(chaves);

  print('='*10 + ' Valores ' + '='*10);
  var valores = jogadores.values;
  print(valores);

  print('='*10 + ' Lista ' + '='*10);
  jogadores.forEach(
    (c, v) => print('$c : $v')
  );

}