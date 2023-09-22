import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import './auth/change_password_factory.dart';
import './auth/check_if_user_exists_factory.dart';
import './auth/login_factory.dart';
import './auth/new_password_factory.dart';
import './auth/new_refresh_token.dart';
import './auth/register_factory.dart';
import './auth/send_email_recover_password_factory.dart';

import './blog/get_list_categories_blog.dart';
import './blog/get_list_posts_blog.dart';

import './ccmei/get_ccmei_factory.dart';

import './cnpj/get_cnpj_factory.dart';
import './cnpj/put_cnpj_factory.dart';

import './company/delete_company_factory.dart';
import './company/list_business_factory.dart';
import './company/list_company_factory.dart';
import './company/update_company_factory.dart';
import './company/insert_company_factory.dart';
import './company/find_company_factory.dart';
import './company/find_receita_federal_factory.dart';
import './company/dashboard_basic_company_factory.dart';

import './contacts/add_contact_factory.dart';
import './contacts/delete_contact_factory.dart';
import './contacts/list_contact_factory.dart';
import './contacts/update_contact_factory.dart';

import './das/get_das_factory.dart';
import './das/update_das_factory.dart';

import './dasn/get_list_dasn_factory.dart';
import './dasn/post_dasn_factory.dart';

import './documents/delete_document_factory.dart';
import './documents/insert_document_factory.dart';
import './documents/list_documents_factory.dart';
import './documents/update_document_factory.dart';

import 'ecommerce/product/add_product_ecommerce_factory.dart';
import 'ecommerce/product/delete_product_ecommerce_factory.dart';
import 'ecommerce/product/find_product_ecommerce_factory.dart';
import 'ecommerce/product/list_product_ecommerce_factory.dart';
import 'ecommerce/product/update_product_ecommerce_factory.dart';
import 'ecommerce/product_category/add_product_category_ecommerce_factory.dart';
import 'ecommerce/product_category/delete_product_category_ecommerce_factory.dart';
import 'ecommerce/product_category/find_product_category_ecommerce_factory.dart';
import 'ecommerce/product_category/list_product_category_ecommerce_factory.dart';
import 'ecommerce/product_category/update_product_category_ecommerce_factory.dart';
import 'ecommerce/schedule/add_schedule_factory.dart';
import 'ecommerce/schedule/delete_schedule_factory.dart';
import 'ecommerce/schedule/find_schedule_factory.dart';
import 'ecommerce/schedule/list_schedule_by_ecommerce_factory.dart';
import 'ecommerce/schedule/list_schedule_by_product_factory.dart';
import 'ecommerce/schedule/update_schedule_factory.dart';
import 'ecommerce/add_ecommerce_factory.dart';
import 'ecommerce/update_ecommerce_factory.dart';
import 'ecommerce/find_ecommerce_factory.dart';
import 'ecommerce/find_ecommerce_by_company_factory.dart';
import 'ecommerce/delete_ecommerce_factory.dart';
import './ecommerce/voucher/delete_voucher_factory.dart';
import './ecommerce/voucher/insert_voucher_factory.dart';
import './ecommerce/voucher/list_by_establishment_voucher_factory.dart';
import './ecommerce/voucher/update_voucher_factory.dart';
export './ecommerce/extracts/get_balance.dart';
export './ecommerce/extracts/list_payables.dart';
export './ecommerce/recipients/find.dart';
export './ecommerce/sales/list_sales.dart';
export './ecommerce/sales/list_scheduling.dart';

export './finance/finance.dart';
////////////////////////////////////////////////////////////////

import './financial_assistant/list_financial_assistant_factory.dart';

import './financial_education/categories/add_category_in_financial_education_factory.dart';
import './financial_education/videos/add_video_in_financial_education_factory.dart';
import './financial_education/categories/get_category_factory.dart';
import './financial_education/videos/get_video_factory.dart';
import './financial_education/categories/list_financial_education_categories_factory.dart';
import './financial_education/videos/list_financial_education_videos_factory.dart';
import './financial_education/videos/list_videos_by_category_in_financial_education_factory.dart';
import './financial_education/categories/remove_category_by_id_factory.dart';
import './financial_education/videos/remove_video_by_id_factory.dart';
import './financial_education/categories/update_category_by_id_factory.dart';
import './financial_education/videos/update_video_by_id_factory.dart';

import './groups/add_group_factory.dart';
import './groups/delete_group_factory.dart';
import './groups/list_groups_factory.dart';
import './groups/update_group_factory.dart';

import './inbox/check_user_factory.dart';

import './knowledge_base/add_category_in_knowledge_base_factory.dart';
import './knowledge_base/add_question_in_knowledge_base_factory.dart';
import './knowledge_base/list_categories_knowledge_base_factory.dart';
import './knowledge_base/list_questions_by_search_faq_factory.dart';
import './knowledge_base/list_questions_knowledge_base_factory.dart';
import './knowledge_base/remove_category_by_id_in_knowledge_base_factory.dart';
import './knowledge_base/remove_question_by_id_in_knowledge_base_factory.dart';
import './knowledge_base/update_category_by_id_in_knowledge_base_factory.dart';
import './knowledge_base/update_question_by_id_in_knowledge_base_factory.dart';

import './links/add_link_factory.dart';
import './links/delete_link_factory.dart';
import './links/list_links_factory.dart';
import './links/update_link_factory.dart';

import './media_manager/insert_image_factory.dart';
import './media_manager/insert_image_aws_factory.dart';
import './media_manager/list_files_media_manager_factory.dart';

import './mei_benefits/get_mei_benefits_factory.dart';
import './mei_benefits/update_mei_benefits_factory.dart';

import './mei_report/get_relatorio_mei_factory.dart';

import './modules/delete_module_factory.dart';
import './modules/list_all_modules_factory.dart';
import './modules/list_modules.dart';
import './modules/update_module_factory.dart';
import './modules/find_module_factory.dart';
import './modules/insert_module_factory.dart';

import './notifications/add_notifications_factory.dart';
import './notifications/delete_notifications_factory.dart';
import './notifications/get_list_notifications_factory.dart';
import './notifications/update_notifications_factory.dart';

import './payment_assistant/list_transactions_by_date.dart';

import './plan/voucher/get_coupon.dart';
import './plan/add_plan_factory.dart';
import './plan/voucher/add_voucher_plan_factory.dart';
import './plan/voucher/delete_voucher_factory.dart';
import './plan/subscription/find_subscription.dart';
import './plan/get_list_plans.dart';
import './plan/subscription/get_my_plan.dart';
import './plan/subscription/get_my_subscriptions.dart';
import './plan/subscription/hire_plan.dart';
import './plan/items/add_item_plan_factory.dart';
import './plan/items/list_items_plans_factory.dart';
import './plan/items/update_item_plan_factory.dart';
import './plan/items/delete_item_plan_factory.dart';
import './plan/list_plans_factory.dart';
import './plan/subscription/list_transactions_by_subscriptions.dart';
import './plan/voucher/list_vouchers_plans_factory.dart';
import './plan/subscription/update_plan_by_subscription.dart';
import './plan/update_plan_factory.dart';
import './plan/voucher/update_voucher_plan_factory.dart';

import './secrets/add_secret_factory.dart';
import './secrets/delete_secret_factory.dart';
import './secrets/list_secrets_factory.dart';
import './secrets/update_secret_factory.dart';

import './stories/story_item/add_story_item_factory.dart';
import './stories/story_item/delete_story_item_factory.dart';
import './stories/story_item/list_story_item_factory.dart';
import './stories/story_item/list_story_item_by_view_factory.dart';
import './stories/story_item/update_story_item_factory.dart';
import './stories/story_view/add_story_view_factory.dart';
import './stories/story_view/delete_story_view_factory.dart';
import './stories/story_view/list_story_view_factory.dart';
import './stories/story_view/list_story_view_by_owner_factory.dart';
import './stories/story_view/update_story_view_factory.dart';

import './tasks/add_task_factory.dart';
import './tasks/delete_task_factory.dart';
import './tasks/list_tasks_factory.dart';
import './tasks/update_task_factory.dart';

import './user/delete_account_factory.dart';
import './user/delete_user_factory.dart';
import './user/list_users_factory.dart';
import './user/update_user_factory.dart';

import './white_label/add_user_in_white_label_factory.dart';
import './white_label/add_white_label_factory.dart';
import './white_label/delete_white_label_factory.dart';
import './white_label/find_white_label_factory.dart';
import './white_label/list_white_label_by_user_factory.dart';
import './white_label/list_white_label_factory.dart';
import './white_label/update_white_label_factory.dart';

part './auth/datasource.dart';
part './blog/datasource.dart';
part './ccmei/datasource.dart';
part './cnpj/datasource.dart';
part './company/datasource.dart';
part './contacts/datasource.dart';
part './das/datasource.dart';
part './dasn/datasource.dart';
part './documents/datasource.dart';
part './ecommerce/datasource.dart';
part './ecommerce/voucher/datasource.dart';
part './ecommerce/product/datasource.dart';
part './ecommerce/product_category/datasource.dart';
part './ecommerce/schedule/datasource.dart';
// part './finance/datasource.dart';
part './financial_education/datasource.dart';
part './financial_education/categories/datasource.dart';
part './financial_education/videos/datasource.dart';
part './groups/datasource.dart';
part './inbox/datasource.dart';
part './knowledge_base/datasource.dart';
part './links/datasource.dart';
part './media_manager/datasource.dart';
part './mei_benefits/datasource.dart';
part './mei_report/datasource.dart';
part './modules/datasource.dart';
part './notifications/datasource.dart';
part './payment_assistant/datasource.dart';
part './plan/datasource.dart';
part './plan/voucher/datasource.dart';
part './plan/subscription/datasource.dart';
part './plan/items/datasource.dart';
part './secrets/datasource.dart';
part './stories/datasource.dart';
part './stories/story_item/datasource.dart';
part './stories/story_view/datasource.dart';
part './tasks/datasource.dart';
part './user/datasource.dart';
part './white_label/datasource.dart';

class Api {
  Api._();
  static final auth = _AuthApi();
  static final blog = _BlogApi();
  static final ccmei = _CcmeiApi();
  static final cnpj = _CnpjApi();
  static final company = _CompanyApi();
  static final contact = _ContactApi();
  static final das = _DasApi();
  static final dasn = _DasnApi();
  static final document = _DocumentsApi();
  static final ecommerce = _EcommerceApi();
  // static final finance = _FinanceApi();
  static final financialEducation = _FinancialEducationApi();
  static final group = _GroupApi();
  static final inbox = _InboxApi();
  static final knowledgeBase = _KnowledgeBaseApi();
  static final link = _LinksApi();
  static final mediaManager = _MediaManagerApi();
  static final meiBenefits = _MeiBenefitsApi();
  static final meiReport = _MeiReportApi();
  static final module = _ModuleApi();
  static final notification = _NotificationsApi();
  static final paymentAssistant = _PaymentAssistantApi();
  static final plan = _PlanApi();
  static final secret = _SecretsApi();
  static final stories = _StoriesApi();
  static final task = _TasksApi();
  static final user = _UserApi();
  static final whiteLabel = _WhiteLabelApi();
}
