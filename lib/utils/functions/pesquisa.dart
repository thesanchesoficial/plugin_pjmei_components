import 'package:plugin_pjmei_components/domain/entities/filtro/filtro_categoria.dart';

/// Pesquisa um [termo] em uma [lista] de *FiltroCategoria*.
///
/// Retorna a [lista] de *FiltroCategoria* com apenas as palavras contendo os [termo]s.
///
/// Acentos e cedilha removidos automaticamente.
List<FiltroCategoria> pesquisa(String termo, {required List<FiltroCategoria> listaCategorias, bool pesquisarSubcategorias = false}) {
  List<String> termos = _removerCaracteresEspeciais(termo.toString().trim()).split(" ");
  for (var element in listaCategorias) {
    if (pesquisarSubcategorias) {
      if (element.subcategorias != null && element.subcategorias!.isNotEmpty) {
        element.subcategorias?.forEach((elementSub) {
          elementSub.exibido = false;
          for (var elementTermo in termos) {
            if (_removerCaracteresEspeciais(elementSub.nome ?? "").contains(elementTermo)) elementSub.exibido = true;
          }
        });
      }
    } else {
      element.exibido = false;
      for (var elementTermo in termos) {
        if (_removerCaracteresEspeciais(element.nome ?? "").contains(elementTermo)) {
          element.exibido = true;
        }
      }
    }
  }
  return listaCategorias;
}

/// Retorna a *String* [termo] sem acentos e cedilha
String _removerCaracteresEspeciais(String termo) {
  termo = termo.trim().toLowerCase();
  List a = ["á", "à", "ã", "â", "ä", "ä"];
  for (var letra in a) {
    termo = termo.replaceAll(letra, "a");
  }

  List e = ["é", "è", "ê", "ë"];
  for (var letra in e) {
    termo = termo.replaceAll(letra, "e");
  }

  List i = ["í", "ì", "î", "ï"];
  for (var letra in i) {
    termo = termo.replaceAll(letra, "i");
  }

  List o = ["ó", "ò", "ô", "õ", "ö"];
  for (var letra in o) {
    termo = termo.replaceAll(letra, "o");
  }

  List u = ["ú", "ù", "û", "ü"];
  for (var letra in u) {
    termo = termo.replaceAll(letra, "u");
  }

  List y = ["ý", "ÿ"];
  for (var letra in y) {
    termo = termo.replaceAll(letra, "y");
  }

  termo = termo.replaceAll("ç", "c");
  termo = termo.replaceAll("ñ", "n");

  termo = termo.replaceAll(",", " ");
  termo = termo.replaceAll(".", " ");

  return termo;
}
