import 'package:plugin_pjmei_components/features/tutorials/data/repositories/list_tutorial_factory.dart';
import 'package:plugin_pjmei_components/features/extract/data/repositories/get_extract.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http_parser/http_parser.dart';

export 'finance/data/repositories/bank/delete_finance_bank_factory.dart';
export 'finance/data/repositories/bank/get_finance_bank_factory.dart';
export 'finance/data/repositories/bank/list_finance_bank_cash_flow_factory.dart';
export 'finance/data/repositories/bank/list_finance_bank_factory.dart';
export 'finance/data/repositories/bank/list_finance_dashboard_banks_factory.dart';
export 'finance/data/repositories/bank/list_finance_transactions_bank_factory.dart';
export 'finance/data/repositories/bank/post_finance_bank_factory.dart';
export 'finance/data/repositories/bank/put_finance_bank_factory.dart';

export 'finance/data/repositories/credit-card/create_finance_credit_card_factory.dart';
export 'finance/data/repositories/credit-card/delete_finance_credit_card_factory.dart';
export 'finance/data/repositories/credit-card/flag/create_finance_card_flags_factory.dart';
export 'finance/data/repositories/credit-card/flag/delete_finance_card_flags_factory.dart';
export 'finance/data/repositories/credit-card/flag/list_finance_card_flags_factory.dart';
export 'finance/data/repositories/credit-card/flag/update_finance_card_flags_factory.dart';
export 'finance/data/repositories/credit-card/get_finance_credit_card_by_id_factory.dart';
export 'finance/data/repositories/credit-card/get_finance_credit_card_dashboard_factory.dart';
export 'finance/data/repositories/credit-card/get_finance_credit_card_factory.dart';
export 'finance/data/repositories/credit-card/get_finance_credit_card_status_factory.dart';
export 'finance/data/repositories/credit-card/invoice/finance_credit_card_invoice_delete_factory.dart';
export 'finance/data/repositories/credit-card/invoice/finance_credit_card_invoice_factory.dart';
export 'finance/data/repositories/credit-card/list_finance_dashboard_credit_card_factory.dart';
export 'finance/data/repositories/credit-card/transactions/create_finance_credit_card_transaction_factory.dart';
export 'finance/data/repositories/credit-card/transactions/delete_finance_credit_card_transaction_factory.dart';
export 'finance/data/repositories/credit-card/transactions/list_finance_credit_card_transaction_factory.dart';
export 'finance/data/repositories/credit-card/transactions/update_finance_credit_card_transaction_factory.dart';
export 'finance/data/repositories/credit-card/update_finance_credit_card_factory.dart';

import 'address/data/repositories/delete_address_factory.dart';
import 'address/data/repositories/find_address_factory.dart';
import 'address/data/repositories/insert_address_factory.dart';
import 'address/data/repositories/list_address_by_user_factory.dart';
import 'address/data/repositories/update_address_factory.dart';
import 'auth/data/repositories/change_password_factory.dart';
import 'auth/data/repositories/check_if_user_exists_factory.dart';
import 'auth/data/repositories/login_factory.dart';
import 'auth/data/repositories/new_password_factory.dart';
import 'auth/data/repositories/new_refresh_token.dart';
import 'auth/data/repositories/register_factory.dart';
import 'auth/data/repositories/send_email_recover_password_factory.dart';
import 'blog/data/repositories/get_list_categories_blog.dart';
import 'blog/data/repositories/get_list_posts_blog.dart';
import 'ccmei/data/repositories/get_ccmei_factory.dart';
import 'ccmei/data/repositories/put_ccmei_factory.dart';
import 'chat/data/repositories/get_list_chat_default.dart';
import 'chat/data/repositories/post_chat_default.dart';
import 'cnpj/data/repositories/get_cnpj_factory.dart';
import 'cnpj/data/repositories/put_cnpj_factory.dart';
import 'company/data/repositories/dashboard_basic_company_factory.dart';
import 'company/data/repositories/delete_company_factory.dart';
import 'company/data/repositories/find_company_factory.dart';
import 'company/data/repositories/find_receita_federal_factory.dart';
import 'company/data/repositories/insert_company_factory.dart';
import 'company/data/repositories/list_business_factory.dart';
import 'company/data/repositories/list_company_factory.dart';
import 'company/data/repositories/update_company_factory.dart';
import 'contacts/data/repositories/add_contact_factory.dart';
import 'contacts/data/repositories/delete_contact_factory.dart';
import 'contacts/data/repositories/list_contact_factory.dart';
import 'contacts/data/repositories/update_contact_factory.dart';
import 'das/data/repositories/generate_pdf_das_factory.dart';
import 'das/data/repositories/get_das_factory.dart';
import 'das/data/repositories/update_das_factory.dart';
import 'dasn/data/repositories/get_list_dasn_factory.dart';
import 'dasn/data/repositories/post_dasn_factory.dart';
import 'dasn/data/repositories/put_dasn_factory.dart';
import 'documents/data/repositories/delete_document_factory.dart';
import 'documents/data/repositories/insert_document_factory.dart';
import 'documents/data/repositories/list_documents_by_cnpj_factory.dart';
import 'documents/data/repositories/list_documents_factory.dart';
import 'documents/data/repositories/update_document_factory.dart';
import 'ecommerce/data/repositories/add_ecommerce_factory.dart';
import 'ecommerce/data/repositories/delete_ecommerce_factory.dart';
import 'ecommerce/data/repositories/find_ecommerce_by_company_factory.dart';
import 'ecommerce/data/repositories/find_ecommerce_factory.dart';
import 'finance/data/repositories/get_revenue_factory.dart';
import 'finance/data/repositories/list_finance_bank_institution_factory.dart';
import 'finance/data/repositories/list_finance_category.dart';
import 'finance/data/repositories/list_finance_credit_card_category.dart';
import 'finance/data/repositories/list_finance_dashboard_basic_factory.dart';
import 'finance/data/repositories/list_finance_dashboard_by_filter_basic_factory.dart';
import 'finance/data/repositories/reports/all/get_transaction_all_categories_report_factory.dart';
import 'finance/data/repositories/reports/get_balance_evolution_report_factory.dart';
import 'finance/data/repositories/reports/get_behavior_average_monthly_expense_report_factory.dart';
import 'finance/data/repositories/reports/get_cash_flow_report_factory.dart';
import 'finance/data/repositories/reports/get_profit_loss_report_factory.dart';
import 'finance/data/repositories/reports/get_transaction_report_factory.dart';
import 'finance/data/repositories/transactions/delete_finance_transaction_factory.dart';
import 'finance/data/repositories/transactions/get_finance_transactions_factory.dart';
import 'finance/data/repositories/transactions/list_finance_transactions_by_filter_factory.dart';
import 'finance/data/repositories/transactions/list_finance_transactions_factory.dart';
import 'finance/data/repositories/transactions/list_finance_transactions_search_factory.dart';
import 'finance/data/repositories/transactions/post_finance_transactions_factory.dart';
import 'finance/data/repositories/transactions/put_finance_transactions_factory.dart';
import 'financial_assistant/data/repositories/list_financial_assistant_factory.dart';
import 'financial_education/data/repositories/categories/add_category_in_financial_education_factory.dart';
import 'financial_education/data/repositories/categories/get_category_factory.dart';
import 'financial_education/data/repositories/categories/list_financial_education_categories_factory.dart';
import 'financial_education/data/repositories/categories/remove_category_by_id_factory.dart';
import 'financial_education/data/repositories/categories/update_category_by_id_factory.dart';
import 'financial_education/data/repositories/videos/add_video_in_financial_education_factory.dart';
import 'financial_education/data/repositories/videos/get_video_factory.dart';
import 'financial_education/data/repositories/videos/list_financial_education_videos_factory.dart';
import 'financial_education/data/repositories/videos/list_videos_by_category_in_financial_education_factory.dart';
import 'financial_education/data/repositories/videos/remove_video_by_id_factory.dart';
import 'financial_education/data/repositories/videos/update_video_by_id_factory.dart';
import 'groups/data/repositories/add_group_factory.dart';
import 'groups/data/repositories/delete_group_factory.dart';
import 'groups/data/repositories/list_groups_factory.dart';
import 'groups/data/repositories/update_group_factory.dart';
import 'inbox/data/repositories/check_user_factory.dart';
import 'knowledge_base/data/repositories/add_category_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/add_question_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/find_category_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/find_question_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/list_categories_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/list_questions_by_search_faq_factory.dart';
import 'knowledge_base/data/repositories/list_questions_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/remove_category_by_id_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/remove_question_by_id_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/update_category_by_id_in_knowledge_base_factory.dart';
import 'knowledge_base/data/repositories/update_question_by_id_in_knowledge_base_factory.dart';
import 'links/data/repositories/add_link_factory.dart';
import 'links/data/repositories/delete_link_factory.dart';
import 'links/data/repositories/list_links_factory.dart';
import 'links/data/repositories/update_link_factory.dart';
import 'media_manager/data/repositories/insert_image_aws_factory.dart';
import 'media_manager/data/repositories/insert_image_factory.dart';
import 'media_manager/data/repositories/list_files_media_manager_factory.dart';
import 'mei_benefits/data/repositories/get_mei_benefits_factory.dart';
import 'mei_benefits/data/repositories/update_mei_benefits_factory.dart';
import 'mei_limit/data/repositories/get_mei_limit_factory.dart';
import 'mei_report/data/repositories/get_relatorio_mei_factory.dart';
import 'nota_fiscal/data/repositories/get_nota_fiscal_factory.dart';
import 'nota_fiscal/data/repositories/list_nota_fiscal_service_factory.dart';
import 'nota_fiscal/data/repositories/list_notas_fiscais_factory.dart';
import 'nota_fiscal/data/repositories/post_nota_fiscal_factory.dart';
import 'nota_fiscal/data/repositories/put_nota_fiscal_factory.dart';
import 'notifications/data/repositories/add_notifications_factory.dart';
import 'notifications/data/repositories/delete_notifications_factory.dart';
import 'notifications/data/repositories/get_list_notifications_by_user_factory.dart';
import 'notifications/data/repositories/get_list_notifications_factory.dart';
import 'notifications/data/repositories/send_notifications_factory.dart';
import 'notifications/data/repositories/update_notifications_factory.dart';
import 'orders/data/repositories/create_order_factory.dart';
import 'orders/data/repositories/find_order_factory.dart';
import 'orders/data/repositories/historic/create_historic_order_factory.dart';
import 'orders/data/repositories/list_orders_by_ecommerce_factory.dart';
import 'orders/data/repositories/list_orders_by_user_factory.dart';
import 'orders/data/repositories/update_order_factory.dart';
import 'payables/data/repositories/list_payables.dart';
import 'payment/data/repositories/create_credit_card_factory.dart';
import 'payment_assistant/data/repositories/list_transactions_by_date.dart';
import 'plans/data/repositories/add_plan_factory.dart';
import 'plans/data/repositories/get_list_plans.dart';
import 'plans/data/repositories/items/add_item_plan_factory.dart';
import 'plans/data/repositories/items/delete_item_plan_factory.dart';
import 'plans/data/repositories/items/list_items_plans_factory.dart';
import 'plans/data/repositories/items/update_item_plan_factory.dart';
import 'plans/data/repositories/list_plans_factory.dart';
import 'plans/data/repositories/subscription/delete_subscription_factory.dart';
import 'plans/data/repositories/subscription/find_subscription.dart';
import 'plans/data/repositories/subscription/hire_plan.dart';
import 'plans/data/repositories/subscription/get_my_plan.dart';
import 'plans/data/repositories/subscription/get_my_subscriptions.dart';
import 'plans/data/repositories/subscription/list_transactions_by_subscriptions.dart';
import 'plans/data/repositories/subscription/update_card_in_subscription.dart';
import 'plans/data/repositories/delete_plan_factory.dart';
import 'plans/data/repositories/update_plan_factory.dart';
import 'product_category/data/repositories/add_product_category_ecommerce_factory.dart';
import 'ecommerce/data/repositories/update_ecommerce_factory.dart';
import 'product_category/data/repositories/delete_product_category_ecommerce_factory.dart';
import 'product_category/data/repositories/find_product_category_ecommerce_factory.dart';
import 'product_category/data/repositories/list_product_category_ecommerce_factory.dart';
import 'product_category/data/repositories/list_product_category_products_ecommerce_factory.dart';
import 'product_category/data/repositories/update_product_category_ecommerce_factory.dart';
import 'products/data/repositories/add_product_ecommerce_factory.dart';
import 'products/data/repositories/delete_product_ecommerce_factory.dart';
import 'products/data/repositories/find_product_ecommerce_factory.dart';
import 'products/data/repositories/list_product_ecommerce_factory.dart';
import 'products/data/repositories/update_product_ecommerce_factory.dart';
import 'recipient/data/repositories/find.dart';
import 'roadmap/data/repositories/list_roadmap_factory.dart';
import 'schedule/data/repositories/add_schedule_factory.dart';
import 'schedule/data/repositories/delete_schedule_by_ecormmerce_factory.dart';
import 'schedule/data/repositories/delete_schedule_by_product_factory.dart';
import 'schedule/data/repositories/delete_schedule_factory.dart';
import 'schedule/data/repositories/find_schedule_factory.dart';
import 'schedule/data/repositories/list_schedule_by_ecommerce_factory.dart';
import 'schedule/data/repositories/list_schedule_by_product_factory.dart';
import 'schedule/data/repositories/update_schedule_factory.dart';
import 'secrets/data/repositories/add_secret_factory.dart';
import 'secrets/data/repositories/delete_secret_factory.dart';
import 'secrets/data/repositories/list_secrets_factory.dart';
import 'secrets/data/repositories/update_secret_factory.dart';
import 'statistics/data/repositories/get_basic_statistics_factory.dart';
import 'statistics/data/repositories/get_category_most_schedule_factory.dart';
import 'statistics/data/repositories/get_product_most_schedule_factory.dart';
import 'statistics/data/repositories/get_statistics_company_factory.dart';
import 'statistics/data/repositories/get_statistics_schedule_factory.dart';
import 'statistics/data/repositories/get_statistics_user_factory.dart';
import 'statistics/data/repositories/order_most_booked_weekdays_factory.dart';
import 'statistics/data/repositories/order_service_location_most_schedule_factory.dart';
import 'stories/data/repositories/story_item/add_story_item_factory.dart';
import 'stories/data/repositories/story_item/delete_story_item_factory.dart';
import 'stories/data/repositories/story_item/list_story_item_by_view_factory.dart';
import 'stories/data/repositories/story_item/list_story_item_factory.dart';
import 'stories/data/repositories/story_item/update_story_item_factory.dart';
import 'stories/data/repositories/story_view/add_story_view_factory.dart';
import 'stories/data/repositories/story_view/delete_story_view_factory.dart';
import 'stories/data/repositories/story_view/list_story_view_by_owner_factory.dart';
import 'stories/data/repositories/story_view/list_story_view_factory.dart';
import 'stories/data/repositories/story_view/update_story_view_factory.dart';
import 'tasks/data/repositories/add_task_factory.dart';
import 'tasks/data/repositories/delete_task_factory.dart';
import 'tasks/data/repositories/list_tasks_factory.dart';
import 'tasks/data/repositories/update_task_factory.dart';
import 'upload/data/repositories/upload_file_factory.dart';
import 'user/data/repositories/find_user_factory.dart';
import 'voucher/data/repositories/delete_voucher_factory.dart';
import 'voucher/data/repositories/find_by_code_voucher_factory.dart';
import 'voucher/data/repositories/find_voucher_factory.dart';
import 'voucher/data/repositories/insert_voucher_factory.dart';
import 'voucher/data/repositories/list_by_establishment_voucher_factory.dart';
import 'voucher/data/repositories/list_voucher_factory.dart';
import 'voucher/data/repositories/update_voucher_factory.dart';
import 'modules/data/repositories/clone_white_label_factory.dart';
import 'modules/data/repositories/delete_module_factory.dart';
import 'modules/data/repositories/find_module_factory.dart';
import 'modules/data/repositories/insert_module_factory.dart';
import 'modules/data/repositories/list_all_modules_factory.dart';
import 'modules/data/repositories/list_modules.dart';
import 'modules/data/repositories/update_module_factory.dart';
import 'user/data/repositories/delete_account_factory.dart';
import 'user/data/repositories/delete_user_factory.dart';
import 'user/data/repositories/list_users_factory.dart';
import 'user/data/repositories/update_user_factory.dart';
import 'white_label/data/repositories/add_user_in_white_label_factory.dart';
import 'white_label/data/repositories/add_white_label_factory.dart';
import 'white_label/data/repositories/delete_user_in_white_label_factory.dart';
import 'white_label/data/repositories/delete_white_label_factory.dart';
import 'white_label/data/repositories/find_white_label_factory.dart';
import 'white_label/data/repositories/list_team_by_white_label_factory.dart';
import 'white_label/data/repositories/list_white_label_by_user_factory.dart';
import 'white_label/data/repositories/list_white_label_factory.dart';
import 'white_label/data/repositories/update_white_label_factory.dart';

part 'address/data/repositories/datasource.dart';
part 'auth/data/repositories/datasource.dart';
part 'tutorials/data/repositories/datasource.dart';
part 'blog/data/repositories/datasource.dart';
part 'chat/data/repositories/datasource.dart';
part 'ccmei/data/repositories/datasource.dart';
part 'cnpj/data/repositories/datasource.dart';
part 'groups/data/repositories/datasource.dart';
part 'contacts/data/repositories/datasource.dart';
part 'company/data/repositories/datasource.dart';
part 'documents/data/repositories/datasource.dart';
part 'das/data/repositories/datasource.dart';
part 'dasn/data/repositories/datasource.dart';
part 'ecommerce/data/repositories/datasource.dart';
part 'financial_education/data/repositories/datasource.dart';
part 'financial_education/data/repositories/categories/datasource.dart';
part 'financial_education/data/repositories/videos/datasource.dart';
part 'voucher/data/repositories/datasource.dart';
part 'links/data/repositories/datasource.dart';
part 'inbox/data/repositories/datasource.dart';
part 'knowledge_base/data/repositories/datasource.dart';
part 'media_manager/data/repositories/datasource.dart';
part 'mei_benefits/data/repositories/datasource.dart';
part 'mei_report/data/repositories/datasource.dart';
part 'notifications/data/repositories/datasource.dart';
part 'orders/data/repositories/datasource.dart';
part 'orders/data/repositories/historic/datasource.dart';
part 'products/data/repositories/datasource.dart';
part 'product_category/data/repositories/datasource.dart';
part 'statistics/data/repositories/datasource.dart';
part 'schedule/data/repositories/datasource.dart';
part 'mei_limit/data/repositories/datasource.dart';
part 'payment/data/repositories/datasource.dart';
part 'payment_assistant/data/repositories/datasource.dart';
part 'plans/data/repositories/datasource.dart';
part 'plans/data/repositories/items/datasource.dart';
part 'plans/data/repositories/subscription/datasource.dart';
part 'secrets/data/repositories/datasource.dart';
part 'modules/data/repositories/datasource.dart';
part 'user/data/repositories/datasource.dart';
part 'stories/data/repositories/datasource.dart';
part 'stories/data/repositories/story_item/datasource.dart';
part 'stories/data/repositories/story_view/datasource.dart';
part 'tasks/data/repositories/datasource.dart';
part 'recipient/data/repositories/datasource.dart';
part 'roadmap/data/repositories/datasource.dart';
part 'payables/data/repositories/datasource.dart';
part 'financial_assistant/data/repositories/datasource.dart';
part 'bank_account/data/repositories/datasource.dart';
part 'extract/data/repositories/datasource.dart';
part 'finance/data/repositories/datasource.dart';
part 'nota_fiscal/data/repositories/datasource.dart';
part 'web_socket/data/repositories/datasource.dart';
part 'white_label/data/repositories/datasource.dart';
part 'upload/data/repositories/datasource.dart';

class Api {
  Api._();
  static final address = _AddressApi();
  static final auth = _AuthApi();
  static final backofficeTutorial = _BackofficeTutorialApi();
  static final bankAccount = _BankAccountApi();
  static final blog = _BlogApi();
  static final ccmei = _CcmeiApi();
  static final chat = _ChatApi();
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
  static final roadmap = _RoadmapApi();
  static final schedules = _ScheduleApi();
  static final secrets = _SecretsApi();
  static final statistics = _StatisticsApi();
  static final stories = _StoriesApi();
  static final tasks = _TasksApi();
  static final upload = _UploadApi();
  static final user = _UserApi();
  static final users = _UserApi();
  static final vouchers = _VoucherEcommerceApi();
  static final webSocket = _WebSocketApi();
  static final whiteLabel = _WhiteLabelApi();
}
