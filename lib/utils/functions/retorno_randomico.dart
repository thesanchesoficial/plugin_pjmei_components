dynamic retornoFixo(int index, {List<dynamic>? lista}){
  lista ??= [
    "assets/images/fundo_capa_azul.jpeg",
    "assets/images/fundo_capa_amarelo.jpeg",
    "assets/images/fundo_capa_verde.jpeg",
  ];
  index = index % lista.length;
  return lista[index];
}

dynamic retornoBaseadoNoNome(String nome, {List<dynamic>? lista}){
  lista ??= [
    "assets/images/fundo_capa_azul.jpeg",
    "assets/images/fundo_capa_amarelo.jpeg",
    "assets/images/fundo_capa_verde.jpeg",
  ];
  int index = nome.hashCode % lista.length;
  return lista[index];
}