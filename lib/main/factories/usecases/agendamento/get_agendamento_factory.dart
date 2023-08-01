import 'package:plugin_pjmei_components/data/usecases/pedido/remote_get_pedido.dart';
import 'package:plugin_pjmei_components/domain/usecases/pedido/get_pedido.dart';
import '../../factories.dart';

GetPedido makeRemoteGetAgendamento(String id) => RemoteGetPedido(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/agendamento/$id'),
    );
