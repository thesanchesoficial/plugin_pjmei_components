import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'package:permission_handler/permission_handler.dart';

import '../features/address/domain/entity/address_entity.dart';

class Geo {
  /// Obter endereço baseado na [latitude] e [longitude]
  ///
  /// Se [latitude] ou [longitude] for null, buscará pela localização corrente (GPS)
  ///
  ///  - cep, logradouro, bairro, cidade, estado e país
  ///
  /// [pedirPermissaoLocalizacao] deve ser true caso queira pedir permissão (só pedirá se ainda não tiver aceito)
  ///
  /// [resultadosPadrao] serve para caso não consiga retornar pela API
  Future<Map<String, dynamic>> buscarEndereco({
    double? latitude,
    double? longitude,
    bool pedirPermissaoLocalizacao = true,
    AddressEntity? resultadosPadrao,
  }) async {
    Map<String, dynamic> resultado = {};
    // if (resultadosPadrao == null) resultadosPadrao = EnderecoEntity();
    try {
      if (latitude == null || longitude == null) {
        if (pedirPermissaoLocalizacao) await Permission.location.request();

        if (await Permission.location.status.isGranted) {
          final valor = await Geolocator.getCurrentPosition();
          final Map<String, dynamic> localizacao =
              jsonDecode(jsonEncode(valor));
          resultado = localizacao;
        } else {
          resultado = {'erro': 'Permission.location is not Granted'};
        }
      } else {
        final coordinates = Coordinates(latitude, longitude);
        final List<Address> addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
        final Address enderecoTemp = addresses[0];
        final String? cep = enderecoTemp.postalCode ?? resultadosPadrao?.zipCode;
        final String logradouro = enderecoTemp.thoroughfare != null && enderecoTemp.thoroughfare != 'Unnamed Road' ? enderecoTemp.thoroughfare! : 'Sem logradouro';
        final String bairro = enderecoTemp.subLocality ?? resultadosPadrao?.neighborhood ?? 'Sem bairro';
        final String cidade = enderecoTemp.subAdminArea ?? resultadosPadrao?.city ?? 'Sem cidade';
        final String estado = abrevEstados(enderecoTemp.adminArea ?? '');
        final String codigoPais = enderecoTemp.countryCode ?? 'Sem país';
        final Map<String, dynamic> mapEndereco = {
          'cep': cep,
          'logradouro': logradouro,
          'bairro': bairro,
          'cidade': cidade,
          'estado': estado,
          'pais': codigoPais,
        };
        resultado = mapEndereco;
      }
    } catch (e) {
      resultado = {'erro': e.toString()};
    }
    return resultado;
  }

  /// Obter latitude e longitude baseado no endereço
  ///
  /// Se todos os campos forem null, obtem as coordenadas atuais
  ///
  /// [cep] pode ou não conter pontos e traços
  ///
  /// Se algum campo diferente de [cep] for passado ou alterado, será retornado as
  /// coordenadas baseadas nestes campos
  ///
  /// [cep] é prioritário em relaçãoa aos outros campos
  Future<Map<String, dynamic>> buscarCoordenadas({
    String? cep,
    // String numero,
    String? cidade = 'Cachoeiro de Itapemirim',
    String? bairro,
    String? logradouro,
    bool pedirPermissaoLocalizacao = true,
  }) async {
    Map<String, dynamic> resultado = {};
    try {
      if (cep != null) {
        if (logradouro == null) logradouro = '';
        if (cidade == null) cidade = '';
        if (bairro == null) bairro = '';
        final String query = '$cep, $logradouro, $bairro, $cidade';

        final List<Address> addresses = await Geocoder.local.findAddressesFromQuery(query);
        final Address enderecoTemp = addresses[0];
        final Coordinates? coordenadas = enderecoTemp.coordinates;

        final Map<String, dynamic> coordenadasMap = {
          'latitude': '${coordenadas?.latitude}',
          'longitude': '${coordenadas?.longitude}',
        };
        resultado = coordenadasMap;
      } else {
        if (pedirPermissaoLocalizacao) await Permission.location.request();
        if (await Permission.location.status.isGranted) {
          final Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
          final Map<String, dynamic> coordenadasMap = {
            'latitude': position.latitude,
            'longitude': position.longitude,
          };
          resultado = coordenadasMap;
        } else {
          resultado = {'erro': 'Permission.location is not Granted'};
        }
      }
    } catch (e) {
      final Map<String, dynamic> erro = {
        'erro': e.toString(),
      };
      resultado = erro;
    }
    return resultado;
  }

  String abrevEstados(String estado) {
    final List<Map<String, String>> estados = [
      {
        'estado': 'Acre',
        'sigla': 'AC',
      },
      {
        'estado': 'Alagoas',
        'sigla': 'AL',
      },
      {
        'estado': 'Amapá',
        'sigla': 'AP',
      },
      {
        'estado': 'Amazonas',
        'sigla': 'AM',
      },
      {
        'estado': 'Bahia',
        'sigla': 'BA',
      },
      {
        'estado': 'Ceará',
        'sigla': 'CE',
      },
      {
        'estado': 'Espírito Santo',
        'sigla': 'ES',
      },
      {
        'estado': 'Goiás',
        'sigla': 'GO',
      },
      {
        'estado': 'Maranhão',
        'sigla': 'MA',
      },
      {
        'estado': 'Mato Grosso',
        'sigla': 'MT',
      },
      {
        'estado': 'Mato Grosso do Sul',
        'sigla': 'MS',
      },
      {
        'estado': 'Minas Gerais',
        'sigla': 'MG',
      },
      {
        'estado': 'Pará',
        'sigla': 'PA',
      },
      {
        'estado': 'Paraíba',
        'sigla': 'PB',
      },
      {
        'estado': 'Paraná',
        'sigla': 'PR',
      },
      {
        'estado': 'Pernambuco',
        'sigla': 'PE',
      },
      {
        'estado': 'Piauí',
        'sigla': 'PI',
      },
      {
        'estado': 'Rio de Janeiro',
        'sigla': 'RJ',
      },
      {
        'estado': 'Rio Grande do Norte',
        'sigla': 'RN',
      },
      {
        'estado': 'Rio Grande do Sul',
        'sigla': 'RS',
      },
      {
        'estado': 'Rondônia',
        'sigla': 'RO',
      },
      {
        'estado': 'Roraima',
        'sigla': 'RR',
      },
      {
        'estado': 'Santa Catarina',
        'sigla': 'SC',
      },
      {
        'estado': 'São Paulo',
        'sigla': 'SP',
      },
      {
        'estado': 'Sergipe',
        'sigla': 'SE',
      },
      {
        'estado': 'Tocantins',
        'sigla': 'TO',
      },
      {
        'estado': 'Distrito Federal',
        'sigla': 'DF',
      },
    ];
    for (Map<String, String> i in estados) {
      if (estado.contains(i['estado'] as Pattern)) return i['sigla'] ?? 'BR';
    }
    return 'BR';
  }
}
