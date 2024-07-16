import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_kyc_details.dart';
import '../usecase/remote_generate_kyc_link.dart';

GetKycDetails generateKycLink(String id) => RemoteGenerateKycLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/companies/$id/recipients/kyc-link'),
);

// router.post("/company"); // inserir empresa
// router.put("/company/:id"); // atualizar empresa
// router.delete("/company/:id"); // deletar empresa
// router.get("/company"); // listar empresas
// router.get("/company/:id"); // find de uma empresa
// router.get("/company/user/:id"); // listar empresas do usuario

// router.post("/companies/:companyId/recipients"); // criar o recebedor
// router.post("/companies/:companyId/recipients/kyc-link"); // gerar qr da prova de vida
// router.post("/companies/:companyId/recipients/withdrawals"); // criar saque
// router.post("/companies/:companyId/contestations"); // emitir contestacao
// router.get("/companies/:companyId/recipients/balance"); // saldos da empresa
// router.get("/companies/:companyId/recipients/withdrawals"); // listar saques
// router.get("/companies/:companyId/payables"); // listar pagamentos
// router.get("/companies/:companyId/balance/operations"); // listar operacoes
// router.get("/companies/:companyId/receivable-units"); // listar rus
// router.get("/companies/:companyId/settlement-obligations"); // listar obrigacoes
// router.get("/companies/:companyId/settlement_obligations/contracts"); // listar contratos
// router.get("/companies/:companyId/contestations"); // listar contestacoes