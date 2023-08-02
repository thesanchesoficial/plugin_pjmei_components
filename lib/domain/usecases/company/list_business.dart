import 'package:plugin_pjmei_components/data/usecases/company/remote_list_business.dart';

abstract class ListBusines {
  Future<ListCompanyResult> exec();
}