part of '../../../apis.dart';

class _AccountApi {

  Future<KycDetails> generateKyc({required String id}) {
    return generateKycLink(id).exec();
  }

  Future<bool> generateWithdrawals({required String id, required int amount}) {
    return generateWithdrawalsAmount(id).exec(
      body: {
        "amount": amount,
      }
    );
  }
  
  Future<BalanceEntity> getBalance({required String id}) {
    return getBalanceApi(id).exec();
  }

  Future<List<OperationEntity>> listOperations({required String id, required Map<String, dynamic> params}) {
    return makeRemoteListOperations(id, params: params).exec();
  }

  Future<List<PayableEntity>> listPayables({required String id, required Map<String, dynamic> params}) {
    return makeRemoteListPayables(id, params: params).exec();
  }

  Future<List<WithdrawalsEntity>> listWithdrawals({required String id, required Map<String, dynamic> params}) {
    return makeRemoteListWithdrawals(id, params: params).exec();
  }

  Future<bool> registerToPayments({
    required String id,
    String? userAddressId,
    String? userProfessionalOccupation,
    bool? userSelfDeclaredLegalRepresentative,
    int? companyAnnualRevenue,
    int? userMonthlyIncome,
    Map<String, dynamic>? bankAccount,
  }) {
    return registerToPaymentsApi(id).exec(
      body: {
        'companyAnnualRevenue': companyAnnualRevenue,
        'userAddressId': userAddressId,
        'userMonthlyIncome': userMonthlyIncome,
        'userProfessionalOccupation': userProfessionalOccupation,
        'userSelfDeclaredLegalRepresentative': userSelfDeclaredLegalRepresentative,
        'bankAccount': bankAccount,
      },
    );
  }
}