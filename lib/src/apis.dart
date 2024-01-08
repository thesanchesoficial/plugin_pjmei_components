import 'package:plugin_pjmei_components/features/extract/data/repositories/get_extract.dart';
import 'package:plugin_pjmei_components/features/extract/domain/entity/extract_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/entity/finance_bank_institution_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/entity/finance_category_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/entity/finance_credit_card_category_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/entity/finance_transaction_data_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/entity/finance_transaction_entity.dart';
import 'package:plugin_pjmei_components/features/finance/domain/usecase/list_finance_dashboard_basic.dart';
import 'package:plugin_pjmei_components/features/nota_fiscal/domain/entity/nota_fiscal_entity.dart';
import 'package:plugin_pjmei_components/features/nota_fiscal/domain/entity/notafiscal_service_entity.dart';

export '../features/finance/data/repositories/bank/delete_finance_bank_factory.dart';
export '../features/finance/data/repositories/bank/get_finance_bank_factory.dart';
export '../features/finance/data/repositories/bank/list_finance_bank_cash_flow_factory.dart';
export '../features/finance/data/repositories/bank/list_finance_bank_factory.dart';
export '../features/finance/data/repositories/bank/list_finance_dashboard_banks_factory.dart';
export '../features/finance/data/repositories/bank/list_finance_transactions_bank_factory.dart';
export '../features/finance/data/repositories/bank/post_finance_bank_factory.dart';
export '../features/finance/data/repositories/bank/put_finance_bank_factory.dart';

export '../features/finance/data/repositories/credit-card/create_finance_credit_card_factory.dart';
export '../features/finance/data/repositories/credit-card/delete_finance_credit_card_factory.dart';
export '../features/finance/data/repositories/credit-card/flag/create_finance_card_flags_factory.dart';
export '../features/finance/data/repositories/credit-card/flag/delete_finance_card_flags_factory.dart';
export '../features/finance/data/repositories/credit-card/flag/list_finance_card_flags_factory.dart';
export '../features/finance/data/repositories/credit-card/flag/update_finance_card_flags_factory.dart';
export '../features/finance/data/repositories/credit-card/get_finance_credit_card_by_id_factory.dart';
export '../features/finance/data/repositories/credit-card/get_finance_credit_card_dashboard_factory.dart';
export '../features/finance/data/repositories/credit-card/get_finance_credit_card_factory.dart';
export '../features/finance/data/repositories/credit-card/get_finance_credit_card_status_factory.dart';
export '../features/finance/data/repositories/credit-card/invoice/finance_credit_card_invoice_delete_factory.dart';
export '../features/finance/data/repositories/credit-card/invoice/finance_credit_card_invoice_factory.dart';
export '../features/finance/data/repositories/credit-card/list_finance_dashboard_credit_card_factory.dart';
export '../features/finance/data/repositories/credit-card/transactions/create_finance_credit_card_transaction_factory.dart';
export '../features/finance/data/repositories/credit-card/transactions/delete_finance_credit_card_transaction_factory.dart';
export '../features/finance/data/repositories/credit-card/transactions/list_finance_credit_card_transaction_factory.dart';
export '../features/finance/data/repositories/credit-card/transactions/update_finance_credit_card_transaction_factory.dart';
export '../features/finance/data/repositories/credit-card/update_finance_credit_card_factory.dart';

import '../features/address/data/repositories/delete_address_factory.dart';
import '../features/address/data/repositories/find_address_factory.dart';
import '../features/address/data/repositories/insert_address_factory.dart';
import '../features/address/data/repositories/list_address_by_user_factory.dart';
import '../features/address/data/repositories/update_address_factory.dart';
import '../features/address/domain/entity/address_entity.dart';
import '../features/auth/data/repositories/change_password_factory.dart';
import '../features/auth/data/repositories/check_if_user_exists_factory.dart';
import '../features/auth/data/repositories/login_factory.dart';
import '../features/auth/data/repositories/new_password_factory.dart';
import '../features/auth/data/repositories/new_refresh_token.dart';
import '../features/auth/data/repositories/register_factory.dart';
import '../features/auth/data/repositories/send_email_recover_password_factory.dart';
import '../features/auth/domain/entity/check_if_user_exists_entity.dart';
import '../features/auth/domain/entity/login_params_entity.dart';
import '../features/auth/domain/entity/register_params_entity.dart';
import '../features/blog/data/repositories/get_list_categories_blog.dart';
import '../features/blog/data/repositories/get_list_posts_blog.dart';
import '../features/blog/domain/entity/category_blog_entity.dart';
import '../features/blog/domain/entity/post_blog_entity.dart';
import '../features/ccmei/data/repositories/get_ccmei_factory.dart';
import '../features/ccmei/data/repositories/put_ccmei_factory.dart';
import '../features/ccmei/domain/entity/ccmei_entity.dart';
import '../features/cnpj/data/repositories/get_cnpj_factory.dart';
import '../features/cnpj/data/repositories/put_cnpj_factory.dart';
import '../features/cnpj/domain/entity/cnpj_entity.dart';
import '../features/company/data/repositories/dashboard_basic_company_factory.dart';
import '../features/company/data/repositories/delete_company_factory.dart';
import '../features/company/data/repositories/find_company_factory.dart';
import '../features/company/data/repositories/find_receita_federal_factory.dart';
import '../features/company/data/repositories/insert_company_factory.dart';
import '../features/company/data/repositories/list_business_factory.dart';
import '../features/company/data/repositories/list_company_factory.dart';
import '../features/company/data/repositories/update_company_factory.dart';
import '../features/company/domain/entity/basic_dashboard_entity.dart';
import '../features/company/domain/entity/company_entity.dart';
import '../features/company/domain/entity/list_company_result.dart';
import '../features/contacts/data/repositories/add_contact_factory.dart';
import '../features/contacts/data/repositories/delete_contact_factory.dart';
import '../features/contacts/data/repositories/list_contact_factory.dart';
import '../features/contacts/data/repositories/update_contact_factory.dart';
import '../features/contacts/domain/entity/contact_entity.dart';
import '../features/das/data/repositories/generate_pdf_das_factory.dart';
import '../features/das/data/repositories/get_das_factory.dart';
import '../features/das/data/repositories/update_das_factory.dart';
import '../features/das/domain/entity/das_item_entity.dart';
import '../features/dasn/data/repositories/get_list_dasn_factory.dart';
import '../features/dasn/data/repositories/post_dasn_factory.dart';
import '../features/dasn/data/repositories/put_dasn_factory.dart';
import '../features/dasn/domain/entity/dasn_declaration_entity.dart';
import '../features/dasn/domain/entity/dasn_item_entity.dart';
import '../features/documents/data/repositories/delete_document_factory.dart';
import '../features/documents/data/repositories/insert_document_factory.dart';
import '../features/documents/data/repositories/list_documents_by_cnpj_factory.dart';
import '../features/documents/data/repositories/list_documents_factory.dart';
import '../features/documents/data/repositories/update_document_factory.dart';
import '../features/documents/domain/entity/document_entity.dart';
import '../features/ecommerce/data/repositories/add_ecommerce_factory.dart';
import '../features/ecommerce/data/repositories/delete_ecommerce_factory.dart';
import '../features/ecommerce/data/repositories/find_ecommerce_by_company_factory.dart';
import '../features/ecommerce/data/repositories/find_ecommerce_factory.dart';
import '../features/finance/data/repositories/get_revenue_factory.dart';
import '../features/finance/data/repositories/list_finance_bank_institution_factory.dart';
import '../features/finance/data/repositories/list_finance_category.dart';
import '../features/finance/data/repositories/list_finance_credit_card_category.dart';
import '../features/finance/data/repositories/list_finance_dashboard_basic_factory.dart';
import '../features/finance/data/repositories/list_finance_dashboard_by_filter_basic_factory.dart';
import '../features/finance/data/repositories/reports/all/get_transaction_all_categories_report_factory.dart';
import '../features/finance/data/repositories/reports/get_balance_evolution_report_factory.dart';
import '../features/finance/data/repositories/reports/get_behavior_average_monthly_expense_report_factory.dart';
import '../features/finance/data/repositories/reports/get_cash_flow_report_factory.dart';
import '../features/finance/data/repositories/reports/get_profit_loss_report_factory.dart';
import '../features/finance/data/repositories/reports/get_transaction_report_factory.dart';
import '../features/finance/data/repositories/transactions/delete_finance_transaction_factory.dart';
import '../features/finance/data/repositories/transactions/get_finance_transactions_factory.dart';
import '../features/finance/data/repositories/transactions/list_finance_transactions_by_filter_factory.dart';
import '../features/finance/data/repositories/transactions/list_finance_transactions_factory.dart';
import '../features/finance/data/repositories/transactions/list_finance_transactions_search_factory.dart';
import '../features/finance/data/repositories/transactions/post_finance_transactions_factory.dart';
import '../features/finance/data/repositories/transactions/put_finance_transactions_factory.dart';
import '../features/finance/domain/entity/finance_dashboard_basic_entity.dart';
import '../features/finance/domain/entity/finance_filter_entity.dart';
import '../features/finance/domain/entity/finance_transaction_report_entity.dart';
import '../features/financial_assistant/data/repositories/list_financial_assistant_factory.dart';
import '../features/financial_assistant/domain/entity/financial_assistant_entity.dart';
import '../features/financial_education/data/repositories/categories/add_category_in_financial_education_factory.dart';
import '../features/financial_education/data/repositories/categories/get_category_factory.dart';
import '../features/financial_education/data/repositories/categories/list_financial_education_categories_factory.dart';
import '../features/financial_education/data/repositories/categories/remove_category_by_id_factory.dart';
import '../features/financial_education/data/repositories/categories/update_category_by_id_factory.dart';
import '../features/financial_education/data/repositories/videos/add_video_in_financial_education_factory.dart';
import '../features/financial_education/data/repositories/videos/get_video_factory.dart';
import '../features/financial_education/data/repositories/videos/list_financial_education_videos_factory.dart';
import '../features/financial_education/data/repositories/videos/list_videos_by_category_in_financial_education_factory.dart';
import '../features/financial_education/data/repositories/videos/remove_video_by_id_factory.dart';
import '../features/financial_education/data/repositories/videos/update_video_by_id_factory.dart';
import '../features/financial_education/domain/entity/category_entity.dart';
import '../features/financial_education/domain/entity/video_entity.dart';
import '../features/groups/data/repositories/add_group_factory.dart';
import '../features/groups/data/repositories/delete_group_factory.dart';
import '../features/groups/data/repositories/list_groups_factory.dart';
import '../features/groups/data/repositories/update_group_factory.dart';
import '../features/groups/domain/entity/group_entity.dart';
import '../features/inbox/data/repositories/check_user_factory.dart';
import '../features/inbox/domain/entity/check_user_entity.dart';
import '../features/knowledge_base/data/repositories/add_category_in_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/add_question_in_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/list_categories_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/list_questions_by_search_faq_factory.dart';
import '../features/knowledge_base/data/repositories/list_questions_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/remove_category_by_id_in_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/remove_question_by_id_in_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/update_category_by_id_in_knowledge_base_factory.dart';
import '../features/knowledge_base/data/repositories/update_question_by_id_in_knowledge_base_factory.dart';
import '../features/knowledge_base/domain/entity/help_categorie_faq_entity.dart';
import '../features/knowledge_base/domain/entity/help_question_faq_entity.dart';
import '../features/links/data/repositories/add_link_factory.dart';
import '../features/links/data/repositories/delete_link_factory.dart';
import '../features/links/data/repositories/list_links_factory.dart';
import '../features/links/data/repositories/update_link_factory.dart';
import '../features/links/domain/entity/link_entity.dart';
import '../features/media_manager/data/repositories/insert_image_aws_factory.dart';
import '../features/media_manager/data/repositories/insert_image_factory.dart';
import '../features/media_manager/data/repositories/list_files_media_manager_factory.dart';
import '../features/media_manager/domain/entity/file_media_aws_entity.dart';
import '../features/media_manager/domain/entity/file_media_manager_entity.dart';
import '../features/mei_benefits/data/repositories/get_mei_benefits_factory.dart';
import '../features/mei_benefits/data/repositories/update_mei_benefits_factory.dart';
import '../features/mei_benefits/domain/entity/mei_benefits_entity.dart';
import '../features/mei_limit/data/repositories/get_mei_limit_factory.dart';
import '../features/mei_report/data/repositories/get_relatorio_mei_factory.dart';
import '../features/mei_report/domain/entity/relatorio_mei_entity.dart';
import '../features/nota_fiscal/data/repositories/get_nota_fiscal_factory.dart';
import '../features/nota_fiscal/data/repositories/list_nota_fiscal_service_factory.dart';
import '../features/nota_fiscal/data/repositories/list_notas_fiscais_factory.dart';
import '../features/nota_fiscal/data/repositories/post_nota_fiscal_factory.dart';
import '../features/nota_fiscal/data/repositories/put_nota_fiscal_factory.dart';
import '../features/notifications/data/repositories/add_notifications_factory.dart';
import '../features/notifications/data/repositories/delete_notifications_factory.dart';
import '../features/notifications/data/repositories/get_list_notifications_factory.dart';
import '../features/notifications/data/repositories/update_notifications_factory.dart';
import '../features/notifications/domain/entity/notification_entity.dart';
import '../features/orders/data/repositories/create_order_factory.dart';
import '../features/orders/data/repositories/find_order_factory.dart';
import '../features/orders/data/repositories/historic/create_historic_order_factory.dart';
import '../features/orders/data/repositories/list_orders_by_ecommerce_factory.dart';
import '../features/orders/data/repositories/list_orders_by_user_factory.dart';
import '../features/orders/data/repositories/update_order_factory.dart';
import '../features/orders/domain/entity/order_ecommerce_entity.dart';
import '../features/orders/domain/entity/order_history_entity.dart';
import '../features/orders/domain/entity/order_products_entity.dart';
import '../features/payables/data/repositories/list_payables.dart';
import '../features/payables/domain/entity/payable_entity.dart';
import '../features/payment/data/repositories/create_credit_card_factory.dart';
import '../features/payment_assistant/data/repositories/list_transactions_by_date.dart';
import '../features/payment_assistant/domain/entity/transaction_finance_opened_entity.dart';
import '../features/plans/data/repositories/add_plan_factory.dart';
import '../features/plans/data/repositories/get_list_plans.dart';
import '../features/plans/data/repositories/items/add_item_plan_factory.dart';
import '../features/plans/data/repositories/items/delete_item_plan_factory.dart';
import '../features/plans/data/repositories/items/list_items_plans_factory.dart';
import '../features/plans/data/repositories/items/update_item_plan_factory.dart';
import '../features/plans/data/repositories/list_plans_factory.dart';
import '../features/plans/data/repositories/subscription/find_subscription.dart';
import '../features/plans/data/repositories/subscription/hire_plan.dart';
import '../features/plans/data/repositories/subscription/get_my_plan.dart';
import '../features/plans/data/repositories/subscription/get_my_subscriptions.dart';
import '../features/plans/data/repositories/subscription/list_transactions_by_subscriptions.dart';
import '../features/plans/data/repositories/subscription/update_plan_by_subscription.dart';
import '../features/plans/data/repositories/update_plan_factory.dart';
import '../features/plans/data/repositories/voucher/add_voucher_plan_factory.dart';
import '../features/plans/data/repositories/voucher/delete_voucher_factory.dart';
import '../features/plans/data/repositories/voucher/get_coupon.dart';
import '../features/plans/data/repositories/voucher/list_vouchers_plans_factory.dart';
import '../features/plans/data/repositories/voucher/update_voucher_plan_factory.dart';
import '../features/plans/domain/entity/coupon_discount_entity.dart';
import '../features/plans/domain/entity/plan_list_entity.dart';
import '../features/plans/domain/entity/subscription_entity.dart';
import '../features/plans/domain/entity/transaction_entity.dart';
import '../features/plans/domain/entity/voucher_plan_entity.dart';
import '../features/product_category/data/repositories/add_product_category_ecommerce_factory.dart';
import '../features/ecommerce/data/repositories/update_ecommerce_factory.dart';
import '../features/bank_account/domain/entity/bank_account_entity.dart';
import '../features/ecommerce/domain/entity/ecommerce_entity.dart';
import '../features/product_category/data/repositories/delete_product_category_ecommerce_factory.dart';
import '../features/product_category/data/repositories/find_product_category_ecommerce_factory.dart';
import '../features/product_category/data/repositories/list_product_category_ecommerce_factory.dart';
import '../features/product_category/data/repositories/list_product_category_products_ecommerce_factory.dart';
import '../features/product_category/data/repositories/update_product_category_ecommerce_factory.dart';
import '../features/products/data/repositories/add_product_ecommerce_factory.dart';
import '../features/products/data/repositories/delete_product_ecommerce_factory.dart';
import '../features/products/data/repositories/find_product_ecommerce_factory.dart';
import '../features/products/data/repositories/list_product_ecommerce_factory.dart';
import '../features/products/data/repositories/update_product_ecommerce_factory.dart';
import '../features/products/domain/entity/product_ecommerce_entity.dart';
import '../features/product_category/domain/entity/product_category_ecommerce_entity.dart';
import '../features/recipient/data/repositories/find.dart';
import '../features/recipient/domain/entity/recipient_entity.dart';
import '../features/schedule/data/repositories/add_schedule_factory.dart';
import '../features/schedule/data/repositories/delete_schedule_by_ecormmerce_factory.dart';
import '../features/schedule/data/repositories/delete_schedule_by_product_factory.dart';
import '../features/schedule/data/repositories/delete_schedule_factory.dart';
import '../features/schedule/data/repositories/find_schedule_factory.dart';
import '../features/schedule/data/repositories/list_schedule_by_ecommerce_factory.dart';
import '../features/schedule/data/repositories/list_schedule_by_product_factory.dart';
import '../features/schedule/data/repositories/update_schedule_factory.dart';
import '../features/schedule/domain/entity/schedule_entity.dart';
import '../features/secrets/data/repositories/add_secret_factory.dart';
import '../features/secrets/data/repositories/delete_secret_factory.dart';
import '../features/secrets/data/repositories/list_secrets_factory.dart';
import '../features/secrets/data/repositories/update_secret_factory.dart';
import '../features/secrets/domain/entity/secret_entity.dart';
import '../features/statistics/data/repositories/get_basic_statistics_factory.dart';
import '../features/statistics/data/repositories/get_category_most_schedule_factory.dart';
import '../features/statistics/data/repositories/get_product_most_schedule_factory.dart';
import '../features/statistics/data/repositories/get_statistics_company_factory.dart';
import '../features/statistics/data/repositories/get_statistics_schedule_factory.dart';
import '../features/statistics/data/repositories/get_statistics_user_factory.dart';
import '../features/statistics/data/repositories/order_most_booked_weekdays_factory.dart';
import '../features/statistics/data/repositories/order_service_location_most_schedule_factory.dart';
import '../features/statistics/domain/entity/basic_entity.dart';
import '../features/statistics/domain/entity/statistics_most_booked_weekdays_entity.dart';
import '../features/statistics/domain/entity/statistics_most_item_entity.dart';
import '../features/statistics/domain/entity/statistics_period_entity.dart';
import '../features/stories/data/repositories/story_item/add_story_item_factory.dart';
import '../features/stories/data/repositories/story_item/delete_story_item_factory.dart';
import '../features/stories/data/repositories/story_item/list_story_item_by_view_factory.dart';
import '../features/stories/data/repositories/story_item/list_story_item_factory.dart';
import '../features/stories/data/repositories/story_item/update_story_item_factory.dart';
import '../features/stories/data/repositories/story_view/add_story_view_factory.dart';
import '../features/stories/data/repositories/story_view/delete_story_view_factory.dart';
import '../features/stories/data/repositories/story_view/list_story_view_by_owner_factory.dart';
import '../features/stories/data/repositories/story_view/list_story_view_factory.dart';
import '../features/stories/data/repositories/story_view/update_story_view_factory.dart';
import '../features/stories/domain/entity/story_item_entity.dart';
import '../features/stories/domain/entity/story_view_entity.dart';
import '../features/tasks/data/repositories/add_task_factory.dart';
import '../features/tasks/data/repositories/delete_task_factory.dart';
import '../features/tasks/data/repositories/list_tasks_factory.dart';
import '../features/tasks/data/repositories/update_task_factory.dart';
import '../features/tasks/domain/entity/task_entity.dart';
import '../features/voucher/data/repositories/delete_voucher_factory.dart';
import '../features/voucher/data/repositories/insert_voucher_factory.dart';
import '../features/voucher/data/repositories/list_by_establishment_voucher_factory.dart';
import '../features/voucher/data/repositories/update_voucher_factory.dart';
import '../features/voucher/domain/entity/voucher_entity.dart';
import '../features/modules/data/repositories/clone_white_label_factory.dart';
import '../features/modules/data/repositories/delete_module_factory.dart';
import '../features/modules/data/repositories/find_module_factory.dart';
import '../features/modules/data/repositories/insert_module_factory.dart';
import '../features/modules/data/repositories/list_all_modules_factory.dart';
import '../features/modules/data/repositories/list_modules.dart';
import '../features/modules/data/repositories/update_module_factory.dart';
import '../features/modules/domain/entity/pjmei_module_entity.dart';
import '../features/user/data/repositories/delete_account_factory.dart';
import '../features/user/data/repositories/delete_user_factory.dart';
import '../features/user/data/repositories/list_users_factory.dart';
import '../features/user/data/repositories/update_user_factory.dart';
import '../features/user/domain/entity/user_entity.dart';
import '../features/white_label/data/repositories/add_user_in_white_label_factory.dart';
import '../features/white_label/data/repositories/add_white_label_factory.dart';
import '../features/white_label/data/repositories/delete_user_in_white_label_factory.dart';
import '../features/white_label/data/repositories/delete_white_label_factory.dart';
import '../features/white_label/data/repositories/find_white_label_factory.dart';
import '../features/white_label/data/repositories/list_team_by_white_label_factory.dart';
import '../features/white_label/data/repositories/list_white_label_by_user_factory.dart';
import '../features/white_label/data/repositories/list_white_label_factory.dart';
import '../features/white_label/data/repositories/update_white_label_factory.dart';
import '../features/white_label/domain/entity/white_label_entity.dart';

part '../features/address/data/repositories/datasource.dart';
part '../features/auth/data/repositories/datasource.dart';
part '../features/blog/data/repositories/datasource.dart';
part '../features/ccmei/data/repositories/datasource.dart';
part '../features/cnpj/data/repositories/datasource.dart';
part '../features/groups/data/repositories/datasource.dart';
part '../features/contacts/data/repositories/datasource.dart';
part '../features/company/data/repositories/datasource.dart';
part '../features/documents/data/repositories/datasource.dart';
part '../features/das/data/repositories/datasource.dart';
part '../features/dasn/data/repositories/datasource.dart';
part '../features/ecommerce/data/repositories/datasource.dart';
part '../features/financial_education/data/repositories/datasource.dart';
part '../features/financial_education/data/repositories/categories/datasource.dart';
part '../features/financial_education/data/repositories/videos/datasource.dart';
part '../features/voucher/data/repositories/datasource.dart';
part '../features/links/data/repositories/datasource.dart';
part '../features/inbox/data/repositories/datasource.dart';
part '../features/knowledge_base/data/repositories/datasource.dart';
part '../features/media_manager/data/repositories/datasource.dart';
part '../features/mei_benefits/data/repositories/datasource.dart';
part '../features/mei_report/data/repositories/datasource.dart';
part '../features/notifications/data/repositories/datasource.dart';
part '../features/orders/data/repositories/datasource.dart';
part '../features/orders/data/repositories/historic/datasource.dart';
part '../features/products/data/repositories/datasource.dart';
part '../features/product_category/data/repositories/datasource.dart';
part '../features/statistics/data/repositories/datasource.dart';
part '../features/schedule/data/repositories/datasource.dart';
part '../features/mei_limit/data/repositories/datasource.dart';
part '../features/payment/data/repositories/datasource.dart';
part '../features/payment_assistant/data/repositories/datasource.dart';
part '../features/plans/data/repositories/datasource.dart';
part '../features/plans/data/repositories/items/datasource.dart';
part '../features/plans/data/repositories/voucher/datasource.dart';
part '../features/plans/data/repositories/subscription/datasource.dart';
part '../features/secrets/data/repositories/datasource.dart';
part '../features/modules/data/repositories/datasource.dart';
part '../features/user/data/repositories/datasource.dart';
part '../features/stories/data/repositories/datasource.dart';
part '../features/stories/data/repositories/story_item/datasource.dart';
part '../features/stories/data/repositories/story_view/datasource.dart';
part '../features/tasks/data/repositories/datasource.dart';
part '../features/recipient/data/repositories/datasource.dart';
part '../features/payables/data/repositories/datasource.dart';
part '../features/financial_assistant/data/repositories/datasource.dart';
part '../features/bank_account/data/repositories/datasource.dart';
part '../features/extract/data/repositories/datasource.dart';
part '../features/finance/data/repositories/datasource.dart';
part '../features/nota_fiscal/data/repositories/datasource.dart';
part '../features/white_label/data/repositories/datasource.dart';

class Api {
  Api._();
  static final address = _AddressApi();
  static final auth = _AuthApi();
  static final bankAccount = _BankAccountApi();
  static final blog = _BlogApi();
  static final ccmei = _CcmeiApi();
  static final cnpj = _CnpjApi();
  static final company = _CompanyApi();
  static final contacts = _ContactApi();
  static final das = _DasApi();
  static final dasn = _DasnApi();
  static final documents = _DocumentsApi();
  static final ecommerce = _EcommerceApi();
  static final extracts = _ExtractApi();
  static final finance = _FinanceApi();
  static final financialAssistant = _FinancialAssistantApi();
  static final financialEducation = _FinancialEducationApi();
  static final groups = _GroupApi();
  static final inbox = _InboxApi();
  static final knowledgeBase = _KnowledgeBaseApi();
  static final links = _LinksApi();
  static final mediaManager = _MediaManagerApi();
  static final meiBenefits = _MeiBenefitsApi();
  static final meiLimit = _MeiLimitApi();
  static final meiReport = _MeiReportApi();
  static final module = _ModuleApi();
  static final modules = _ModuleApi();
  static final notaFiscal = _NotaFiscalApi();
  static final notifications = _NotificationsApi();
  static final orders = _OrderEcommerceApi();
  static final payables = _PayablesApi();
  static final payment = _PaymentApi();
  static final paymentAssistant = _PaymentAssistantApi();
  static final plans = _PlanApi();
  static final productsCategory = _ProductCategoryEcommerceApi();
  static final products = _ProductEcommerceApi();
  static final recipients = _RecipientApi();
  static final schedules = _ScheduleApi();
  static final secrets = _SecretsApi();
  static final statistics = _StatisticsApi();
  static final stories = _StoriesApi();
  static final tasks = _TasksApi();
  static final user = _UserApi();
  static final users = _UserApi();
  static final vouchers = _VoucherEcommerceApi();
  static final whiteLabel = _WhiteLabelApi();
}
