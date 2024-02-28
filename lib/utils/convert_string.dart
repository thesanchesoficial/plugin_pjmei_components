import 'package:plugin_pjmei_components/utils/variable.dart';

class ConvertString {
  ConvertString._();

  Map<String, dynamic> additionalsCompany = {
    '#companyId': '${companySM.company?.id}',
    '#companyFantasyName': '${companySM.company?.fantasyName}',
    '#companyCorporateName': '${companySM.company?.corporateName}',
    '#companyDocument': '${companySM.company?.documentNumber}',
  };

  Map<String, dynamic> additionalsUser = {
    '#userId': '${userSM.user?.id}',
    '#userName': '${userSM.user?.name}',
    '#userFirstName': "${userSM.user?.name.split(" ")[0] ?? "${userSM.user?.name}"}",
    '#userDocument': '${userSM.user?.documentNumber}',
  };

  Map<String, dynamic> additionalsStore = {
    '#storeId': "${ecommerceSM.establishment?.id ?? "null"}",
    '#storeName': "${ecommerceSM.establishment?.name ?? "null"}",
  };
}

String convertStringAlls(String text, {Map<String, dynamic>? additionals}) {
  final Map<String, dynamic> params = {};
  params.addAll(ConvertString._().additionalsCompany);
  params.addAll(ConvertString._().additionalsUser);
  params.addAll(ConvertString._().additionalsStore);

  if (additionals != null) {
    params.addAll(additionals);
  }

  params.forEach((k, v) {
    text = text.replaceAll(k, '$v');
  });

  return text;
}

String? convertString(String? text, {Map<String, dynamic>? additionals}) {
  if(additionals != null) {
    additionals.forEach((k, v) {
      if(text == null) text = '';
      text = text!.replaceAll(k, "$v");
    });
  }
  return text;
}