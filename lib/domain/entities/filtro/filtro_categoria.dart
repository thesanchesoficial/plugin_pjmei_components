import 'filtro_subcategoria.dart';

class FiltroCategoria {
  String? id;
  String? nome;
  bool? ativo;
  bool? exibido;
  List<FiltroSubcategoria>? subcategorias;

  FiltroCategoria({
    this.id,
    this.nome,
    this.ativo,
    this.exibido,
    this.subcategorias,
  });

  @override
  String toString() {
    return 'FiltroCategoria(id: $id, nome: $nome, ativo: $ativo, exibido: $exibido, subcategorias: $subcategorias)';
  }

  limpar(){
    subcategorias?.forEach((element) {
      element.limpar();
    });
    ativo = false;
    exibido = true;
  }

  FiltroCategoria copyWith({
    String? id,
    String? nome,
    bool? ativo,
    bool? exibido,
    List<FiltroSubcategoria>? subcategorias,
  }) {
    List<FiltroSubcategoria> listaSubcategorias = [];
    if(subcategorias == null){
      listaSubcategorias = [];
      this.subcategorias?.forEach((element) {
        listaSubcategorias.add(element.copyWith());
      });
    }
    return FiltroCategoria(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      ativo: ativo ?? this.ativo,
      exibido: exibido ?? this.exibido,
      subcategorias: subcategorias ?? listaSubcategorias,
    );
  }
}