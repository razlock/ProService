--
-- PostgreSQL database dump
--


-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_branch_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_web_push_subscriptions DROP CONSTRAINT IF EXISTS staff_chat_web_push_subscriptions_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_read_cursors DROP CONSTRAINT IF EXISTS staff_chat_read_cursors_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_reactions DROP CONSTRAINT IF EXISTS staff_chat_reactions_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_reactions DROP CONSTRAINT IF EXISTS staff_chat_reactions_message_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_messages DROP CONSTRAINT IF EXISTS staff_chat_messages_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_attachments DROP CONSTRAINT IF EXISTS staff_chat_attachments_message_id_fkey;
ALTER TABLE IF EXISTS ONLY public.print_templates DROP CONSTRAINT IF EXISTS print_templates_branch_id_fkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_branch_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_pins DROP CONSTRAINT IF EXISTS order_pins_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_pins DROP CONSTRAINT IF EXISTS order_pins_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_diagnostics_history DROP CONSTRAINT IF EXISTS order_diagnostics_history_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_customer_emails DROP CONSTRAINT IF EXISTS order_customer_emails_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_customer_emails DROP CONSTRAINT IF EXISTS order_customer_emails_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_client_files DROP CONSTRAINT IF EXISTS order_client_files_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.masters DROP CONSTRAINT IF EXISTS masters_branch_id_fkey;
ALTER TABLE IF EXISTS ONLY public.managers DROP CONSTRAINT IF EXISTS managers_branch_id_fkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_payment_id_fkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_paid_by_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.invoice_items DROP CONSTRAINT IF EXISTS invoice_items_invoice_id_fkey;
ALTER TABLE IF EXISTS ONLY public.diagnostics_templates DROP CONSTRAINT IF EXISTS diagnostics_templates_model_id_fkey;
ALTER TABLE IF EXISTS ONLY public.diagnostics_templates DROP CONSTRAINT IF EXISTS diagnostics_templates_device_type_id_fkey;
ALTER TABLE IF EXISTS ONLY public.diagnostics_templates DROP CONSTRAINT IF EXISTS diagnostics_templates_device_brand_id_fkey;
DROP INDEX IF EXISTS public.warehouse_logs_idx_warehouse_logs_user_id_pg;
DROP INDEX IF EXISTS public.warehouse_logs_idx_warehouse_logs_part_id_pg;
DROP INDEX IF EXISTS public.warehouse_logs_idx_warehouse_logs_operation_type_pg;
DROP INDEX IF EXISTS public.warehouse_logs_idx_warehouse_logs_created_at_pg;
DROP INDEX IF EXISTS public.warehouse_logs_idx_warehouse_logs_category_id_pg;
DROP INDEX IF EXISTS public.ux_salary_accruals_business_key;
DROP INDEX IF EXISTS public.users_sqlite_autoindex_users_1_pg;
DROP INDEX IF EXISTS public.users_idx_users_username_pg;
DROP INDEX IF EXISTS public.users_idx_users_role_pg;
DROP INDEX IF EXISTS public.users_idx_users_is_active_pg;
DROP INDEX IF EXISTS public.user_role_history_idx_user_role_history_user_id_pg;
DROP INDEX IF EXISTS public.user_role_history_idx_user_role_history_created_at_pg;
DROP INDEX IF EXISTS public.user_role_history_idx_user_role_history_changed_by_pg;
DROP INDEX IF EXISTS public.uq_staff_chat_web_push_user_endpoint;
DROP INDEX IF EXISTS public.uq_staff_chat_read_cursors_actor;
DROP INDEX IF EXISTS public.uq_staff_chat_reactions_actor;
DROP INDEX IF EXISTS public.uq_print_templates_global_type;
DROP INDEX IF EXISTS public.uq_print_templates_branch_type;
DROP INDEX IF EXISTS public.transaction_categories_ux_transaction_categories_name_type_pg;
DROP INDEX IF EXISTS public.tasks_idx_tasks_status_pg;
DROP INDEX IF EXISTS public.tasks_idx_tasks_order_id_pg;
DROP INDEX IF EXISTS public.tasks_idx_tasks_deadline_pg;
DROP INDEX IF EXISTS public.tasks_idx_tasks_created_by_pg;
DROP INDEX IF EXISTS public.tasks_idx_tasks_assigned_to_pg;
DROP INDEX IF EXISTS public.task_checklists_idx_task_checklists_task_id_pg;
DROP INDEX IF EXISTS public.system_settings_sqlite_autoindex_system_settings_1_pg;
DROP INDEX IF EXISTS public.system_settings_idx_system_settings_key_pg;
DROP INDEX IF EXISTS public.symptoms_sqlite_autoindex_symptoms_1_pg;
DROP INDEX IF EXISTS public.symptoms_idx_symptoms_sort_order_pg;
DROP INDEX IF EXISTS public.symptoms_idx_symptoms_name_pg;
DROP INDEX IF EXISTS public.suppliers_sqlite_autoindex_suppliers_1_pg;
DROP INDEX IF EXISTS public.suppliers_idx_suppliers_name_pg;
DROP INDEX IF EXISTS public.suppliers_idx_suppliers_is_active_pg;
DROP INDEX IF EXISTS public.stock_movements_idx_stock_movements_reference_pg;
DROP INDEX IF EXISTS public.stock_movements_idx_stock_movements_part_id_pg;
DROP INDEX IF EXISTS public.stock_movements_idx_stock_movements_movement_type_pg;
DROP INDEX IF EXISTS public.stock_movements_idx_stock_movements_date_type_pg;
DROP INDEX IF EXISTS public.stock_movements_idx_stock_movements_created_at_pg;
DROP INDEX IF EXISTS public.shop_sales_idx_shop_sales_date_pg;
DROP INDEX IF EXISTS public.shop_sales_idx_shop_sales_customer_pg;
DROP INDEX IF EXISTS public.shop_sale_items_idx_shop_sale_items_sale_pg;
DROP INDEX IF EXISTS public.services_ux_services_name_pg;
DROP INDEX IF EXISTS public.services_idx_services_sort_order_pg;
DROP INDEX IF EXISTS public.services_idx_services_is_default_pg;
DROP INDEX IF EXISTS public.salary_payments_idx_salary_payments_user_id_pg;
DROP INDEX IF EXISTS public.salary_payments_idx_salary_payments_date_pg;
DROP INDEX IF EXISTS public.salary_payments_idx_salary_payments_cash_transaction_id_pg;
DROP INDEX IF EXISTS public.salary_fines_idx_salary_fines_user_id_pg;
DROP INDEX IF EXISTS public.salary_fines_idx_salary_fines_order_id_pg;
DROP INDEX IF EXISTS public.salary_fines_idx_salary_fines_date_pg;
DROP INDEX IF EXISTS public.salary_bonuses_idx_salary_bonuses_user_id_pg;
DROP INDEX IF EXISTS public.salary_bonuses_idx_salary_bonuses_order_id_pg;
DROP INDEX IF EXISTS public.salary_bonuses_idx_salary_bonuses_date_pg;
DROP INDEX IF EXISTS public.salary_accruals_idx_salary_accruals_user_id_pg;
DROP INDEX IF EXISTS public.salary_accruals_idx_salary_accruals_shop_sale_id_pg;
DROP INDEX IF EXISTS public.salary_accruals_idx_salary_accruals_role_pg;
DROP INDEX IF EXISTS public.salary_accruals_idx_salary_accruals_order_id_pg;
DROP INDEX IF EXISTS public.salary_accruals_idx_salary_accruals_created_at_pg;
DROP INDEX IF EXISTS public.role_permissions_sqlite_autoindex_role_permissions_1_pg;
DROP INDEX IF EXISTS public.role_permissions_idx_role_permissions_role_pg;
DROP INDEX IF EXISTS public.role_permissions_idx_role_permissions_permission_pg;
DROP INDEX IF EXISTS public.purchases_idx_purchases_supplier_id_pg;
DROP INDEX IF EXISTS public.purchases_idx_purchases_status_pg;
DROP INDEX IF EXISTS public.purchases_idx_purchases_purchase_date_pg;
DROP INDEX IF EXISTS public.purchases_idx_purchases_created_at_pg;
DROP INDEX IF EXISTS public.purchase_items_idx_purchase_items_purchase_id_pg;
DROP INDEX IF EXISTS public.purchase_items_idx_purchase_items_part_id_pg;
DROP INDEX IF EXISTS public.print_templates_idx_print_templates_template_type_pg;
DROP INDEX IF EXISTS public.permissions_sqlite_autoindex_permissions_1_pg;
DROP INDEX IF EXISTS public.permissions_idx_permissions_name_pg;
DROP INDEX IF EXISTS public.payments_ux_payments_idempotency_key_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_status_created_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_payment_type_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_payment_date_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_order_id_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_order_created_pg;
DROP INDEX IF EXISTS public.payments_idx_payments_not_cancelled_pg;
DROP INDEX IF EXISTS public.payment_receipts_idx_payment_receipts_payment_id_pg;
DROP INDEX IF EXISTS public.parts_ux_parts_name_part_number_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_unit_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_stock_quantity_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_part_number_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_name_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_is_deleted_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_category_stock_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_category_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_category_id_pg;
DROP INDEX IF EXISTS public.parts_idx_parts_category_deleted_pg;
DROP INDEX IF EXISTS public.part_categories_ux_part_categories_name_parent_pg;
DROP INDEX IF EXISTS public.part_categories_sqlite_autoindex_part_categories_1_pg;
DROP INDEX IF EXISTS public.part_categories_idx_part_categories_parent_id_pg;
DROP INDEX IF EXISTS public.part_categories_idx_part_categories_name_pg;
DROP INDEX IF EXISTS public.orders_sqlite_autoindex_orders_1_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_updated_at_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_status_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_status_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_status_created_at_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_prepayment_cents_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_order_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_model_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_master_status_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_master_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_manager_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_manager_created_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_is_deleted_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_hidden_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_hidden_deleted_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_hidden_created_at_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_device_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_device_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_customer_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_customer_id_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_customer_created_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_created_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_created_at_pg;
DROP INDEX IF EXISTS public.orders_idx_orders_created_at_desc_pg;
DROP INDEX IF EXISTS public.order_visibility_history_idx_order_visibility_history_order_id_;
DROP INDEX IF EXISTS public.order_visibility_history_idx_order_visibility_history_changed_a;
DROP INDEX IF EXISTS public.order_templates_idx_order_templates_is_public_pg;
DROP INDEX IF EXISTS public.order_templates_idx_order_templates_created_by_pg;
DROP INDEX IF EXISTS public.order_symptoms_sqlite_autoindex_order_symptoms_1_pg;
DROP INDEX IF EXISTS public.order_symptoms_idx_order_symptoms_symptom_id_pg;
DROP INDEX IF EXISTS public.order_symptoms_idx_order_symptoms_order_id_pg;
DROP INDEX IF EXISTS public.order_statuses_sqlite_autoindex_order_statuses_1_pg;
DROP INDEX IF EXISTS public.order_statuses_idx_order_statuses_sort_order_pg;
DROP INDEX IF EXISTS public.order_statuses_idx_order_statuses_is_default_pg;
DROP INDEX IF EXISTS public.order_statuses_idx_order_statuses_code_pg;
DROP INDEX IF EXISTS public.order_status_history_idx_order_status_history_order_id_pg;
DROP INDEX IF EXISTS public.order_status_history_idx_order_status_history_created_at_pg;
DROP INDEX IF EXISTS public.order_services_idx_order_services_service_id_pg;
DROP INDEX IF EXISTS public.order_services_idx_order_services_order_id_pg;
DROP INDEX IF EXISTS public.order_services_idx_order_services_order_id_alt_pg;
DROP INDEX IF EXISTS public.order_parts_idx_order_parts_part_id_pg;
DROP INDEX IF EXISTS public.order_parts_idx_order_parts_order_id_pg;
DROP INDEX IF EXISTS public.order_parts_idx_order_parts_order_id_alt_pg;
DROP INDEX IF EXISTS public.order_models_sqlite_autoindex_order_models_1_pg;
DROP INDEX IF EXISTS public.order_models_idx_order_models_name_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_user_id_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_order_id_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_order_created_desc_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_new_order_id_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_new_created_at_pg;
DROP INDEX IF EXISTS public.order_comments_idx_order_comments_created_at_pg;
DROP INDEX IF EXISTS public.order_appearance_tags_sqlite_autoindex_order_appearance_tags_1_;
DROP INDEX IF EXISTS public.order_appearance_tags_idx_order_appearance_tag_id_pg;
DROP INDEX IF EXISTS public.order_appearance_tags_idx_order_appearance_order_id_pg;
DROP INDEX IF EXISTS public.notifications_idx_notifications_user_id_pg;
DROP INDEX IF EXISTS public.notifications_idx_notifications_read_at_pg;
DROP INDEX IF EXISTS public.notifications_idx_notifications_entity_pg;
DROP INDEX IF EXISTS public.notifications_idx_notifications_created_at_pg;
DROP INDEX IF EXISTS public.notification_preferences_sqlite_autoindex_notification_preferen;
DROP INDEX IF EXISTS public.notification_preferences_idx_notification_preferences_user_id_p;
DROP INDEX IF EXISTS public.masters_sqlite_autoindex_masters_1_pg;
DROP INDEX IF EXISTS public.masters_idx_masters_user_id_pg;
DROP INDEX IF EXISTS public.managers_sqlite_autoindex_managers_1_pg;
DROP INDEX IF EXISTS public.managers_idx_managers_user_id_pg;
DROP INDEX IF EXISTS public.inventory_items_idx_inventory_items_part_id_pg;
DROP INDEX IF EXISTS public.inventory_items_idx_inventory_items_inventory_id_pg;
DROP INDEX IF EXISTS public.inventory_idx_inventory_status_pg;
DROP INDEX IF EXISTS public.inventory_idx_inventory_date_pg;
DROP INDEX IF EXISTS public.idx_transaction_categories_type_sort;
DROP INDEX IF EXISTS public.idx_stock_movements_date_created_at;
DROP INDEX IF EXISTS public.idx_stock_movements_created_at;
DROP INDEX IF EXISTS public.idx_staff_chat_web_push_user;
DROP INDEX IF EXISTS public.idx_staff_chat_read_cursors_room;
DROP INDEX IF EXISTS public.idx_staff_chat_reactions_message_emoji;
DROP INDEX IF EXISTS public.idx_staff_chat_reactions_message;
DROP INDEX IF EXISTS public.idx_staff_chat_messages_user_created;
DROP INDEX IF EXISTS public.idx_staff_chat_messages_room_created;
DROP INDEX IF EXISTS public.idx_staff_chat_attachments_message;
DROP INDEX IF EXISTS public.idx_shop_sales_sale_date;
DROP INDEX IF EXISTS public.idx_shop_sales_date_sale_date;
DROP INDEX IF EXISTS public.idx_shop_sales_date_created_at;
DROP INDEX IF EXISTS public.idx_shop_sales_created_at;
DROP INDEX IF EXISTS public.idx_payments_order_id_date;
DROP INDEX IF EXISTS public.idx_payments_invoice_id;
DROP INDEX IF EXISTS public.idx_payments_date_payment_date;
DROP INDEX IF EXISTS public.idx_parts_fts_search;
DROP INDEX IF EXISTS public.idx_orders_updated_at;
DROP INDEX IF EXISTS public.idx_orders_status_id;
DROP INDEX IF EXISTS public.idx_orders_hidden;
DROP INDEX IF EXISTS public.idx_orders_fts_search;
DROP INDEX IF EXISTS public.idx_orders_date_updated_at;
DROP INDEX IF EXISTS public.idx_orders_date_created_at;
DROP INDEX IF EXISTS public.idx_orders_customer_id;
DROP INDEX IF EXISTS public.idx_orders_created_at_visible;
DROP INDEX IF EXISTS public.idx_orders_created_at;
DROP INDEX IF EXISTS public.idx_order_status_history_order_status_time;
DROP INDEX IF EXISTS public.idx_order_status_history_date_created_at;
DROP INDEX IF EXISTS public.idx_order_status_history_created_at;
DROP INDEX IF EXISTS public.idx_order_services_order_id_created_at;
DROP INDEX IF EXISTS public.idx_order_services_date_created_at;
DROP INDEX IF EXISTS public.idx_order_pins_user_created;
DROP INDEX IF EXISTS public.idx_order_pins_order;
DROP INDEX IF EXISTS public.idx_order_parts_order_id_created_at;
DROP INDEX IF EXISTS public.idx_order_parts_date_created_at;
DROP INDEX IF EXISTS public.idx_order_models_type_brand;
DROP INDEX IF EXISTS public.idx_order_diagnostics_history_order_id;
DROP INDEX IF EXISTS public.idx_order_customer_emails_order;
DROP INDEX IF EXISTS public.idx_order_client_files_order_id;
DROP INDEX IF EXISTS public.idx_invoices_status;
DROP INDEX IF EXISTS public.idx_invoices_shop_sale_id;
DROP INDEX IF EXISTS public.idx_invoices_order;
DROP INDEX IF EXISTS public.idx_invoices_issued;
DROP INDEX IF EXISTS public.idx_invoices_customer;
DROP INDEX IF EXISTS public.idx_invoice_items_invoice;
DROP INDEX IF EXISTS public.idx_diagnostics_templates_sort;
DROP INDEX IF EXISTS public.idx_diagnostics_templates_device;
DROP INDEX IF EXISTS public.idx_demo_visitor_events_user_created;
DROP INDEX IF EXISTS public.idx_demo_visitor_events_type_created;
DROP INDEX IF EXISTS public.idx_demo_visitor_events_created;
DROP INDEX IF EXISTS public.idx_demo_visitor_events_client_created;
DROP INDEX IF EXISTS public.idx_customers_phone;
DROP INDEX IF EXISTS public.idx_customers_fts_search;
DROP INDEX IF EXISTS public.idx_customers_created_at;
DROP INDEX IF EXISTS public.idx_cash_txn_shop_sale_id;
DROP INDEX IF EXISTS public.idx_cash_txn_order_id;
DROP INDEX IF EXISTS public.idx_cash_txn_date_type_method;
DROP INDEX IF EXISTS public.idx_cash_txn_date_transaction_date;
DROP INDEX IF EXISTS public.devices_idx_devices_serial_pg;
DROP INDEX IF EXISTS public.devices_idx_devices_serial_number_pg;
DROP INDEX IF EXISTS public.devices_idx_devices_device_type_id_pg;
DROP INDEX IF EXISTS public.devices_idx_devices_device_brand_id_pg;
DROP INDEX IF EXISTS public.devices_idx_devices_customer_pg;
DROP INDEX IF EXISTS public.devices_idx_devices_customer_id_pg;
DROP INDEX IF EXISTS public.device_types_sqlite_autoindex_device_types_1_pg;
DROP INDEX IF EXISTS public.device_types_idx_device_types_sort_order_pg;
DROP INDEX IF EXISTS public.device_types_idx_device_types_name_pg;
DROP INDEX IF EXISTS public.device_brands_sqlite_autoindex_device_brands_1_pg;
DROP INDEX IF EXISTS public.device_brands_idx_device_brands_sort_order_pg;
DROP INDEX IF EXISTS public.device_brands_idx_device_brands_name_pg;
DROP INDEX IF EXISTS public.customers_sqlite_autoindex_customers_1_pg;
DROP INDEX IF EXISTS public.customers_idx_customers_phone_pg;
DROP INDEX IF EXISTS public.customers_idx_customers_name_phone_pg;
DROP INDEX IF EXISTS public.customers_idx_customers_name_pg;
DROP INDEX IF EXISTS public.customers_idx_customers_email_pg;
DROP INDEX IF EXISTS public.customer_wallet_transactions_idx_wallet_tx_payment_id_pg;
DROP INDEX IF EXISTS public.customer_wallet_transactions_idx_wallet_tx_order_id_pg;
DROP INDEX IF EXISTS public.customer_wallet_transactions_idx_wallet_tx_customer_id_pg;
DROP INDEX IF EXISTS public.customer_tokens_sqlite_autoindex_customer_tokens_1_pg;
DROP INDEX IF EXISTS public.customer_tokens_idx_customer_tokens_token_pg;
DROP INDEX IF EXISTS public.customer_tokens_idx_customer_tokens_expires_at_pg;
DROP INDEX IF EXISTS public.customer_tokens_idx_customer_tokens_customer_id_pg;
DROP INDEX IF EXISTS public.comment_attachments_idx_comment_attachments_comment_id_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_type_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_shop_sale_id_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_payment_id_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_order_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_not_cancelled_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_date_type_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_date_pg;
DROP INDEX IF EXISTS public.cash_transactions_idx_cash_transactions_category_pg;
DROP INDEX IF EXISTS public.appearance_tags_sqlite_autoindex_appearance_tags_1_pg;
DROP INDEX IF EXISTS public.appearance_tags_idx_appearance_tags_sort_order_pg;
DROP INDEX IF EXISTS public.appearance_tags_idx_appearance_tags_name_pg;
DROP INDEX IF EXISTS public.action_logs_idx_action_logs_user_id_pg;
DROP INDEX IF EXISTS public.action_logs_idx_action_logs_entity_pg;
DROP INDEX IF EXISTS public.action_logs_idx_action_logs_created_pg;
DROP INDEX IF EXISTS public.action_logs_idx_action_logs_created_at_pg;
DROP INDEX IF EXISTS public.action_logs_idx_action_logs_action_type_pg;
ALTER TABLE IF EXISTS ONLY public.warehouse_logs DROP CONSTRAINT IF EXISTS warehouse_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.user_role_history DROP CONSTRAINT IF EXISTS user_role_history_pkey;
ALTER TABLE IF EXISTS ONLY public.order_pins DROP CONSTRAINT IF EXISTS uq_order_pins_order_user;
ALTER TABLE IF EXISTS ONLY public.transaction_categories DROP CONSTRAINT IF EXISTS transaction_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.tasks DROP CONSTRAINT IF EXISTS tasks_pkey;
ALTER TABLE IF EXISTS ONLY public.task_checklists DROP CONSTRAINT IF EXISTS task_checklists_pkey;
ALTER TABLE IF EXISTS ONLY public.system_settings DROP CONSTRAINT IF EXISTS system_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.symptoms DROP CONSTRAINT IF EXISTS symptoms_pkey;
ALTER TABLE IF EXISTS ONLY public.suppliers DROP CONSTRAINT IF EXISTS suppliers_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_movements DROP CONSTRAINT IF EXISTS stock_movements_pkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_web_push_subscriptions DROP CONSTRAINT IF EXISTS staff_chat_web_push_subscriptions_pkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_read_cursors DROP CONSTRAINT IF EXISTS staff_chat_read_cursors_pkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_reactions DROP CONSTRAINT IF EXISTS staff_chat_reactions_pkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_messages DROP CONSTRAINT IF EXISTS staff_chat_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.staff_chat_attachments DROP CONSTRAINT IF EXISTS staff_chat_attachments_pkey;
ALTER TABLE IF EXISTS ONLY public.shop_sales DROP CONSTRAINT IF EXISTS shop_sales_pkey;
ALTER TABLE IF EXISTS ONLY public.shop_sale_items DROP CONSTRAINT IF EXISTS shop_sale_items_pkey;
ALTER TABLE IF EXISTS ONLY public.services DROP CONSTRAINT IF EXISTS services_pkey;
ALTER TABLE IF EXISTS ONLY public.schema_migrations_pg DROP CONSTRAINT IF EXISTS schema_migrations_pg_pkey;
ALTER TABLE IF EXISTS ONLY public.salary_payments DROP CONSTRAINT IF EXISTS salary_payments_pkey;
ALTER TABLE IF EXISTS ONLY public.salary_fines DROP CONSTRAINT IF EXISTS salary_fines_pkey;
ALTER TABLE IF EXISTS ONLY public.salary_bonuses DROP CONSTRAINT IF EXISTS salary_bonuses_pkey;
ALTER TABLE IF EXISTS ONLY public.salary_accruals DROP CONSTRAINT IF EXISTS salary_accruals_pkey;
ALTER TABLE IF EXISTS ONLY public.role_permissions DROP CONSTRAINT IF EXISTS role_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.purchases DROP CONSTRAINT IF EXISTS purchases_pkey;
ALTER TABLE IF EXISTS ONLY public.purchase_items DROP CONSTRAINT IF EXISTS purchase_items_pkey;
ALTER TABLE IF EXISTS ONLY public.print_templates DROP CONSTRAINT IF EXISTS print_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.permissions DROP CONSTRAINT IF EXISTS permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.payments DROP CONSTRAINT IF EXISTS payments_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_receipts DROP CONSTRAINT IF EXISTS payment_receipts_pkey;
ALTER TABLE IF EXISTS ONLY public.parts DROP CONSTRAINT IF EXISTS parts_pkey;
ALTER TABLE IF EXISTS ONLY public.part_categories DROP CONSTRAINT IF EXISTS part_categories_pkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_pkey;
ALTER TABLE IF EXISTS ONLY public.order_visibility_history DROP CONSTRAINT IF EXISTS order_visibility_history_pkey;
ALTER TABLE IF EXISTS ONLY public.order_templates DROP CONSTRAINT IF EXISTS order_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.order_symptoms DROP CONSTRAINT IF EXISTS order_symptoms_pkey;
ALTER TABLE IF EXISTS ONLY public.order_statuses DROP CONSTRAINT IF EXISTS order_statuses_pkey;
ALTER TABLE IF EXISTS ONLY public.order_status_history DROP CONSTRAINT IF EXISTS order_status_history_pkey;
ALTER TABLE IF EXISTS ONLY public.order_services DROP CONSTRAINT IF EXISTS order_services_pkey;
ALTER TABLE IF EXISTS ONLY public.order_pins DROP CONSTRAINT IF EXISTS order_pins_pkey;
ALTER TABLE IF EXISTS ONLY public.order_parts DROP CONSTRAINT IF EXISTS order_parts_pkey;
ALTER TABLE IF EXISTS ONLY public.order_models DROP CONSTRAINT IF EXISTS order_models_pkey;
ALTER TABLE IF EXISTS ONLY public.order_diagnostics_history DROP CONSTRAINT IF EXISTS order_diagnostics_history_pkey;
ALTER TABLE IF EXISTS ONLY public.order_customer_emails DROP CONSTRAINT IF EXISTS order_customer_emails_pkey;
ALTER TABLE IF EXISTS ONLY public.order_comments DROP CONSTRAINT IF EXISTS order_comments_pkey;
ALTER TABLE IF EXISTS ONLY public.order_client_files DROP CONSTRAINT IF EXISTS order_client_files_pkey;
ALTER TABLE IF EXISTS ONLY public.order_appearance_tags DROP CONSTRAINT IF EXISTS order_appearance_tags_pkey;
ALTER TABLE IF EXISTS ONLY public.notifications DROP CONSTRAINT IF EXISTS notifications_pkey;
ALTER TABLE IF EXISTS ONLY public.notification_preferences DROP CONSTRAINT IF EXISTS notification_preferences_pkey;
ALTER TABLE IF EXISTS ONLY public.masters DROP CONSTRAINT IF EXISTS masters_pkey;
ALTER TABLE IF EXISTS ONLY public.managers DROP CONSTRAINT IF EXISTS managers_pkey;
ALTER TABLE IF EXISTS ONLY public.invoices DROP CONSTRAINT IF EXISTS invoices_pkey;
ALTER TABLE IF EXISTS ONLY public.invoice_sequences DROP CONSTRAINT IF EXISTS invoice_sequences_pkey;
ALTER TABLE IF EXISTS ONLY public.invoice_sequences DROP CONSTRAINT IF EXISTS invoice_sequences_doc_type_year_key;
ALTER TABLE IF EXISTS ONLY public.invoice_items DROP CONSTRAINT IF EXISTS invoice_items_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory DROP CONSTRAINT IF EXISTS inventory_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_items DROP CONSTRAINT IF EXISTS inventory_items_pkey;
ALTER TABLE IF EXISTS ONLY public.general_settings DROP CONSTRAINT IF EXISTS general_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.diagnostics_templates DROP CONSTRAINT IF EXISTS diagnostics_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.devices DROP CONSTRAINT IF EXISTS devices_pkey;
ALTER TABLE IF EXISTS ONLY public.device_types DROP CONSTRAINT IF EXISTS device_types_pkey;
ALTER TABLE IF EXISTS ONLY public.device_brands DROP CONSTRAINT IF EXISTS device_brands_pkey;
ALTER TABLE IF EXISTS ONLY public.demo_visitor_events DROP CONSTRAINT IF EXISTS demo_visitor_events_pkey;
ALTER TABLE IF EXISTS ONLY public.customers DROP CONSTRAINT IF EXISTS customers_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_wallet_transactions DROP CONSTRAINT IF EXISTS customer_wallet_transactions_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_tokens DROP CONSTRAINT IF EXISTS customer_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.comment_attachments DROP CONSTRAINT IF EXISTS comment_attachments_pkey;
ALTER TABLE IF EXISTS ONLY public.cash_transactions DROP CONSTRAINT IF EXISTS cash_transactions_pkey;
ALTER TABLE IF EXISTS ONLY public.branches DROP CONSTRAINT IF EXISTS branches_pkey;
ALTER TABLE IF EXISTS ONLY public.appearance_tags DROP CONSTRAINT IF EXISTS appearance_tags_pkey;
ALTER TABLE IF EXISTS ONLY public.action_logs DROP CONSTRAINT IF EXISTS action_logs_pkey;
ALTER TABLE IF EXISTS public.warehouse_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.user_role_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.transaction_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.tasks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.task_checklists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.system_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.symptoms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.suppliers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.stock_movements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.staff_chat_web_push_subscriptions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.staff_chat_read_cursors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.staff_chat_reactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.staff_chat_messages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.staff_chat_attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.shop_sales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.shop_sale_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.salary_payments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.salary_fines ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.salary_bonuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.salary_accruals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.purchases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.purchase_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.print_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.payment_receipts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.parts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.part_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.orders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_visibility_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_symptoms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_statuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_status_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_services ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_pins ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_parts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_models ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_diagnostics_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_customer_emails ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_client_files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.order_appearance_tags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.notification_preferences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.masters ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.managers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.invoices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.invoice_sequences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.invoice_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.inventory_items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.inventory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.general_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.diagnostics_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.devices ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.device_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.device_brands ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.demo_visitor_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.customers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.customer_wallet_transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.customer_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.comment_attachments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cash_transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.branches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.appearance_tags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.action_logs ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.warehouse_logs_id_seq;
DROP TABLE IF EXISTS public.warehouse_logs;
DROP SEQUENCE IF EXISTS public.users_id_seq;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.user_role_history_id_seq;
DROP TABLE IF EXISTS public.user_role_history;
DROP SEQUENCE IF EXISTS public.transaction_categories_id_seq;
DROP TABLE IF EXISTS public.transaction_categories;
DROP SEQUENCE IF EXISTS public.tasks_id_seq;
DROP TABLE IF EXISTS public.tasks;
DROP SEQUENCE IF EXISTS public.task_checklists_id_seq;
DROP TABLE IF EXISTS public.task_checklists;
DROP SEQUENCE IF EXISTS public.system_settings_id_seq;
DROP TABLE IF EXISTS public.system_settings;
DROP SEQUENCE IF EXISTS public.symptoms_id_seq;
DROP TABLE IF EXISTS public.symptoms;
DROP SEQUENCE IF EXISTS public.suppliers_id_seq;
DROP TABLE IF EXISTS public.suppliers;
DROP SEQUENCE IF EXISTS public.stock_movements_id_seq;
DROP TABLE IF EXISTS public.stock_movements;
DROP SEQUENCE IF EXISTS public.staff_chat_web_push_subscriptions_id_seq;
DROP TABLE IF EXISTS public.staff_chat_web_push_subscriptions;
DROP SEQUENCE IF EXISTS public.staff_chat_read_cursors_id_seq;
DROP TABLE IF EXISTS public.staff_chat_read_cursors;
DROP SEQUENCE IF EXISTS public.staff_chat_reactions_id_seq;
DROP TABLE IF EXISTS public.staff_chat_reactions;
DROP SEQUENCE IF EXISTS public.staff_chat_messages_id_seq;
DROP TABLE IF EXISTS public.staff_chat_messages;
DROP SEQUENCE IF EXISTS public.staff_chat_attachments_id_seq;
DROP TABLE IF EXISTS public.staff_chat_attachments;
DROP SEQUENCE IF EXISTS public.shop_sales_id_seq;
DROP TABLE IF EXISTS public.shop_sales;
DROP SEQUENCE IF EXISTS public.shop_sale_items_id_seq;
DROP TABLE IF EXISTS public.shop_sale_items;
DROP SEQUENCE IF EXISTS public.services_id_seq;
DROP TABLE IF EXISTS public.services;
DROP TABLE IF EXISTS public.schema_migrations_pg;
DROP SEQUENCE IF EXISTS public.salary_payments_id_seq;
DROP TABLE IF EXISTS public.salary_payments;
DROP SEQUENCE IF EXISTS public.salary_fines_id_seq;
DROP TABLE IF EXISTS public.salary_fines;
DROP SEQUENCE IF EXISTS public.salary_bonuses_id_seq;
DROP TABLE IF EXISTS public.salary_bonuses;
DROP SEQUENCE IF EXISTS public.salary_accruals_id_seq;
DROP TABLE IF EXISTS public.salary_accruals;
DROP TABLE IF EXISTS public.role_permissions;
DROP SEQUENCE IF EXISTS public.purchases_id_seq;
DROP TABLE IF EXISTS public.purchases;
DROP SEQUENCE IF EXISTS public.purchase_items_id_seq;
DROP TABLE IF EXISTS public.purchase_items;
DROP SEQUENCE IF EXISTS public.print_templates_id_seq;
DROP TABLE IF EXISTS public.print_templates;
DROP SEQUENCE IF EXISTS public.permissions_id_seq;
DROP TABLE IF EXISTS public.permissions;
DROP SEQUENCE IF EXISTS public.payments_id_seq;
DROP TABLE IF EXISTS public.payments;
DROP SEQUENCE IF EXISTS public.payment_receipts_id_seq;
DROP TABLE IF EXISTS public.payment_receipts;
DROP SEQUENCE IF EXISTS public.parts_id_seq;
DROP TABLE IF EXISTS public.parts;
DROP SEQUENCE IF EXISTS public.part_categories_id_seq;
DROP TABLE IF EXISTS public.part_categories;
DROP SEQUENCE IF EXISTS public.orders_id_seq;
DROP TABLE IF EXISTS public.orders;
DROP SEQUENCE IF EXISTS public.order_visibility_history_id_seq;
DROP TABLE IF EXISTS public.order_visibility_history;
DROP SEQUENCE IF EXISTS public.order_templates_id_seq;
DROP TABLE IF EXISTS public.order_templates;
DROP SEQUENCE IF EXISTS public.order_symptoms_id_seq;
DROP TABLE IF EXISTS public.order_symptoms;
DROP SEQUENCE IF EXISTS public.order_statuses_id_seq;
DROP TABLE IF EXISTS public.order_statuses;
DROP SEQUENCE IF EXISTS public.order_status_history_id_seq;
DROP TABLE IF EXISTS public.order_status_history;
DROP SEQUENCE IF EXISTS public.order_services_id_seq;
DROP TABLE IF EXISTS public.order_services;
DROP SEQUENCE IF EXISTS public.order_pins_id_seq;
DROP TABLE IF EXISTS public.order_pins;
DROP SEQUENCE IF EXISTS public.order_parts_id_seq;
DROP TABLE IF EXISTS public.order_parts;
DROP SEQUENCE IF EXISTS public.order_models_id_seq;
DROP TABLE IF EXISTS public.order_models;
DROP SEQUENCE IF EXISTS public.order_diagnostics_history_id_seq;
DROP TABLE IF EXISTS public.order_diagnostics_history;
DROP SEQUENCE IF EXISTS public.order_customer_emails_id_seq;
DROP TABLE IF EXISTS public.order_customer_emails;
DROP SEQUENCE IF EXISTS public.order_comments_id_seq;
DROP TABLE IF EXISTS public.order_comments;
DROP SEQUENCE IF EXISTS public.order_client_files_id_seq;
DROP TABLE IF EXISTS public.order_client_files;
DROP SEQUENCE IF EXISTS public.order_appearance_tags_id_seq;
DROP TABLE IF EXISTS public.order_appearance_tags;
DROP SEQUENCE IF EXISTS public.notifications_id_seq;
DROP TABLE IF EXISTS public.notifications;
DROP SEQUENCE IF EXISTS public.notification_preferences_id_seq;
DROP TABLE IF EXISTS public.notification_preferences;
DROP SEQUENCE IF EXISTS public.masters_id_seq;
DROP TABLE IF EXISTS public.masters;
DROP SEQUENCE IF EXISTS public.managers_id_seq;
DROP TABLE IF EXISTS public.managers;
DROP SEQUENCE IF EXISTS public.invoices_id_seq;
DROP TABLE IF EXISTS public.invoices;
DROP SEQUENCE IF EXISTS public.invoice_sequences_id_seq;
DROP TABLE IF EXISTS public.invoice_sequences;
DROP SEQUENCE IF EXISTS public.invoice_items_id_seq;
DROP TABLE IF EXISTS public.invoice_items;
DROP SEQUENCE IF EXISTS public.inventory_items_id_seq;
DROP TABLE IF EXISTS public.inventory_items;
DROP SEQUENCE IF EXISTS public.inventory_id_seq;
DROP TABLE IF EXISTS public.inventory;
DROP SEQUENCE IF EXISTS public.general_settings_id_seq;
DROP TABLE IF EXISTS public.general_settings;
DROP SEQUENCE IF EXISTS public.diagnostics_templates_id_seq;
DROP TABLE IF EXISTS public.diagnostics_templates;
DROP SEQUENCE IF EXISTS public.devices_id_seq;
DROP TABLE IF EXISTS public.devices;
DROP SEQUENCE IF EXISTS public.device_types_id_seq;
DROP TABLE IF EXISTS public.device_types;
DROP SEQUENCE IF EXISTS public.device_brands_id_seq;
DROP TABLE IF EXISTS public.device_brands;
DROP SEQUENCE IF EXISTS public.demo_visitor_events_id_seq;
DROP TABLE IF EXISTS public.demo_visitor_events;
DROP SEQUENCE IF EXISTS public.customers_id_seq;
DROP TABLE IF EXISTS public.customers;
DROP SEQUENCE IF EXISTS public.customer_wallet_transactions_id_seq;
DROP TABLE IF EXISTS public.customer_wallet_transactions;
DROP SEQUENCE IF EXISTS public.customer_tokens_id_seq;
DROP TABLE IF EXISTS public.customer_tokens;
DROP SEQUENCE IF EXISTS public.comment_attachments_id_seq;
DROP TABLE IF EXISTS public.comment_attachments;
DROP SEQUENCE IF EXISTS public.cash_transactions_id_seq;
DROP TABLE IF EXISTS public.cash_transactions;
DROP SEQUENCE IF EXISTS public.branches_id_seq;
DROP TABLE IF EXISTS public.branches;
DROP SEQUENCE IF EXISTS public.appearance_tags_id_seq;
DROP TABLE IF EXISTS public.appearance_tags;
DROP SEQUENCE IF EXISTS public.action_logs_id_seq;
DROP TABLE IF EXISTS public.action_logs;
DROP EXTENSION IF EXISTS pg_trgm;
--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: action_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.action_logs (
    id bigint NOT NULL,
    user_id bigint,
    username text,
    action_type text NOT NULL,
    entity_type text NOT NULL,
    entity_id bigint,
    old_values text,
    new_values text,
    details text,
    ip_address text,
    user_agent text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: action_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.action_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: action_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.action_logs_id_seq OWNED BY public.action_logs.id;


--
-- Name: appearance_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appearance_tags (
    id bigint NOT NULL,
    name text NOT NULL,
    sort_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: appearance_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.appearance_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: appearance_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.appearance_tags_id_seq OWNED BY public.appearance_tags.id;


--
-- Name: branches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branches (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(500),
    phone character varying(50),
    color character varying(7) DEFAULT '#3b82f6'::character varying,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    logo_url text
);


--
-- Name: branches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branches_id_seq OWNED BY public.branches.id;


--
-- Name: cash_transactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cash_transactions (
    id bigint NOT NULL,
    category_id bigint NOT NULL,
    amount double precision NOT NULL,
    transaction_type text NOT NULL,
    payment_method text DEFAULT 'cash'::text,
    description text,
    order_id bigint,
    payment_id bigint,
    shop_sale_id bigint,
    transaction_date timestamp without time zone DEFAULT '2026-03-30'::date NOT NULL,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_cancelled bigint DEFAULT 0,
    cancelled_at text,
    cancelled_reason text,
    cancelled_by_id bigint,
    cancelled_by_username text,
    storno_of_id bigint
);


--
-- Name: cash_transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cash_transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cash_transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cash_transactions_id_seq OWNED BY public.cash_transactions.id;


--
-- Name: comment_attachments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comment_attachments (
    id bigint NOT NULL,
    comment_id bigint NOT NULL,
    filename text NOT NULL,
    file_path text NOT NULL,
    file_size bigint,
    mime_type text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: comment_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comment_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comment_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comment_attachments_id_seq OWNED BY public.comment_attachments.id;


--
-- Name: customer_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_tokens (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    token text NOT NULL,
    expires_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_used_at timestamp without time zone
);


--
-- Name: customer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customer_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customer_tokens_id_seq OWNED BY public.customer_tokens.id;


--
-- Name: customer_wallet_transactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_wallet_transactions (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    amount_cents bigint NOT NULL,
    tx_type text NOT NULL,
    source text DEFAULT 'manual'::text NOT NULL,
    order_id bigint,
    payment_id bigint,
    comment text,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: customer_wallet_transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customer_wallet_transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customer_wallet_transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customer_wallet_transactions_id_seq OWNED BY public.customer_wallet_transactions.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    name text NOT NULL,
    phone text NOT NULL,
    email text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    wallet_cents bigint DEFAULT 0 NOT NULL,
    portal_password_changed bigint DEFAULT 0,
    portal_enabled bigint DEFAULT 0,
    portal_password_hash text,
    customer_kind text DEFAULT 'person'::text,
    inn text,
    kpp text,
    ogrn text,
    legal_name text,
    legal_address text,
    bank_name text,
    bik text,
    checking_account text,
    corr_account text
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: demo_visitor_events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.demo_visitor_events (
    id bigint NOT NULL,
    user_id bigint,
    username text,
    ip text,
    user_agent text,
    path text,
    event_type text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    client_instance_id text
);


--
-- Name: demo_visitor_events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.demo_visitor_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: demo_visitor_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.demo_visitor_events_id_seq OWNED BY public.demo_visitor_events.id;


--
-- Name: device_brands; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.device_brands (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sort_order bigint DEFAULT 0
);


--
-- Name: device_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.device_brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: device_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.device_brands_id_seq OWNED BY public.device_brands.id;


--
-- Name: device_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.device_types (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sort_order bigint DEFAULT 0
);


--
-- Name: device_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.device_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: device_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.device_types_id_seq OWNED BY public.device_types.id;


--
-- Name: devices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.devices (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    device_type_id bigint NOT NULL,
    device_brand_id bigint NOT NULL,
    serial_number text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    password text,
    symptom_tags text,
    appearance_tags text,
    comment text
);


--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- Name: diagnostics_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.diagnostics_templates (
    id bigint NOT NULL,
    name text NOT NULL,
    body text DEFAULT ''::text NOT NULL,
    device_type_id bigint,
    device_brand_id bigint,
    model_id bigint,
    sort_order integer DEFAULT 0 NOT NULL,
    is_active bigint DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: diagnostics_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.diagnostics_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: diagnostics_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.diagnostics_templates_id_seq OWNED BY public.diagnostics_templates.id;


--
-- Name: general_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.general_settings (
    id bigint NOT NULL,
    org_name text,
    phone text,
    address text,
    inn text,
    ogrn text,
    logo_url text,
    currency text DEFAULT 'RUB'::text,
    country text DEFAULT 'Россия'::text,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    default_warranty_days bigint DEFAULT 30,
    timezone_offset bigint DEFAULT 3,
    mail_server text,
    mail_port bigint DEFAULT 587,
    mail_use_tls bigint DEFAULT 1,
    mail_use_ssl bigint DEFAULT 0,
    mail_username text,
    mail_password text,
    mail_default_sender text,
    mail_timeout bigint DEFAULT 3,
    close_print_mode text DEFAULT 'choice'::text,
    auto_email_order_accepted bigint DEFAULT 1,
    auto_email_status_update bigint DEFAULT 1,
    auto_email_order_ready bigint DEFAULT 1,
    auto_email_order_closed bigint DEFAULT 1,
    sms_enabled bigint DEFAULT 0,
    telegram_enabled bigint DEFAULT 0,
    signature_name text,
    signature_position text,
    director_email text,
    auto_email_director_order_accepted bigint DEFAULT 1,
    auto_email_director_order_closed bigint DEFAULT 1,
    bank_name text,
    bik text,
    checking_account text,
    corr_account text,
    kpp text,
    ogrnip text,
    legal_address text,
    director_title text,
    director_name text,
    accountant_name text,
    signature_url text,
    stamp_url text,
    phone_prefix text,
    currency_symbol text
);


--
-- Name: general_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.general_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: general_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.general_settings_id_seq OWNED BY public.general_settings.id;


--
-- Name: inventory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inventory (
    id bigint NOT NULL,
    name text NOT NULL,
    inventory_date timestamp without time zone DEFAULT '2026-03-30'::date NOT NULL,
    status text DEFAULT 'draft'::text NOT NULL,
    notes text,
    created_by bigint,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    completed_at timestamp without time zone
);


--
-- Name: inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.inventory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.inventory_id_seq OWNED BY public.inventory.id;


--
-- Name: inventory_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inventory_items (
    id bigint NOT NULL,
    inventory_id bigint NOT NULL,
    part_id bigint NOT NULL,
    stock_quantity bigint DEFAULT 0 NOT NULL,
    actual_quantity bigint DEFAULT 0 NOT NULL,
    difference bigint DEFAULT 0 NOT NULL,
    notes text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: inventory_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.inventory_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: inventory_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.inventory_items_id_seq OWNED BY public.inventory_items.id;


--
-- Name: invoice_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invoice_items (
    id bigint NOT NULL,
    invoice_id bigint NOT NULL,
    line_type text DEFAULT 'service'::text NOT NULL,
    title text NOT NULL,
    qty double precision DEFAULT 1 NOT NULL,
    unit text DEFAULT 'шт'::text NOT NULL,
    price_cents integer DEFAULT 0 NOT NULL,
    sum_cents integer DEFAULT 0 NOT NULL,
    vat_label text DEFAULT 'Без НДС'::text NOT NULL,
    source_order_service_id bigint,
    source_order_part_id bigint,
    "position" integer DEFAULT 0 NOT NULL,
    catalog_part_id bigint,
    catalog_service_id bigint
);


--
-- Name: invoice_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.invoice_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: invoice_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.invoice_items_id_seq OWNED BY public.invoice_items.id;


--
-- Name: invoice_sequences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invoice_sequences (
    id bigint NOT NULL,
    doc_type text NOT NULL,
    year integer NOT NULL,
    last_number integer DEFAULT 0 NOT NULL
);


--
-- Name: invoice_sequences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.invoice_sequences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: invoice_sequences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.invoice_sequences_id_seq OWNED BY public.invoice_sequences.id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.invoices (
    id bigint NOT NULL,
    number integer NOT NULL,
    act_number integer,
    waybill_number integer,
    issued_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    due_date date,
    status text DEFAULT 'unpaid'::text NOT NULL,
    order_id bigint,
    customer_id bigint NOT NULL,
    buyer_kind text,
    buyer_name text,
    buyer_inn text,
    buyer_kpp text,
    buyer_ogrn text,
    buyer_address text,
    buyer_bank_name text,
    buyer_bik text,
    buyer_checking_account text,
    buyer_corr_account text,
    seller_snapshot text,
    subtotal_cents integer DEFAULT 0 NOT NULL,
    vat_mode text DEFAULT 'none'::text NOT NULL,
    total_cents integer DEFAULT 0 NOT NULL,
    comment text,
    paid_at timestamp without time zone,
    paid_by_user_id bigint,
    payment_id bigint,
    created_by bigint,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_deleted integer DEFAULT 0 NOT NULL,
    shop_sale_id bigint
);


--
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;


--
-- Name: managers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.managers (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    salary_rule_type text,
    salary_rule_value double precision,
    active bigint DEFAULT 1,
    comment text,
    updated_at timestamp without time zone,
    user_id bigint,
    salary_percent_services double precision,
    salary_percent_parts double precision,
    salary_percent_shop_parts double precision,
    branch_id integer
);


--
-- Name: managers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.managers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: managers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.managers_id_seq OWNED BY public.managers.id;


--
-- Name: masters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.masters (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    salary_rule_type text,
    salary_rule_value double precision,
    active bigint DEFAULT 1,
    comment text,
    updated_at timestamp without time zone,
    user_id bigint,
    salary_percent_services double precision,
    salary_percent_parts double precision,
    salary_percent_shop_parts double precision,
    branch_id integer
);


--
-- Name: masters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.masters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: masters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.masters_id_seq OWNED BY public.masters.id;


--
-- Name: notification_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_preferences (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    notification_type text NOT NULL,
    enabled bigint DEFAULT 1,
    email_enabled bigint DEFAULT 1,
    push_enabled bigint DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: notification_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_preferences_id_seq OWNED BY public.notification_preferences.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    type text NOT NULL,
    title text NOT NULL,
    message text NOT NULL,
    entity_type text,
    entity_id bigint,
    read_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: order_appearance_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_appearance_tags (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    appearance_tag_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_appearance_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_appearance_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_appearance_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_appearance_tags_id_seq OWNED BY public.order_appearance_tags.id;


--
-- Name: order_client_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_client_files (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    filename text NOT NULL,
    file_path text NOT NULL,
    file_size integer NOT NULL,
    mime_type text NOT NULL,
    created_by integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_client_files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_client_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_client_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_client_files_id_seq OWNED BY public.order_client_files.id;


--
-- Name: order_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_comments (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    author_type text DEFAULT 'manager'::text NOT NULL,
    author_id bigint,
    author_name text,
    comment_text text NOT NULL,
    is_internal bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    user_id bigint,
    mentions text
);


--
-- Name: order_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_comments_id_seq OWNED BY public.order_comments.id;


--
-- Name: order_customer_emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_customer_emails (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    customer_id bigint,
    recipient_email text NOT NULL,
    template_type text NOT NULL,
    subject text DEFAULT ''::text NOT NULL,
    status_name text,
    success bigint DEFAULT 0 NOT NULL,
    error_message text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_customer_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_customer_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_customer_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_customer_emails_id_seq OWNED BY public.order_customer_emails.id;


--
-- Name: order_diagnostics_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_diagnostics_history (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    body text NOT NULL,
    created_by integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_diagnostics_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_diagnostics_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_diagnostics_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_diagnostics_history_id_seq OWNED BY public.order_diagnostics_history.id;


--
-- Name: order_models; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_models (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    device_type_id bigint,
    device_brand_id bigint
);


--
-- Name: order_models_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_models_id_seq OWNED BY public.order_models.id;


--
-- Name: order_parts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_parts (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    part_id bigint,
    name text,
    quantity bigint DEFAULT 1 NOT NULL,
    price numeric DEFAULT 0.00 NOT NULL,
    purchase_price numeric,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    base_price numeric,
    discount_type text,
    discount_value double precision,
    warranty_days bigint,
    executor_id bigint
);


--
-- Name: order_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_parts_id_seq OWNED BY public.order_parts.id;


--
-- Name: order_pins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_pins (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_pins_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_pins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_pins_id_seq OWNED BY public.order_pins.id;


--
-- Name: order_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_services (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    service_id bigint,
    name text,
    quantity bigint DEFAULT 1,
    price numeric NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    base_price numeric,
    cost_price numeric,
    discount_type text,
    discount_value double precision,
    warranty_days bigint,
    executor_id bigint
);


--
-- Name: order_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_services_id_seq OWNED BY public.order_services.id;


--
-- Name: order_status_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_status_history (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    old_status_id bigint,
    new_status_id bigint NOT NULL,
    changed_by bigint,
    changed_by_username text,
    comment text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_status_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_status_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_status_history_id_seq OWNED BY public.order_status_history.id;


--
-- Name: order_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_statuses (
    id bigint NOT NULL,
    code text NOT NULL,
    name text NOT NULL,
    color text DEFAULT '#007bff'::text NOT NULL,
    is_default bigint DEFAULT 0,
    sort_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    group_name text,
    triggers_payment_modal bigint DEFAULT 0,
    accrues_salary bigint DEFAULT 0,
    is_archived bigint DEFAULT 0,
    is_final bigint DEFAULT 0,
    blocks_edit bigint DEFAULT 0,
    requires_warranty bigint DEFAULT 0,
    requires_comment bigint DEFAULT 0,
    client_name text,
    client_description text,
    salary_rule_type text,
    salary_rule_value double precision
);


--
-- Name: order_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_statuses_id_seq OWNED BY public.order_statuses.id;


--
-- Name: order_symptoms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_symptoms (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    symptom_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_symptoms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_symptoms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_symptoms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_symptoms_id_seq OWNED BY public.order_symptoms.id;


--
-- Name: order_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_templates (
    id bigint NOT NULL,
    name text NOT NULL,
    description text,
    template_data text NOT NULL,
    created_by bigint NOT NULL,
    is_public bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: order_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_templates_id_seq OWNED BY public.order_templates.id;


--
-- Name: order_visibility_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_visibility_history (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    hidden bigint NOT NULL,
    changed_by text,
    changed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    reason text
);


--
-- Name: order_visibility_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order_visibility_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order_visibility_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order_visibility_history_id_seq OWNED BY public.order_visibility_history.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_id text NOT NULL,
    device_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    manager_id bigint NOT NULL,
    master_id bigint,
    status text DEFAULT 'new'::text,
    prepayment text DEFAULT '0'::text NOT NULL,
    estimated_cost text DEFAULT '0'::text,
    password text,
    appearance text,
    comment text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    symptom_tags text,
    intake_checklist text,
    status_id bigint,
    hidden bigint DEFAULT 1,
    model text,
    model_id bigint,
    prepayment_cents bigint DEFAULT 0 NOT NULL,
    is_deleted bigint DEFAULT 0 NOT NULL,
    deleted_at timestamp without time zone,
    deleted_by_id bigint,
    deleted_reason text,
    diagnostics text,
    branch_id integer
);


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: part_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.part_categories (
    id bigint NOT NULL,
    name text NOT NULL,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    parent_id bigint
);


--
-- Name: part_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.part_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: part_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.part_categories_id_seq OWNED BY public.part_categories.id;


--
-- Name: parts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.parts (
    id bigint NOT NULL,
    name text NOT NULL,
    part_number text,
    description text,
    price numeric DEFAULT 0.00 NOT NULL,
    stock_quantity bigint DEFAULT 0 NOT NULL,
    min_quantity bigint DEFAULT 0 NOT NULL,
    category text,
    supplier text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    purchase_price numeric DEFAULT 0.00,
    unit text DEFAULT 'шт'::text,
    warranty_days bigint,
    is_deleted bigint DEFAULT 0,
    comment text,
    category_id bigint,
    salary_rule_type text,
    salary_rule_value double precision
);


--
-- Name: parts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.parts_id_seq OWNED BY public.parts.id;


--
-- Name: payment_receipts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_receipts (
    id bigint NOT NULL,
    payment_id bigint NOT NULL,
    receipt_type text NOT NULL,
    status text DEFAULT 'manual'::text NOT NULL,
    provider text,
    provider_receipt_id text,
    payload text,
    response text,
    error text,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    printed_at timestamp without time zone
);


--
-- Name: payment_receipts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payment_receipts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payment_receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payment_receipts_id_seq OWNED BY public.payment_receipts.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payments (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    amount numeric NOT NULL,
    payment_type text NOT NULL,
    payment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by bigint,
    created_by_username text,
    comment text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_cancelled bigint DEFAULT 0,
    cancelled_at text,
    cancelled_reason text,
    cancelled_by_id bigint,
    cancelled_by_username text,
    kind text DEFAULT 'payment'::text NOT NULL,
    status text DEFAULT 'captured'::text NOT NULL,
    idempotency_key text,
    external_provider text,
    external_payment_id text,
    captured_at text,
    refunded_of_id bigint,
    invoice_id bigint
);


--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name text NOT NULL,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: print_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.print_templates (
    id bigint NOT NULL,
    name text NOT NULL,
    template_type text DEFAULT 'customer'::text NOT NULL,
    html_content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    branch_id integer
);


--
-- Name: print_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.print_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: print_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.print_templates_id_seq OWNED BY public.print_templates.id;


--
-- Name: purchase_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchase_items (
    id bigint NOT NULL,
    purchase_id bigint NOT NULL,
    part_id bigint NOT NULL,
    quantity bigint DEFAULT 1 NOT NULL,
    purchase_price numeric NOT NULL,
    total_price numeric NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: purchase_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.purchase_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: purchase_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.purchase_items_id_seq OWNED BY public.purchase_items.id;


--
-- Name: purchases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchases (
    id bigint NOT NULL,
    supplier_id bigint,
    supplier_name text,
    purchase_date timestamp without time zone NOT NULL,
    total_amount numeric DEFAULT 0.00,
    status text DEFAULT 'draft'::text NOT NULL,
    notes text,
    created_by bigint,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.purchases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.purchases_id_seq OWNED BY public.purchases.id;


--
-- Name: role_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.role_permissions (
    role text NOT NULL,
    permission_id bigint NOT NULL
);


--
-- Name: salary_accruals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.salary_accruals (
    id bigint NOT NULL,
    order_id bigint,
    shop_sale_id bigint,
    user_id bigint NOT NULL,
    role text NOT NULL,
    amount_cents bigint NOT NULL,
    base_amount_cents bigint NOT NULL,
    profit_cents bigint NOT NULL,
    rule_type text NOT NULL,
    rule_value double precision NOT NULL,
    calculated_from text NOT NULL,
    calculated_from_id bigint,
    service_id bigint,
    part_id bigint,
    vat_included bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: salary_accruals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.salary_accruals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salary_accruals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.salary_accruals_id_seq OWNED BY public.salary_accruals.id;


--
-- Name: salary_bonuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.salary_bonuses (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    role text NOT NULL,
    amount_cents bigint NOT NULL,
    reason text,
    order_id bigint,
    bonus_date timestamp without time zone NOT NULL,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: salary_bonuses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.salary_bonuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salary_bonuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.salary_bonuses_id_seq OWNED BY public.salary_bonuses.id;


--
-- Name: salary_fines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.salary_fines (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    role text NOT NULL,
    amount_cents bigint NOT NULL,
    reason text NOT NULL,
    order_id bigint,
    fine_date timestamp without time zone NOT NULL,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: salary_fines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.salary_fines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salary_fines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.salary_fines_id_seq OWNED BY public.salary_fines.id;


--
-- Name: salary_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.salary_payments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    role text NOT NULL,
    amount_cents bigint NOT NULL,
    payment_date timestamp without time zone NOT NULL,
    period_start timestamp without time zone,
    period_end timestamp without time zone,
    payment_type text DEFAULT 'salary'::text,
    comment text,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    cash_transaction_id bigint
);


--
-- Name: salary_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.salary_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salary_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.salary_payments_id_seq OWNED BY public.salary_payments.id;


--
-- Name: schema_migrations_pg; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations_pg (
    version text NOT NULL,
    name text NOT NULL,
    applied_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id bigint NOT NULL,
    name text NOT NULL,
    price numeric DEFAULT 0.00 NOT NULL,
    is_default bigint DEFAULT 0,
    sort_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    salary_rule_type text,
    salary_rule_value double precision
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: shop_sale_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shop_sale_items (
    id bigint NOT NULL,
    shop_sale_id bigint NOT NULL,
    item_type text NOT NULL,
    service_id bigint,
    service_name text,
    part_id bigint,
    part_name text,
    part_sku text,
    quantity bigint DEFAULT 1 NOT NULL,
    price double precision NOT NULL,
    purchase_price double precision DEFAULT 0,
    total double precision NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: shop_sale_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shop_sale_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shop_sale_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shop_sale_items_id_seq OWNED BY public.shop_sale_items.id;


--
-- Name: shop_sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shop_sales (
    id bigint NOT NULL,
    customer_id bigint,
    customer_name text,
    customer_phone text,
    manager_id bigint,
    master_id bigint,
    total_amount double precision DEFAULT 0 NOT NULL,
    discount double precision DEFAULT 0,
    final_amount double precision DEFAULT 0 NOT NULL,
    paid_amount double precision DEFAULT 0,
    payment_method text DEFAULT 'cash'::text,
    comment text,
    sale_date timestamp without time zone DEFAULT '2026-03-30'::date NOT NULL,
    created_by_id bigint,
    created_by_username text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    order_id bigint
);


--
-- Name: shop_sales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shop_sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shop_sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shop_sales_id_seq OWNED BY public.shop_sales.id;


--
-- Name: staff_chat_attachments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staff_chat_attachments (
    id bigint NOT NULL,
    message_id bigint NOT NULL,
    original_name text NOT NULL,
    stored_name text NOT NULL,
    mime_type text,
    size_bytes bigint NOT NULL,
    file_path text NOT NULL,
    is_image smallint DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT staff_chat_attachments_size_bytes_check CHECK ((size_bytes >= 0))
);


--
-- Name: staff_chat_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staff_chat_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: staff_chat_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.staff_chat_attachments_id_seq OWNED BY public.staff_chat_attachments.id;


--
-- Name: staff_chat_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staff_chat_messages (
    id bigint NOT NULL,
    room_key text DEFAULT 'global'::text NOT NULL,
    user_id bigint,
    username text NOT NULL,
    actor_display_name text,
    client_instance_id text,
    message_text text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    edited_at timestamp without time zone,
    deleted_at timestamp without time zone
);


--
-- Name: staff_chat_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staff_chat_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: staff_chat_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.staff_chat_messages_id_seq OWNED BY public.staff_chat_messages.id;


--
-- Name: staff_chat_reactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staff_chat_reactions (
    id bigint NOT NULL,
    message_id bigint NOT NULL,
    user_id bigint,
    username text NOT NULL,
    actor_display_name text DEFAULT ''::text NOT NULL,
    client_instance_id text DEFAULT ''::text NOT NULL,
    emoji text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: staff_chat_reactions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staff_chat_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: staff_chat_reactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.staff_chat_reactions_id_seq OWNED BY public.staff_chat_reactions.id;


--
-- Name: staff_chat_read_cursors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staff_chat_read_cursors (
    id bigint NOT NULL,
    room_key text DEFAULT 'global'::text NOT NULL,
    user_id bigint NOT NULL,
    username text DEFAULT ''::text NOT NULL,
    actor_display_name text DEFAULT ''::text NOT NULL,
    client_instance_id text DEFAULT ''::text NOT NULL,
    last_read_message_id bigint DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: staff_chat_read_cursors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staff_chat_read_cursors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: staff_chat_read_cursors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.staff_chat_read_cursors_id_seq OWNED BY public.staff_chat_read_cursors.id;


--
-- Name: staff_chat_web_push_subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.staff_chat_web_push_subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    endpoint text NOT NULL,
    p256dh text NOT NULL,
    auth text NOT NULL,
    user_agent text DEFAULT ''::text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: staff_chat_web_push_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.staff_chat_web_push_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: staff_chat_web_push_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.staff_chat_web_push_subscriptions_id_seq OWNED BY public.staff_chat_web_push_subscriptions.id;


--
-- Name: stock_movements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_movements (
    id bigint NOT NULL,
    part_id bigint NOT NULL,
    movement_type text NOT NULL,
    quantity bigint NOT NULL,
    reference_id bigint,
    reference_type text,
    created_by bigint,
    notes text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: stock_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stock_movements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stock_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stock_movements_id_seq OWNED BY public.stock_movements.id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suppliers (
    id bigint NOT NULL,
    name text NOT NULL,
    contact_person text,
    phone text,
    email text,
    address text,
    inn text,
    comment text,
    is_active bigint DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- Name: symptoms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.symptoms (
    id bigint NOT NULL,
    name text NOT NULL,
    sort_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: symptoms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.symptoms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: symptoms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.symptoms_id_seq OWNED BY public.symptoms.id;


--
-- Name: system_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.system_settings (
    id bigint NOT NULL,
    key text NOT NULL,
    value text,
    description text,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: system_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.system_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.system_settings_id_seq OWNED BY public.system_settings.id;


--
-- Name: task_checklists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.task_checklists (
    id bigint NOT NULL,
    task_id bigint NOT NULL,
    item_text text NOT NULL,
    is_completed bigint DEFAULT 0,
    item_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: task_checklists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.task_checklists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: task_checklists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.task_checklists_id_seq OWNED BY public.task_checklists.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    order_id bigint,
    title text NOT NULL,
    description text,
    assigned_to bigint,
    created_by bigint NOT NULL,
    deadline timestamp without time zone,
    priority text DEFAULT 'medium'::text,
    status text DEFAULT 'todo'::text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    completed_at timestamp without time zone
);


--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: transaction_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transaction_categories (
    id bigint NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    description text,
    color text DEFAULT '#6c757d'::text,
    is_system bigint DEFAULT 0,
    is_active bigint DEFAULT 1,
    sort_order bigint DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: transaction_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.transaction_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: transaction_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.transaction_categories_id_seq OWNED BY public.transaction_categories.id;


--
-- Name: user_role_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_role_history (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    changed_by bigint,
    changed_by_username text,
    old_role text,
    new_role text,
    old_permission_ids text,
    new_permission_ids text,
    change_type text NOT NULL,
    comment text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: user_role_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_role_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_role_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_role_history_id_seq OWNED BY public.user_role_history.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username text NOT NULL,
    password_hash text NOT NULL,
    role text DEFAULT 'viewer'::text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_login timestamp without time zone,
    is_active bigint DEFAULT 1,
    display_name text,
    branch_id integer
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: warehouse_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.warehouse_logs (
    id bigint NOT NULL,
    operation_type text NOT NULL,
    part_id bigint,
    part_name text,
    part_number text,
    user_id bigint,
    username text,
    quantity bigint,
    old_value text,
    new_value text,
    notes text,
    ip_address text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    category_id bigint
);


--
-- Name: warehouse_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.warehouse_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: warehouse_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.warehouse_logs_id_seq OWNED BY public.warehouse_logs.id;


--
-- Name: action_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.action_logs ALTER COLUMN id SET DEFAULT nextval('public.action_logs_id_seq'::regclass);


--
-- Name: appearance_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appearance_tags ALTER COLUMN id SET DEFAULT nextval('public.appearance_tags_id_seq'::regclass);


--
-- Name: branches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branches ALTER COLUMN id SET DEFAULT nextval('public.branches_id_seq'::regclass);


--
-- Name: cash_transactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cash_transactions ALTER COLUMN id SET DEFAULT nextval('public.cash_transactions_id_seq'::regclass);


--
-- Name: comment_attachments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_attachments ALTER COLUMN id SET DEFAULT nextval('public.comment_attachments_id_seq'::regclass);


--
-- Name: customer_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_tokens ALTER COLUMN id SET DEFAULT nextval('public.customer_tokens_id_seq'::regclass);


--
-- Name: customer_wallet_transactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_wallet_transactions ALTER COLUMN id SET DEFAULT nextval('public.customer_wallet_transactions_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: demo_visitor_events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo_visitor_events ALTER COLUMN id SET DEFAULT nextval('public.demo_visitor_events_id_seq'::regclass);


--
-- Name: device_brands id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.device_brands ALTER COLUMN id SET DEFAULT nextval('public.device_brands_id_seq'::regclass);


--
-- Name: device_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.device_types ALTER COLUMN id SET DEFAULT nextval('public.device_types_id_seq'::regclass);


--
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- Name: diagnostics_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnostics_templates ALTER COLUMN id SET DEFAULT nextval('public.diagnostics_templates_id_seq'::regclass);


--
-- Name: general_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.general_settings ALTER COLUMN id SET DEFAULT nextval('public.general_settings_id_seq'::regclass);


--
-- Name: inventory id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory ALTER COLUMN id SET DEFAULT nextval('public.inventory_id_seq'::regclass);


--
-- Name: inventory_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_items ALTER COLUMN id SET DEFAULT nextval('public.inventory_items_id_seq'::regclass);


--
-- Name: invoice_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_items ALTER COLUMN id SET DEFAULT nextval('public.invoice_items_id_seq'::regclass);


--
-- Name: invoice_sequences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_sequences ALTER COLUMN id SET DEFAULT nextval('public.invoice_sequences_id_seq'::regclass);


--
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- Name: managers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managers ALTER COLUMN id SET DEFAULT nextval('public.managers_id_seq'::regclass);


--
-- Name: masters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.masters ALTER COLUMN id SET DEFAULT nextval('public.masters_id_seq'::regclass);


--
-- Name: notification_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_preferences ALTER COLUMN id SET DEFAULT nextval('public.notification_preferences_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: order_appearance_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_appearance_tags ALTER COLUMN id SET DEFAULT nextval('public.order_appearance_tags_id_seq'::regclass);


--
-- Name: order_client_files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_client_files ALTER COLUMN id SET DEFAULT nextval('public.order_client_files_id_seq'::regclass);


--
-- Name: order_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_comments ALTER COLUMN id SET DEFAULT nextval('public.order_comments_id_seq'::regclass);


--
-- Name: order_customer_emails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_customer_emails ALTER COLUMN id SET DEFAULT nextval('public.order_customer_emails_id_seq'::regclass);


--
-- Name: order_diagnostics_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_diagnostics_history ALTER COLUMN id SET DEFAULT nextval('public.order_diagnostics_history_id_seq'::regclass);


--
-- Name: order_models id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_models ALTER COLUMN id SET DEFAULT nextval('public.order_models_id_seq'::regclass);


--
-- Name: order_parts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_parts ALTER COLUMN id SET DEFAULT nextval('public.order_parts_id_seq'::regclass);


--
-- Name: order_pins id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_pins ALTER COLUMN id SET DEFAULT nextval('public.order_pins_id_seq'::regclass);


--
-- Name: order_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_services ALTER COLUMN id SET DEFAULT nextval('public.order_services_id_seq'::regclass);


--
-- Name: order_status_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_status_history ALTER COLUMN id SET DEFAULT nextval('public.order_status_history_id_seq'::regclass);


--
-- Name: order_statuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_statuses ALTER COLUMN id SET DEFAULT nextval('public.order_statuses_id_seq'::regclass);


--
-- Name: order_symptoms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_symptoms ALTER COLUMN id SET DEFAULT nextval('public.order_symptoms_id_seq'::regclass);


--
-- Name: order_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_templates ALTER COLUMN id SET DEFAULT nextval('public.order_templates_id_seq'::regclass);


--
-- Name: order_visibility_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_visibility_history ALTER COLUMN id SET DEFAULT nextval('public.order_visibility_history_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: part_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.part_categories ALTER COLUMN id SET DEFAULT nextval('public.part_categories_id_seq'::regclass);


--
-- Name: parts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.parts ALTER COLUMN id SET DEFAULT nextval('public.parts_id_seq'::regclass);


--
-- Name: payment_receipts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_receipts ALTER COLUMN id SET DEFAULT nextval('public.payment_receipts_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: print_templates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.print_templates ALTER COLUMN id SET DEFAULT nextval('public.print_templates_id_seq'::regclass);


--
-- Name: purchase_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_items ALTER COLUMN id SET DEFAULT nextval('public.purchase_items_id_seq'::regclass);


--
-- Name: purchases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchases ALTER COLUMN id SET DEFAULT nextval('public.purchases_id_seq'::regclass);


--
-- Name: salary_accruals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_accruals ALTER COLUMN id SET DEFAULT nextval('public.salary_accruals_id_seq'::regclass);


--
-- Name: salary_bonuses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_bonuses ALTER COLUMN id SET DEFAULT nextval('public.salary_bonuses_id_seq'::regclass);


--
-- Name: salary_fines id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_fines ALTER COLUMN id SET DEFAULT nextval('public.salary_fines_id_seq'::regclass);


--
-- Name: salary_payments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_payments ALTER COLUMN id SET DEFAULT nextval('public.salary_payments_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: shop_sale_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_sale_items ALTER COLUMN id SET DEFAULT nextval('public.shop_sale_items_id_seq'::regclass);


--
-- Name: shop_sales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_sales ALTER COLUMN id SET DEFAULT nextval('public.shop_sales_id_seq'::regclass);


--
-- Name: staff_chat_attachments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_attachments ALTER COLUMN id SET DEFAULT nextval('public.staff_chat_attachments_id_seq'::regclass);


--
-- Name: staff_chat_messages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_messages ALTER COLUMN id SET DEFAULT nextval('public.staff_chat_messages_id_seq'::regclass);


--
-- Name: staff_chat_reactions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_reactions ALTER COLUMN id SET DEFAULT nextval('public.staff_chat_reactions_id_seq'::regclass);


--
-- Name: staff_chat_read_cursors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_read_cursors ALTER COLUMN id SET DEFAULT nextval('public.staff_chat_read_cursors_id_seq'::regclass);


--
-- Name: staff_chat_web_push_subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_web_push_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.staff_chat_web_push_subscriptions_id_seq'::regclass);


--
-- Name: stock_movements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements ALTER COLUMN id SET DEFAULT nextval('public.stock_movements_id_seq'::regclass);


--
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- Name: symptoms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.symptoms ALTER COLUMN id SET DEFAULT nextval('public.symptoms_id_seq'::regclass);


--
-- Name: system_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_settings ALTER COLUMN id SET DEFAULT nextval('public.system_settings_id_seq'::regclass);


--
-- Name: task_checklists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_checklists ALTER COLUMN id SET DEFAULT nextval('public.task_checklists_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Name: transaction_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transaction_categories ALTER COLUMN id SET DEFAULT nextval('public.transaction_categories_id_seq'::regclass);


--
-- Name: user_role_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_role_history ALTER COLUMN id SET DEFAULT nextval('public.user_role_history_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: warehouse_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.warehouse_logs ALTER COLUMN id SET DEFAULT nextval('public.warehouse_logs_id_seq'::regclass);


--
-- Data for Name: action_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.action_logs (id, user_id, username, action_type, entity_type, entity_id, old_values, new_values, details, ip_address, user_agent, created_at) FROM stdin;
1038	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:04:21
1039	\N	\N	login_failed	staff_auth	\N	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "description": "\\u041d\\u0435\\u0443\\u0434\\u0430\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***)"}	\N	\N	2026-09-11 20:15:26
1040	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:15:39
1041	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:15:53
1042	\N	\N	login_failed	staff_auth	\N	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "description": "\\u041d\\u0435\\u0443\\u0434\\u0430\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***)"}	\N	\N	2026-09-11 20:17:01
1043	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:17:45
1044	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:22:13
1045	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:28:52
1046	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 2, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #2"}	\N	\N	2026-09-11 20:29:02
1047	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:30:14
1048	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:42:05
1049	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-11 20:42:20
1050	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 15:59:40
1051	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 21:28:47
1052	10	forsale001@mail.ru	create	customer_portal_password	8	\N	\N	{"customer_id": 8, "customer_name": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410", "customer_phone": "79041970171", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410"}	\N	\N	2026-09-13 21:38:54
1053	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-13 21:38:54
1054	10	forsale001@mail.ru	create	device	8	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-13 21:38:54
1055	10	\N	create	order	4	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "5d229046-4408-4727-9d6e-b8e98f2fdeec", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-13 21:38:54
1056	10	\N	create	customer	8	\N	\N	{"name": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410", "phone": "79041970171", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-13 21:38:54
1057	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:38:54
1058	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-13 21:38:54
1059	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-13 21:38:54
1060	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 21:43:02
1061	8	ProfiService	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-13 21:43:40
1062	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:43:40
1063	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-13 21:43:40
1064	8	ProfiService	update	order	4	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043d\\u0438\\u0436\\u043d\\u0435\\u0439 \\u043f\\u043b\\u0430\\u0442\\u044b, \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0446\\u0435\\u043f\\u0435\\u0439 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-13 21:44:26
1065	8	ProfiService	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 7, "new_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430"}}	\N	\N	2026-09-13 21:45:01
1066	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:45:01
1067	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-13 21:45:01
1068	8	ProfiService	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 7, "old_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430", "new_id": 4, "new_name": "\\u0416\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u044c"}}	\N	\N	2026-09-13 21:45:21
1069	\N	Admin	create	comment	1	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 4, "\\u0410\\u0432\\u0442\\u043e\\u0440": "Admin", "\\u0422\\u0435\\u043a\\u0441\\u0442": "\\u0421\\u043c\\u0435\\u043d\\u0430 \\u0441\\u0442\\u0430\\u0442\\u0443\\u0441\\u0430: \\u0417\\u0430\\u043a\\u0430\\u0437\\u0430\\u043d\\u044b \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u0438", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u043a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u043a \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #4"}	\N	\N	2026-09-13 21:45:21
1070	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:45:21
1071	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:45:21
1072	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-13 21:45:21
1073	8	ProfiService	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 4, "old_name": "\\u0416\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u044c", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-13 21:45:34
1074	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-13 21:45:34
1075	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-13 21:45:34
1076	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 21:46:19
1077	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 23:21:49
1078	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-13 23:23:00
1079	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 2, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-13 23:23:00
1080	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-13 23:23:00
1081	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 23:45:08
1082	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 23:55:28
1083	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 2, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #2"}	\N	\N	2026-09-13 23:55:51
1481	10	\N	create	customer	20	\N	\N	{"name": "\\u0412\\u0415\\u0420\\u0428\\u0418\\u041d\\u0418\\u041d", "phone": "79278163040", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:58:09
1084	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-13 23:56:17
1085	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 00:10:30
1086	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 00:45:48
1087	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 00:47:45
1088	8	ProfiService	update	customer	8	\N	\N	{"field": "customer_data", "changes": {"email": {"old": "", "new": null}}}	\N	\N	2026-09-14 00:47:45
1089	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 00:47:45
1090	8	ProfiService	update	order	4	\N	\N	{"appearance": {"old": "\\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442, \\u0411\\u044b\\u0432\\u0448\\u0438\\u0439 \\u0432 \\u0443\\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u043b\\u0435\\u043d\\u0438\\u0438, \\u0421\\u043b\\u0435\\u0434\\u044b \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0430\\u0446\\u0438\\u0438, \\u041c\\u0435\\u043b\\u043a\\u0438\\u0435 \\u0446\\u0430\\u0440\\u0430\\u043f\\u0438\\u043d\\u044b, \\u041f\\u043e\\u0442\\u0435\\u0440\\u0442\\u043e\\u0441\\u0442\\u0438", "new": "\\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442, \\u0411\\u044b\\u0432\\u0448\\u0438\\u0439 \\u0432 \\u0443\\u043f\\u043e\\u0442\\u0440\\u0435\\u0431\\u043b\\u0435\\u043d\\u0438\\u0438, \\u0421\\u043b\\u0435\\u0434\\u044b \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0430\\u0446\\u0438\\u0438, \\u041c\\u0435\\u043b\\u043a\\u0438\\u0435 \\u0446\\u0430\\u0440\\u0430\\u043f\\u0438\\u043d\\u044b, \\u041f\\u043e\\u0442\\u0435\\u0440\\u0442\\u043e\\u0441\\u0442\\u0438, \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438"}}	\N	\N	2026-09-14 00:47:45
1091	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 00:47:45
1092	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 00:47:45
1093	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 00:47:45
1094	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 00:54:58
1095	10	forsale001@mail.ru	create	cash_transaction	10	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #4 (\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412 \\u0410 \\u0410)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 3500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:04:15
1096	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:04:15
1097	10	forsale001@mail.ru	create	payment	7	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 4, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #4: 3500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 01:04:15
1098	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:04:15
1099	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:04:15
1100	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:13:17
1101	10	forsale001@mail.ru	create	cash_transaction	11	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "1018.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #4", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 1018.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:13:17
1102	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:13:17
1103	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:13:17
1104	10	forsale001@mail.ru	add_service	order	4	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 3500.0, "price": 3500.0}	\N	\N	2026-09-14 01:13:17
1105	10	forsale001@mail.ru	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:13:48
1106	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:13:48
1107	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:13:48
1108	10	forsale001@mail.ru	update	order	4	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 01:14:01
1109	\N	system	create	salary_accrual	4	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1241.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 4, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #4"}	\N	\N	2026-09-14 01:14:01
1110	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:14:01
1111	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:14:01
1112	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 01:14:45
1113	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 01:28:40
1114	10	forsale001@mail.ru	create	customer_portal_password	9	\N	\N	{"customer_id": 9, "customer_name": "\\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f", "customer_phone": "79170571178", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f"}	\N	\N	2026-09-14 01:31:12
1115	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:31:12
1116	10	forsale001@mail.ru	create	device	9	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Xiaomi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:31:12
1117	10	\N	create	order	5	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "7877c901-f465-4370-a0f0-ec9ba3d4b8a9", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-14 01:31:12
1118	10	\N	create	customer	9	\N	\N	{"name": "\\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f", "phone": "79170571178", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:31:12
1119	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:31:12
1120	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:31:12
1121	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:31:12
1122	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:31:47
1123	10	forsale001@mail.ru	update	customer	9	\N	\N	{"field": "customer_data", "changes": {"email": {"old": "", "new": null}}}	\N	\N	2026-09-14 01:31:47
1124	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:31:47
1159	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:35:21
1125	10	forsale001@mail.ru	update	order	5	\N	\N	{"symptom_tags": {"old": "\\u041d\\u0435\\u0442 \\u0438\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f, \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438", "new": "\\u041d\\u0435\\u0442 \\u0438\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f, \\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438, \\u041d\\u0435 \\u0432\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f"}}	\N	\N	2026-09-14 01:31:47
1126	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:31:47
1127	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:31:47
1128	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:31:47
1129	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 01:31:52
1130	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:31:52
1131	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:31:52
1133	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:32:47
1134	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:32:47
1135	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:32:47
1136	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 01:32:58
1137	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:32:58
1138	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:32:58
1139	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:33:33
1145	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:33:47
1146	10	forsale001@mail.ru	create	payment	8	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 5, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #5: 3000.00 \\u0440\\u0443\\u0431 (cash)"}	\N	\N	2026-09-14 01:33:47
1147	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:33:47
1148	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:33:47
1132	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u041f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0432\\u043b\\u0430\\u0433\\u0438, \\u043d\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 01:32:47
1140	10	forsale001@mail.ru	add_service	order	5	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f \\u0432\\u043b\\u0430\\u0433\\u0438", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f \\u0432\\u043b\\u0430\\u0433\\u0438", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 3000.0, "price": 3000.0}	\N	\N	2026-09-14 01:33:33
1141	10	forsale001@mail.ru	create	cash_transaction	12	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #5 (\\u0422\\u041a\\u0410\\u0427\\u0415\\u041d\\u041a\\u041e \\u041f)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 3000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:33:47
1142	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:33:47
1143	10	forsale001@mail.ru	create	cash_transaction	13	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "990.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #5", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 990.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:33:47
1144	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:33:47
1149	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:33:52
1150	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:33:52
1151	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:33:52
1152	10	forsale001@mail.ru	create	customer_portal_password	10	\N	\N	{"customer_id": 10, "customer_name": "\\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412", "customer_phone": "79084895018", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412"}	\N	\N	2026-09-14 01:35:21
1153	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:35:21
1154	10	forsale001@mail.ru	create	device	10	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Infinix", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:35:21
1155	10	\N	create	order	6	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "2be0c3cc-b7a1-4f1e-a66d-bfddc7dd51b0", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Infinix", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0410\\u0440\\u0442\\u0451\\u043c"}	\N	\N	2026-09-14 01:35:21
1156	10	\N	create	customer	10	\N	\N	{"name": "\\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412", "phone": "79084895018", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:35:21
1157	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:35:21
1158	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:35:21
1640	8	\N	create	customer	25	\N	\N	{"name": "\\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412", "phone": "79176141606", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:59:25
1160	10	forsale001@mail.ru	update	order	6	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 14, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0410\\u0440\\u0442\\u0451\\u043c\\u0430"}}	\N	\N	2026-09-14 01:35:29
1161	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:35:29
1162	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:35:30
1163	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:36:03
1169	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:36:13
1170	10	forsale001@mail.ru	create	payment	9	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 6, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2900.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #6: 2900.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 01:36:13
1171	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:36:13
1172	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:36:13
1173	10	forsale001@mail.ru	update	order	6	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 01:36:37
1180	10	\N	create	order	7	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "fa8f3dab-607e-4b6f-b8a5-4f810c707e13", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u042f\\u0426\\u0423\\u0428\\u041a\\u041e", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u041f\\u043e\\u0440\\u0442\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043a\\u043e\\u043b\\u043e\\u043d\\u043a\\u0430 -", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-14 01:43:26
1181	10	\N	create	customer	11	\N	\N	{"name": "\\u042f\\u0426\\u0423\\u0428\\u041a\\u041e", "phone": "79897738937", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:43:26
1182	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:43:26
1183	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:43:26
1184	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:43:26
1185	10	forsale001@mail.ru	update	order	7	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043c\\u0438\\u043a\\u0440\\u043e\\u0441\\u0445\\u0435\\u043c\\u044b \\u0443\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044f \\u0437\\u0432\\u0443\\u043a\\u0430", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 01:43:50
1192	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 01:44:24
1193	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:44:58
1195	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:44:59
1196	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:45:30
1198	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:45:43
1199	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:45:43
1200	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 01:46:40
1201	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:47:11
1223	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:51:36
1164	10	forsale001@mail.ru	add_service	order	6	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2900.0, "price": 2900.0}	\N	\N	2026-09-14 01:36:03
1165	10	forsale001@mail.ru	create	cash_transaction	14	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2900.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #6 (\\u0412\\u042f\\u0427\\u0415\\u0421\\u041b\\u0410\\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2900.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:36:13
1166	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:36:13
1167	10	forsale001@mail.ru	create	cash_transaction	15	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "910.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #6", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 910.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:36:13
1168	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:36:13
1174	10	forsale001@mail.ru	update	order	6	\N	\N	{"field": "status", "status": {"old_id": 14, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0410\\u0440\\u0442\\u0451\\u043c\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:36:37
1175	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:36:37
1176	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:36:37
1177	10	forsale001@mail.ru	create	customer_portal_password	11	\N	\N	{"customer_id": 11, "customer_name": "\\u042f\\u0426\\u0423\\u0428\\u041a\\u041e", "customer_phone": "79897738937", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u042f\\u0426\\u0423\\u0428\\u041a\\u041e"}	\N	\N	2026-09-14 01:43:26
1178	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:43:26
1179	10	forsale001@mail.ru	create	device	11	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u042f\\u0426\\u0423\\u0428\\u041a\\u041e", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u041f\\u043e\\u0440\\u0442\\u0430\\u0442\\u0438\\u0432\\u043d\\u0430\\u044f \\u043a\\u043e\\u043b\\u043e\\u043d\\u043a\\u0430", "\\u0411\\u0440\\u0435\\u043d\\u0434": "-", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:43:26
1186	10	forsale001@mail.ru	update	order	7	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 01:43:52
1187	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:43:52
1188	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:43:52
1189	10	forsale001@mail.ru	update	order	7	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:43:56
1190	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:43:56
1191	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:43:56
1194	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 2, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:44:58
1197	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 01:45:30
1688	8	ProfiService	update	order	23	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 16:05:07
1202	10	forsale001@mail.ru	add_service	order	7	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043c\\u0438\\u043a\\u0440\\u043e\\u0441\\u0445\\u0435\\u043c\\u044b \\u0443\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044f \\u0437\\u0432\\u0443\\u043a\\u0430", "name": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u043c\\u0438\\u043a\\u0440\\u043e\\u0441\\u0445\\u0435\\u043c\\u044b \\u0443\\u0441\\u0438\\u043b\\u0438\\u0442\\u0435\\u043b\\u044f \\u0437\\u0432\\u0443\\u043a\\u0430", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 3000.0, "price": 3000.0}	\N	\N	2026-09-14 01:47:11
1203	10	forsale001@mail.ru	create	cash_transaction	16	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #7 (\\u042f\\u0426\\u0423\\u0428\\u041a\\u041e)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 3000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:47:18
1204	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:47:18
1205	10	forsale001@mail.ru	create	payment	10	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 7, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #7: 3000.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 01:47:18
1206	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:47:18
1207	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:47:18
1208	10	forsale001@mail.ru	create	customer_portal_password	12	\N	\N	{"customer_id": 12, "customer_name": "\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410", "customer_phone": "79991940204", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410"}	\N	\N	2026-09-14 01:49:52
1209	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:49:52
1210	10	forsale001@mail.ru	create	device	12	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:49:52
1211	10	\N	create	order	8	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "d839a7f5-60ab-42f4-86da-1f0973f19160", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-14 01:49:52
1212	10	\N	create	customer	12	\N	\N	{"name": "\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410", "phone": "79991940204", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:49:52
1213	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:49:52
1214	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:49:52
1215	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:49:52
1216	10	forsale001@mail.ru	update	order	8	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\n\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f,", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 01:50:40
1217	10	forsale001@mail.ru	update	order	8	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 01:50:43
1218	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:50:43
1219	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:50:43
1220	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:51:31
1221	10	forsale001@mail.ru	add_service	order	8	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2400.0, "price": 2400.0}	\N	\N	2026-09-14 01:51:31
1222	10	forsale001@mail.ru	create	cash_transaction	17	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2400.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #8 (\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2400.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:51:36
1224	10	forsale001@mail.ru	create	cash_transaction	18	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "680.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #8", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 680.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:51:36
1225	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:51:36
1230	10	forsale001@mail.ru	update	order	8	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:51:41
1231	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:51:41
1232	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:51:41
1226	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:51:36
1227	10	forsale001@mail.ru	create	payment	11	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 8, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2400.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #8: 2400.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 01:51:36
1228	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:51:36
1229	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:51:36
1233	10	forsale001@mail.ru	create	customer_portal_password	13	\N	\N	{"customer_id": 13, "customer_name": "\\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412", "customer_phone": "79063945370", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412"}	\N	\N	2026-09-14 01:55:04
1234	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 01:55:04
1235	10	forsale001@mail.ru	create	device	13	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Apple", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:55:04
1236	10	\N	create	order	9	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "4dfcd210-284a-4aa4-b0de-eb1703c557f4", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Apple", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-14 01:55:04
1237	10	\N	create	customer	13	\N	\N	{"name": "\\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412", "phone": "79063945370", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 01:55:04
1238	10	forsale001@mail.ru	create	cash_transaction	19	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 3, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #9 (\\u0417\\u0410\\u0425\\u0410\\u0420\\u041e\\u0412). \\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 3000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 01:55:04
1239	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 01:55:04
1240	10	forsale001@mail.ru	create	payment	12	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 9, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "\\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #9: 3000.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 01:55:04
1241	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:55:04
1242	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:55:04
1243	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:55:04
1244	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 01:55:04
1245	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 01:55:04
1246	10	forsale001@mail.ru	update	order	9	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0410\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442 \\u0440\\u0435\\u0444", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 01:55:20
1247	10	forsale001@mail.ru	update	order	9	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-14 01:55:23
1248	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:55:23
1249	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:55:23
1250	10	forsale001@mail.ru	update	order	9	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 01:56:24
1251	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 01:56:24
1252	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 01:56:24
1253	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 01:59:01
1254	8	ProfiService	create	cash_transaction	20	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 4, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u043f\\u043e \\u043e\\u043f\\u043b\\u0430\\u0442\\u0435 #12. \\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0443", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 3000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:00:04
1255	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:00:04
1256	8	ProfiService	refund	payment	13	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 9, "ID \\u0438\\u0441\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": 12, "ID \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430": 13, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "\\u041f\\u0440\\u0438\\u0447\\u0438\\u043d\\u0430": "\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0443", "description": "\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 3000.00 \\u0440\\u0443\\u0431 \\u043f\\u043e \\u043e\\u043f\\u043b\\u0430\\u0442\\u0435 #12 (\\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 #9)"}	\N	\N	2026-09-14 02:00:04
1257	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:00:04
1258	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:00:04
1259	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:00:26
1260	10	forsale001@mail.ru	update	order	9	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 2, "new_name": "\\u0417\\u0430\\u043a\\u0440\\u044b\\u0442 \\u043d\\u0435\\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e"}}	\N	\N	2026-09-14 02:00:37
1261	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:00:37
1262	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:00:37
1263	10	forsale001@mail.ru	create	customer_portal_password	14	\N	\N	{"customer_id": 14, "customer_name": "\\u041c\\u041e\\u041c\\u041b\\u0415\\u0412", "customer_phone": "79997237404", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041c\\u041e\\u041c\\u041b\\u0415\\u0412"}	\N	\N	2026-09-14 02:02:44
1264	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 02:02:44
1265	10	forsale001@mail.ru	create	device	14	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u041e\\u041c\\u041b\\u0415\\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Tecno", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 02:02:44
1266	10	\N	create	order	10	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "23c8ce38-9b02-438c-996b-d3b429deeb33", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u041e\\u041c\\u041b\\u0415\\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Tecno", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-14 02:02:44
1267	10	\N	create	customer	14	\N	\N	{"name": "\\u041c\\u041e\\u041c\\u041b\\u0415\\u0412", "phone": "79997237404", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 02:02:44
1268	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:02:44
1269	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 02:02:44
1270	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:02:44
1271	10	forsale001@mail.ru	update	order	10	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 02:03:06
1272	10	forsale001@mail.ru	update	order	10	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 02:03:10
1273	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:03:10
1274	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:03:10
1275	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:03:29
1276	10	forsale001@mail.ru	add_service	order	10	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2500.0, "price": 2500.0}	\N	\N	2026-09-14 02:03:29
1277	10	forsale001@mail.ru	create	cash_transaction	21	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #10 (\\u041c\\u041e\\u041c\\u041b\\u0415\\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:03:37
1278	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:03:37
1279	10	forsale001@mail.ru	create	cash_transaction	22	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "982.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #10", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 982.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:03:37
1280	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:03:37
1285	10	forsale001@mail.ru	update	order	10	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 02:03:42
1286	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:03:42
1287	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:03:42
1281	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:03:37
1282	10	forsale001@mail.ru	create	payment	14	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 10, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #10: 2500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 02:03:37
1283	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:03:37
1284	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:03:37
1288	10	forsale001@mail.ru	create	customer_portal_password	15	\N	\N	{"customer_id": 15, "customer_name": "\\u041a\\u041e\\u0416\\u0410\\u0415\\u0412", "customer_phone": "79021252861", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041a\\u041e\\u0416\\u0410\\u0415\\u0412"}	\N	\N	2026-09-14 02:06:52
1289	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-14 02:06:52
1290	10	forsale001@mail.ru	create	device	15	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041a\\u041e\\u0416\\u0410\\u0415\\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "OPPO", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 02:06:52
1291	10	\N	create	order	11	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "abe3692b-1159-4a48-905d-a9e70fa2eac1", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041a\\u041e\\u0416\\u0410\\u0415\\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d OPPO", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-14 02:06:52
1292	10	\N	create	customer	15	\N	\N	{"name": "\\u041a\\u041e\\u0416\\u0410\\u0415\\u0412", "phone": "79021252861", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-14 02:06:53
1293	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:06:53
1294	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-14 02:06:53
1295	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:06:53
1296	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0420\\u0430\\u0437\\u0431\\u0438\\u0442 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-14 02:07:21
1297	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 02:07:24
1298	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:07:24
1299	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:07:24
1300	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 4, "new_name": "\\u0416\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u044c"}}	\N	\N	2026-09-14 02:07:44
1301	\N	Виталий	create	comment	2	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 11, "\\u0410\\u0432\\u0442\\u043e\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439", "\\u0422\\u0435\\u043a\\u0441\\u0442": "\\u0421\\u043c\\u0435\\u043d\\u0430 \\u0441\\u0442\\u0430\\u0442\\u0443\\u0441\\u0430: \\u0417\\u0430\\u043a\\u0430\\u0437\\u0430\\u043d \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u043a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439 \\u043a \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #11"}	\N	\N	2026-09-14 02:07:44
1302	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:07:44
1303	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:07:44
1304	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:07:44
1335	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:10:31
1305	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "status", "status": {"old_id": 4, "old_name": "\\u0416\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u044c", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 02:08:03
1306	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:08:03
1307	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:08:03
1308	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:08:26
1314	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:08:37
1315	10	forsale001@mail.ru	create	payment	15	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 11, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #11: 2500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-14 02:08:37
1316	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:08:37
1317	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-14 02:08:37
1329	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:09:30
1360	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:13:56
1364	8	ProfiService	create	salary_payment	1	\N	\N	{"employee_id": 7, "role": "master", "amount_cents": 79600, "payment_date": "2026-09-13", "payment_type": "salary", "period_start": null, "period_end": null, "description": "\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 796.00 \\u20bd \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 7 (master)"}	\N	\N	2026-09-14 02:15:31
1309	10	forsale001@mail.ru	add_service	order	11	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2500.0, "price": 2500.0}	\N	\N	2026-09-14 02:08:26
1310	10	forsale001@mail.ru	create	cash_transaction	23	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #11 (\\u041a\\u041e\\u0416\\u0410\\u0415\\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:08:37
1311	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:08:37
1312	10	forsale001@mail.ru	create	cash_transaction	24	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "1090.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #11", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 1090.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:08:37
1313	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:08:37
1318	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-14 02:08:41
1319	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:08:41
1320	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:08:41
1321	10	forsale001@mail.ru	update	order	5	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:09:02
1322	\N	system	create	salary_accrual	5	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1005.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 5, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #5"}	\N	\N	2026-09-14 02:09:02
1323	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:09:02
1324	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:09:02
1325	10	forsale001@mail.ru	update	order	11	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:09:15
1326	\N	system	create	salary_accrual	11	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "705.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 11, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #11"}	\N	\N	2026-09-14 02:09:15
1327	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:09:15
1328	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:09:15
1330	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:09:44
1331	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:09:44
1332	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:09:44
1333	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:10:05
1334	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:10:05
1336	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-14 02:10:31
1337	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:11:02
1338	12	master@master.ru	update	order	10	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-14 02:11:40
1339	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:11:40
1340	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:11:40
1341	12	master@master.ru	update	order	10	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:11:46
1342	\N	system	create	salary_accrual	10	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "759.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 10, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #10"}	\N	\N	2026-09-14 02:11:46
1343	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:11:46
1344	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:11:46
1345	12	master@master.ru	update	order	7	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:11:59
1346	\N	system	create	salary_accrual	7	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 7, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #7"}	\N	\N	2026-09-14 02:11:59
1347	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:11:59
1348	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:11:59
1349	12	master@master.ru	update	order	8	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 14, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0410\\u0440\\u0442\\u0451\\u043c\\u0430"}}	\N	\N	2026-09-14 02:12:13
1350	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:12:13
1351	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:12:13
1352	12	master@master.ru	update	order	8	\N	\N	{"field": "status", "status": {"old_id": 14, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0410\\u0440\\u0442\\u0451\\u043c\\u0430", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:12:16
1353	\N	system	create	salary_accrual	8	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "860.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 8, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #8"}	\N	\N	2026-09-14 02:12:16
1354	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:12:16
1355	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:12:16
1356	12	master@master.ru	update	order	6	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:12:26
1357	\N	system	create	salary_accrual	6	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "796.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 6, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #6"}	\N	\N	2026-09-14 02:12:26
1358	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:12:26
1359	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:12:26
1361	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:14:56
1362	8	ProfiService	create	cash_transaction	25	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "796.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 5, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "salary_payment#1. \\u0412\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 \\u0410\\u0440\\u0442\\u0451\\u043c (\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 796.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:15:31
1363	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:15:31
1365	8	ProfiService	create	cash_transaction	26	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "1241.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 5, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "salary_payment#2. \\u0412\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b (\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 1241.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:15:46
1366	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:15:46
1367	8	ProfiService	create	salary_payment	2	\N	\N	{"employee_id": 6, "role": "master", "amount_cents": 124100, "payment_date": "2026-09-13", "payment_type": "salary", "period_start": null, "period_end": null, "description": "\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 1241.00 \\u20bd \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 6 (master)"}	\N	\N	2026-09-14 02:15:46
1368	8	ProfiService	create	cash_transaction	27	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "4829.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 5, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "salary_payment#3. \\u0412\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439 (\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 4829.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-14 02:15:58
1369	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-14 02:15:58
1370	8	ProfiService	create	salary_payment	3	\N	\N	{"employee_id": 5, "role": "master", "amount_cents": 482900, "payment_date": "2026-09-13", "payment_type": "salary", "period_start": null, "period_end": null, "description": "\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 4829.00 \\u20bd \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 5 (master)"}	\N	\N	2026-09-14 02:15:58
1371	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 02:16:48
1372	10	forsale001@mail.ru	update	order	7	\N	\N	{"field": "status", "status": {"old_id": 1, "old_name": "\\u0412\\u044b\\u0434\\u0430\\u043d", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-14 02:18:00
1373	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:18:00
1374	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:18:00
1375	10	forsale001@mail.ru	update	order	7	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-14 02:18:03
1376	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-14 02:18:03
1377	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-14 02:18:03
1378	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 13:33:07
1379	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 2, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #2"}	\N	\N	2026-09-14 13:34:06
1380	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 13:48:12
1381	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "146.158.81.91", "username_mask": "ma***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-14 17:15:52
1382	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "85.93.1.37", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-18 12:33:31
1383	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:40:01
1384	10	\N	create	order	12	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "f10a939f-8839-4f73-bd77-37acb60a9384", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-18 12:40:01
1385	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:40:01
1386	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:40:01
1387	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:40:01
1388	10	forsale001@mail.ru	update	order	12	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u0431", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-18 12:40:34
1389	10	forsale001@mail.ru	update	order	12	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-18 12:40:39
1390	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:40:39
1391	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:40:39
1392	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:42:19
1393	10	forsale001@mail.ru	add_service	order	12	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f, \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 3000.0, "price": 3000.0}	\N	\N	2026-09-18 12:42:19
1394	10	forsale001@mail.ru	create	cash_transaction	28	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #12 (\\u0410\\u0414\\u041c\\u0410\\u0419\\u041a\\u0418\\u041d\\u0410)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 3000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-18 12:42:34
1395	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-18 12:42:34
1396	10	forsale001@mail.ru	create	payment	16	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 12, "\\u0421\\u0443\\u043c\\u043c\\u0430": "3000.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #12: 3000.00 \\u0440\\u0443\\u0431 (cash)"}	\N	\N	2026-09-18 12:42:34
1397	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:42:34
1398	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:42:34
1399	10	forsale001@mail.ru	update	order	12	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-18 12:42:39
1400	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:42:39
1401	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:42:39
1402	10	forsale001@mail.ru	create	customer_portal_password	16	\N	\N	{"customer_id": 16, "customer_name": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412", "customer_phone": "79022147099", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412"}	\N	\N	2026-09-18 12:45:05
1403	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:45:05
1404	10	forsale001@mail.ru	create	device	16	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440", "\\u0411\\u0440\\u0435\\u043d\\u0434": "-", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:45:05
1413	10	\N	create	order	14	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "059c87c3-e1ec-4776-b77e-94653ab7e7f8", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-18 12:47:33
1414	10	\N	create	customer	17	\N	\N	{"name": "\\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412", "phone": "79539817068", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:47:33
1415	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:47:33
1416	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:47:33
1417	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:47:33
1418	10	forsale001@mail.ru	update	order	14	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-18 12:47:58
1426	10	forsale001@mail.ru	add_service	order	14	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "name": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0440\\u0430\\u0437\\u044a\\u0435\\u043c\\u0430 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 1500.0, "price": 1500.0}	\N	\N	2026-09-18 12:48:26
1405	10	\N	create	order	13	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "175f5f8f-8692-486e-a3a1-0d3ae5e078e9", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 -", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-18 12:45:05
1406	10	\N	create	customer	16	\N	\N	{"name": "\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412", "phone": "79022147099", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:45:05
1407	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:45:05
1408	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:45:05
1409	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:45:05
1410	10	forsale001@mail.ru	create	customer_portal_password	17	\N	\N	{"customer_id": 17, "customer_name": "\\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412", "customer_phone": "79539817068", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412"}	\N	\N	2026-09-18 12:47:32
1411	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:47:33
1412	10	forsale001@mail.ru	create	device	17	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:47:33
1419	10	forsale001@mail.ru	update	order	14	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-18 12:48:02
1420	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:48:02
1421	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:48:02
1422	10	forsale001@mail.ru	update	order	14	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-18 12:48:05
1423	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:48:05
1424	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:48:05
1425	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:48:26
1427	10	forsale001@mail.ru	create	cash_transaction	29	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #14 (\\u0428\\u0410\\u0411\\u0420\\u041e\\u0412\\u0410 \\u042e \\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 1500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-18 12:48:32
1428	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-18 12:48:32
1429	10	forsale001@mail.ru	create	payment	17	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 14, "\\u0421\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #14: 1500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-18 12:48:32
1430	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:48:32
1431	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:48:32
1432	10	forsale001@mail.ru	update	order	13	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 7, "new_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430"}}	\N	\N	2026-09-18 12:48:48
1433	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:48:48
1434	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:48:48
1435	10	forsale001@mail.ru	create	customer_portal_password	18	\N	\N	{"customer_id": 18, "customer_name": "\\u041e\\u041a\\u041e\\u0417\\u0418\\u041d \\u0414 \\u0415", "customer_phone": "79061475657", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041e\\u041a\\u041e\\u0417\\u0418\\u041d \\u0414 \\u0415"}	\N	\N	2026-09-18 12:51:21
1436	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:51:21
1437	10	forsale001@mail.ru	create	device	18	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041e\\u041a\\u041e\\u0417\\u0418\\u041d \\u0414 \\u0415", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440", "\\u0411\\u0440\\u0435\\u043d\\u0434": "iBOX", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:51:21
1438	10	\N	create	order	15	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "e5719376-2860-432b-8b60-f6ac327ddfad", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041e\\u041a\\u041e\\u0417\\u0418\\u041d \\u0414 \\u0415", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 iBOX", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-18 12:51:22
1439	10	\N	create	customer	18	\N	\N	{"name": "\\u041e\\u041a\\u041e\\u0417\\u0418\\u041d \\u0414 \\u0415", "phone": "79061475657", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:51:22
1440	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:51:22
1441	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:51:22
1442	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:51:22
1443	10	forsale001@mail.ru	update	order	15	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u043e\\u0442\\u0432\\u0430\\u043b \\u043c\\u0430\\u0442\\u0440\\u0438\\u0446\\u044b \\u043a\\u0430\\u043c\\u0435\\u0440\\u044b", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-18 12:51:40
1444	10	forsale001@mail.ru	update	order	15	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-18 12:51:44
1445	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:51:44
1446	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:51:44
1447	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:52:11
1448	10	forsale001@mail.ru	update	customer	18	\N	\N	{"field": "customer_data", "changes": {"email": {"old": "", "new": null}}}	\N	\N	2026-09-18 12:52:11
1449	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:52:11
1450	10	forsale001@mail.ru	update	order	15	\N	\N	{"comment": {"old": "\\u2014", "new": "\\u043d\\u0430\\u0435\\u0431\\u043d\\u0443\\u043b\\u0438 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439, \\u0432 \\u043d\\u0435\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e\\u043c \\u043f\\u043e\\u0438\\u0441\\u043a\\u0435"}}	\N	\N	2026-09-18 12:52:11
1451	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:52:11
1452	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:52:11
1453	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:52:11
1454	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:52:42
1455	10	forsale001@mail.ru	add_service	order	15	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0440\\u0435\\u0431\\u043e\\u043b\\u043b \\u043c\\u0430\\u0442\\u0440\\u0438\\u0446\\u044b \\u043a\\u0430\\u043c\\u0435\\u0440\\u044b", "name": "\\u0440\\u0435\\u0431\\u043e\\u043b\\u043b \\u043c\\u0430\\u0442\\u0440\\u0438\\u0446\\u044b \\u043a\\u0430\\u043c\\u0435\\u0440\\u044b", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 3500.0, "price": 3500.0}	\N	\N	2026-09-18 12:52:42
1456	10	forsale001@mail.ru	create	customer_portal_password	19	\N	\N	{"customer_id": 19, "customer_name": "\\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410", "customer_phone": "79022141965", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410"}	\N	\N	2026-09-18 12:54:36
1457	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:54:36
1458	10	forsale001@mail.ru	create	device	19	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "POCO", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:54:36
1463	10	forsale001@mail.ru	create	payment	18	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 16, "\\u0421\\u0443\\u043c\\u043c\\u0430": "500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "\\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #16: 500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-18 12:54:36
1464	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:54:36
1465	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:54:36
1466	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:54:36
1467	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:54:36
1468	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:54:36
1459	10	\N	create	order	16	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "ad2a4bf7-c859-467a-b31c-e367b5be1c23", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d POCO", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-18 12:54:36
1460	10	\N	create	customer	19	\N	\N	{"name": "\\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410", "phone": "79022141965", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:54:36
1461	10	forsale001@mail.ru	create	cash_transaction	30	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 3, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #16 (\\u0413\\u041e\\u0413\\u041e\\u041b\\u0415\\u0412 \\u0410 \\u0410). \\u041f\\u0440\\u0435\\u0434\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-18 12:54:36
1462	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-18 12:54:36
1469	10	forsale001@mail.ru	update	order	16	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 4, "new_name": "\\u0416\\u0434\\u0435\\u0442 \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u044c"}}	\N	\N	2026-09-18 12:54:47
1470	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:54:47
1471	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:54:47
1472	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:55:12
1473	10	forsale001@mail.ru	create	cash_transaction	31	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "4000.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #16", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 4000.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-18 12:55:12
1474	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-18 12:55:12
1475	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:55:12
1476	10	forsale001@mail.ru	add_service	order	16	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430 (\\u043e\\u0440\\u0438\\u0433\\u0438\\u043d\\u0430\\u043b)", "name": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430 (\\u043e\\u0440\\u0438\\u0433\\u0438\\u043d\\u0430\\u043b)", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 7500.0, "price": 7500.0}	\N	\N	2026-09-18 12:55:12
1477	10	forsale001@mail.ru	create	customer_portal_password	20	\N	\N	{"customer_id": 20, "customer_name": "\\u0412\\u0415\\u0420\\u0428\\u0418\\u041d\\u0418\\u041d", "customer_phone": "79278163040", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0412\\u0415\\u0420\\u0428\\u0418\\u041d\\u0418\\u041d"}	\N	\N	2026-09-18 12:58:09
1478	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-18 12:58:09
1479	10	forsale001@mail.ru	create	device	20	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0412\\u0415\\u0420\\u0428\\u0418\\u041d\\u0418\\u041d", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Roadgid", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-18 12:58:09
1480	10	\N	create	order	17	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "06518550-2676-4f5a-a27b-3b52694bf256", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0412\\u0415\\u0420\\u0428\\u0418\\u041d\\u0418\\u041d", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 Roadgid", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-18 12:58:09
1482	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:58:09
1483	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-18 12:58:09
1484	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-18 12:58:09
1488	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "85.93.1.37", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-18 16:30:45
1497	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-18 16:39:17
1498	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "work_act", "name": "\\u0410\\u043a\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442", "content_length": 3664, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u0410\\u043a\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0440\\u0430\\u0431\\u043e\\u0442 (work_act)"}	\N	\N	2026-09-18 16:39:17
1500	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-18 16:43:38
1501	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "name": "\\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430", "content_length": 5354, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 (customer)"}	\N	\N	2026-09-18 16:43:38
1485	10	forsale001@mail.ru	update	order	17	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 7, "new_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430"}}	\N	\N	2026-09-18 12:58:16
1486	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 12:58:16
1487	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 12:58:16
1489	8	ProfiService	update	order	14	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-18 16:31:39
1490	\N	system	create	salary_accrual	14	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "750.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 14, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #14"}	\N	\N	2026-09-18 16:31:39
1491	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 16:31:39
1492	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 16:31:39
1493	8	ProfiService	update	order	12	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-18 16:33:03
1494	\N	system	create	salary_accrual	12	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 12, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #12"}	\N	\N	2026-09-18 16:33:03
1495	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-18 16:33:03
1496	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-18 16:33:03
1499	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "work_act", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: work_act"}	\N	\N	2026-09-18 16:39:17
1502	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: customer"}	\N	\N	2026-09-18 16:43:38
1503	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-19 20:03:52
1504	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "5.83.137.6", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 12:49:01
1505	8	ProfiService	update	order	17	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0441\\u0430\\u043c\\u043e\\u0440\\u0435\\u043c\\u043e\\u043d\\u0442", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-20 12:49:38
1506	8	ProfiService	update	order	17	\N	\N	{"field": "status", "status": {"old_id": 7, "old_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430", "new_id": 2, "new_name": "\\u0417\\u0430\\u043a\\u0440\\u044b\\u0442 \\u043d\\u0435\\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e"}}	\N	\N	2026-09-20 12:49:39
1507	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 12:49:39
1508	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-20 12:49:39
1509	8	ProfiService	update	order	13	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u041e\\u0442\\u0431\\u0438\\u0442 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442 \\u043d\\u0430 \\u043c\\u0430\\u0442.\\u043f\\u043b\\u0430\\u0442\\u0435, \\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0446\\u0435\\u043f\\u0438 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-20 12:51:11
1510	8	ProfiService	update	order	13	\N	\N	{"field": "status", "status": {"old_id": 7, "old_name": "\\u0414\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-20 12:51:17
1511	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 12:51:17
1512	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-20 12:51:17
1513	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 12:51:56
1514	8	ProfiService	add_service	order	13	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0412\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0446\\u0435\\u043f\\u0438 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "name": "\\u0412\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0446\\u0435\\u043f\\u0438 \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2500.0, "price": 2500.0}	\N	\N	2026-09-20 12:51:56
1515	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 20:37:59
1516	8	ProfiService	create	cash_transaction	32	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #13 (\\u0411\\u041e\\u0420\\u0418\\u0421\\u041e\\u0412\\u0410 \\u0421 \\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-20 20:46:02
1517	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 4, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-20 20:46:02
1518	8	ProfiService	create	payment	19	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 13, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #13: 2500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-20 20:46:02
1519	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 20:46:02
1520	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-20 20:46:02
1521	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 22:11:13
1522	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 22:12:30
1523	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-20 22:12:40
1524	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 2, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-20 22:12:40
1525	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-20 22:12:40
1526	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 2, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #2"}	\N	\N	2026-09-20 22:15:38
1527	10	forsale001@mail.ru	create	customer_portal_password	21	\N	\N	{"customer_id": 21, "customer_name": "\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447", "customer_phone": "79999999999", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447"}	\N	\N	2026-09-20 22:16:42
1528	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-20 22:16:42
1529	10	forsale001@mail.ru	create	device	21	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-20 22:16:42
1530	10	\N	create	order	18	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "ac5bb7cb-bc08-457a-b46b-d3a966f3226e", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-20 22:16:42
1531	10	\N	create	customer	21	\N	\N	{"name": "\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418\\u0432\\u0430\\u043d \\u0418\\u0432\\u0430\\u043d\\u043e\\u0432\\u0438\\u0447", "phone": "79999999999", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-20 22:16:42
1532	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 22:16:42
1533	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-20 22:16:42
1534	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-20 22:16:42
1535	10	forsale001@mail.ru	login_success	staff_auth	10	\N	\N	{"ip": "146.158.81.91", "username_mask": "fo***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (fo***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 22:17:53
1536	10	forsale001@mail.ru	create	customer_portal_password	22	\N	\N	{"customer_id": 22, "customer_name": "\\u041f\\u0435\\u0442\\u0440\\u043e\\u0432 \\u041f\\u0435\\u0442\\u0440 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0438\\u0447", "customer_phone": "78888888888", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432 \\u041f\\u0435\\u0442\\u0440 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0438\\u0447"}	\N	\N	2026-09-20 22:18:44
1537	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-20 22:18:44
1538	10	forsale001@mail.ru	create	device	22	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041f\\u0435\\u0442\\u0440\\u043e\\u0432 \\u041f\\u0435\\u0442\\u0440 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0438\\u0447", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-20 22:18:44
1544	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-20 22:21:38
1539	10	\N	create	order	19	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "68074358-9976-460e-892a-0f432492a793", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041f\\u0435\\u0442\\u0440\\u043e\\u0432 \\u041f\\u0435\\u0442\\u0440 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0438\\u0447", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-20 22:18:44
1540	10	\N	create	customer	22	\N	\N	{"name": "\\u041f\\u0435\\u0442\\u0440\\u043e\\u0432 \\u041f\\u0435\\u0442\\u0440 \\u041f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0438\\u0447", "phone": "78888888888", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-20 22:18:44
1541	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-20 22:18:44
1542	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-20 22:18:44
1543	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-20 22:18:44
1545	8	ProfiService	update	user	14	\N	\N	{"updates": {"is_active": 0}}	\N	\N	2026-09-20 22:22:40
1546	8	ProfiService	delete	user	14	\N	\N	{"description": "\\u0414\\u0435\\u0430\\u043a\\u0442\\u0438\\u0432\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440"}	\N	\N	2026-09-20 22:22:40
1547	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-20 22:30:14
1548	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "name": "\\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430", "content_length": 5265, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 (customer)"}	\N	\N	2026-09-20 22:30:14
1549	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "branch_id": null, "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: customer"}	\N	\N	2026-09-20 22:30:14
1550	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-20 22:31:04
1551	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "name": "\\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430", "content_length": 5288, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 (customer)"}	\N	\N	2026-09-20 22:31:04
1552	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "branch_id": null, "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: customer"}	\N	\N	2026-09-20 22:31:04
1553	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-20 22:33:04
1554	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "sales_receipt", "name": "\\u0422\\u043e\\u0432\\u0430\\u0440\\u043d\\u044b\\u0439 \\u0447\\u0435\\u043a", "content_length": 1253, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u0422\\u043e\\u0432\\u0430\\u0440\\u043d\\u044b\\u0439 \\u0447\\u0435\\u043a (sales_receipt)"}	\N	\N	2026-09-20 22:33:04
1555	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "sales_receipt", "branch_id": null, "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: sales_receipt"}	\N	\N	2026-09-20 22:33:04
1556	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-20 22:33:17
1557	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "name": "\\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u2014 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434", "content_length": 5288, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u2014 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 (customer)"}	\N	\N	2026-09-20 22:33:17
1558	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "branch_id": 1, "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: customer"}	\N	\N	2026-09-20 22:33:17
1559	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "print_template", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'print_template'"}	\N	\N	2026-09-20 22:38:58
1560	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "name": "\\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u2014 \\u0412\\u0435\\u0440\\u0445\\u043d\\u044f\\u044f \\u0442\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430", "content_length": 5288, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: \\u041a\\u0432\\u0438\\u0442\\u0430\\u043d\\u0446\\u0438\\u044f \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u2014 \\u0412\\u0435\\u0440\\u0445\\u043d\\u044f\\u044f \\u0442\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430 (customer)"}	\N	\N	2026-09-20 22:38:58
1561	8	ProfiService	update	print_template	\N	\N	\N	{"template_type": "customer", "branch_id": 2, "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0451\\u043d \\u0448\\u0430\\u0431\\u043b\\u043e\\u043d \\u043f\\u0435\\u0447\\u0430\\u0442\\u0438: customer"}	\N	\N	2026-09-20 22:38:58
1562	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "146.158.81.91", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-22 22:28:10
1563	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "85.93.1.9", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-24 15:46:56
1564	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:48:57
1565	8	ProfiService	remove_service	order	15	\N	\N	{"ID \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438": 20, "\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430", "name": "\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 0, "price": 0}	\N	\N	2026-09-24 15:48:57
1566	8	ProfiService	update	order	15	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 2, "new_name": "\\u0417\\u0430\\u043a\\u0440\\u044b\\u0442 \\u043d\\u0435\\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e"}}	\N	\N	2026-09-24 15:49:04
1567	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:49:04
1568	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:49:04
1569	8	ProfiService	update	order	13	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 15:50:04
1570	\N	system	create	salary_accrual	13	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1250.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 13, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #13"}	\N	\N	2026-09-24 15:50:04
1571	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:50:04
1572	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:50:04
1573	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "ref_device_brands", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_device_brands'"}	\N	\N	2026-09-24 15:52:38
1574	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_device_brands", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_device_brands'"}	\N	\N	2026-09-24 15:52:38
1575	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "ref_all", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_all'"}	\N	\N	2026-09-24 15:52:38
1576	8	ProfiService	create	device_brand	320	\N	\N	{"name": "Atoch", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u0431\\u0440\\u0435\\u043d\\u0434 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: Atoch"}	\N	\N	2026-09-24 15:52:38
1577	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_device_brands", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_device_brands'"}	\N	\N	2026-09-24 15:52:49
1578	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_device_brands", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_device_brands'"}	\N	\N	2026-09-24 15:52:49
1579	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_all", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_all'"}	\N	\N	2026-09-24 15:52:49
1580	8	ProfiService	create	device_brand	321	\N	\N	{"name": "Atouch", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d \\u0431\\u0440\\u0435\\u043d\\u0434 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: Atouch"}	\N	\N	2026-09-24 15:52:49
1581	8	ProfiService	create	order_model	235	\N	\N	{"name": "X19 PRO", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: X19 PRO"}	\N	\N	2026-09-24 15:53:01
1582	8	ProfiService	create	customer_portal_password	23	\N	\N	{"customer_id": 23, "customer_name": "\\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412", "customer_phone": "79867364971", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412"}	\N	\N	2026-09-24 15:53:35
1583	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 15:53:35
1618	8	ProfiService	update	order	21	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-24 15:56:38
1584	8	ProfiService	create	device	23	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u041f\\u043b\\u0430\\u043d\\u0448\\u0435\\u0442", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Atouch", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:53:35
1591	8	ProfiService	update	order	20	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-24 15:53:55
1592	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:53:55
1593	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:53:55
1594	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:54:11
1598	8	ProfiService	create	payment	20	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 20, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #20: 2500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-24 15:54:22
1599	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:54:22
1600	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 15:54:22
1585	8	\N	create	order	20	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "13b94a3f-e5bf-4d86-8034-eca2654a35e1", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u041f\\u043b\\u0430\\u043d\\u0448\\u0435\\u0442 Atouch", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-24 15:53:35
1586	8	\N	create	customer	23	\N	\N	{"name": "\\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412", "phone": "79867364971", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:53:35
1587	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:53:35
1588	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 15:53:35
1589	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 15:53:35
1590	8	ProfiService	update	order	20	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 15:53:51
1595	8	ProfiService	add_service	order	20	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0430\\u043a\\u043a\\u0443\\u043c\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\\u0430", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2500.0, "price": 2500.0}	\N	\N	2026-09-24 15:54:11
1596	8	ProfiService	create	cash_transaction	33	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #20 (\\u0410\\u0420\\u0422\\u042e\\u0425\\u041e\\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 15:54:22
1597	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 15:54:22
1601	8	ProfiService	update	order	20	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-24 15:54:28
1602	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:54:28
1603	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:54:28
1604	8	ProfiService	update	order	20	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 15:54:39
1605	\N	system	create	salary_accrual	20	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1250.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 20, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #20"}	\N	\N	2026-09-24 15:54:39
1606	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:54:39
1607	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:54:39
1608	8	ProfiService	create	order_model	236	\N	\N	{"name": "LASERVISION 4\\u041a", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: LASERVISION 4\\u041a"}	\N	\N	2026-09-24 15:55:31
1609	8	ProfiService	create	customer_portal_password	24	\N	\N	{"customer_id": 24, "customer_name": "\\u0410\\u041b\\u0418\\u041a", "customer_phone": "79991940055", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0410\\u041b\\u0418\\u041a"}	\N	\N	2026-09-24 15:55:52
1610	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 15:55:52
1611	8	ProfiService	create	device	24	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u041b\\u0418\\u041a", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440", "\\u0411\\u0440\\u0435\\u043d\\u0434": "iBOX", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:55:52
1612	8	\N	create	order	21	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "b1592324-d882-48c6-9af8-3ecfac540e4b", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u041b\\u0418\\u041a", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0412\\u0438\\u0434\\u0435\\u043e\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440 iBOX", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-24 15:55:52
1613	8	\N	create	customer	24	\N	\N	{"name": "\\u0410\\u041b\\u0418\\u041a", "phone": "79991940055", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:55:52
1614	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:55:52
1615	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 15:55:52
1616	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 15:55:52
1617	8	ProfiService	update	order	21	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 15:56:33
1622	8	ProfiService	add_service	order	21	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0438", "name": "\\u0432\\u043e\\u0441\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0438", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 1500.0, "price": 1500.0}	\N	\N	2026-09-24 15:56:58
1619	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:56:38
1620	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:56:38
1621	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:56:58
1623	8	ProfiService	create	cash_transaction	34	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #21 (\\u0410\\u041b\\u0418\\u041a)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 1500.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 15:57:05
1624	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 15:57:05
1625	8	ProfiService	create	payment	21	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 21, "\\u0421\\u0443\\u043c\\u043c\\u0430": "1500.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #21: 1500.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-24 15:57:05
1626	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:57:05
1627	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 15:57:05
1628	8	ProfiService	update	order	21	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-24 15:57:09
1629	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:57:09
1630	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:57:09
1631	8	ProfiService	update	order	21	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 15:57:14
1632	\N	system	create	salary_accrual	21	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "750.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 21, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #21"}	\N	\N	2026-09-24 15:57:14
1633	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:57:14
1634	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:57:14
1635	8	ProfiService	create	order_model	237	\N	\N	{"name": "A325", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: A325"}	\N	\N	2026-09-24 15:57:46
1636	8	ProfiService	create	customer_portal_password	25	\N	\N	{"customer_id": 25, "customer_name": "\\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412", "customer_phone": "79176141606", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412"}	\N	\N	2026-09-24 15:59:25
1637	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 15:59:25
1638	8	ProfiService	create	device	25	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Samsung", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 15:59:25
1639	8	\N	create	order	22	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "e8039ffd-90f0-429c-b37f-01a666432bca", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-24 15:59:25
1641	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:59:25
1642	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 15:59:25
1643	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 15:59:25
1644	8	ProfiService	update	order	22	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u0437\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 15:59:44
1645	8	ProfiService	update	order	22	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-24 15:59:59
1646	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 15:59:59
1647	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 15:59:59
1648	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:00:43
1649	8	ProfiService	add_service	order	22	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 4100.0, "price": 4100.0}	\N	\N	2026-09-24 16:00:43
1650	8	ProfiService	create	cash_transaction	35	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "4100.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #22 (\\u041c\\u0410\\u041d\\u042c\\u0428\\u0418\\u041d \\u0418 \\u0412)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 4100.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:00:50
1651	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:00:50
1652	8	ProfiService	create	cash_transaction	36	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2034.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #22", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 2034.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:00:50
1653	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:00:50
1654	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:00:50
1655	8	ProfiService	create	payment	22	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 22, "\\u0421\\u0443\\u043c\\u043c\\u0430": "4100.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #22: 4100.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-24 16:00:50
1656	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:00:50
1657	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:00:50
1658	8	ProfiService	update	order	22	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-24 16:00:55
1659	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:00:55
1660	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:00:55
1661	8	ProfiService	update	order	22	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 16:00:59
1662	\N	system	create	salary_accrual	22	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "1033.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 22, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #22"}	\N	\N	2026-09-24 16:00:59
1663	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:00:59
1664	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:00:59
1665	8	ProfiService	create	order_model	238	\N	\N	{"name": "Note 14 pro", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: Note 14 pro"}	\N	\N	2026-09-24 16:03:18
1666	8	ProfiService	create	customer_portal_password	26	\N	\N	{"customer_id": 26, "customer_name": "\\u0420\\u0423\\u0421\\u0422\\u0410\\u041c", "customer_phone": "79170564233", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0420\\u0423\\u0421\\u0422\\u0410\\u041c"}	\N	\N	2026-09-24 16:03:38
1667	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 16:03:38
1668	8	ProfiService	create	device	26	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0420\\u0423\\u0421\\u0422\\u0410\\u041c", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:03:38
1675	8	ProfiService	update	order	23	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 10, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430"}}	\N	\N	2026-09-24 16:03:58
1676	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:03:58
1677	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:03:58
1678	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:04:39
1682	8	ProfiService	create	payment	23	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 23, "\\u0421\\u0443\\u043c\\u043c\\u0430": "4700.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #23: 4700.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-24 16:04:45
1683	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:04:45
1684	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:04:45
1669	8	\N	create	order	23	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "e1ad5de5-13d8-4162-8b92-b5aff688f11b", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0420\\u0423\\u0421\\u0422\\u0410\\u041c", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Redmi", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u041c\\u0438\\u0445\\u0430\\u0438\\u043b"}	\N	\N	2026-09-24 16:03:38
1670	8	\N	create	customer	26	\N	\N	{"name": "\\u0420\\u0423\\u0421\\u0422\\u0410\\u041c", "phone": "79170564233", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:03:38
1671	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:03:38
1672	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 16:03:38
1673	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:03:38
1674	8	ProfiService	update	order	23	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u041d\\u0443\\u0436\\u043d\\u043e \\u0432\\u044b\\u0442\\u0430\\u0449\\u0438\\u0442\\u044c \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 16:03:55
1679	8	ProfiService	add_service	order	23	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u041a\\u043e\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u0430\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442\\u0430", "name": "\\u041a\\u043e\\u043f\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0441 \\u0430\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442\\u0430", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 4700.0, "price": 4700.0}	\N	\N	2026-09-24 16:04:39
1680	8	ProfiService	create	cash_transaction	37	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "4700.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #23 (\\u0420\\u0423\\u0421\\u0422\\u0410\\u041c)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 4700.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:04:45
1681	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:04:45
1685	8	ProfiService	update	order	23	\N	\N	{"field": "status", "status": {"old_id": 10, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-24 16:05:03
1686	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:05:03
1687	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:05:03
1695	8	\N	create	order	24	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "0ec3c441-118a-442b-af05-61470e1611c7", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u041c\\u0418\\u0420", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439"}	\N	\N	2026-09-24 16:06:45
1696	8	\N	create	customer	27	\N	\N	{"name": "\\u0410\\u041c\\u0418\\u0420", "phone": "79962193496", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:06:45
1697	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:06:45
1698	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 16:06:45
1699	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:06:45
1700	8	ProfiService	update	order	24	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0440\\u0430\\u0437\\u0431\\u0438\\u0442 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 16:07:05
1705	8	ProfiService	add_service	order	24	\N	\N	{"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "name": "\\u0417\\u0430\\u043c\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0441\\u043f\\u043b\\u0435\\u0439\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044f", "\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e": 1, "quantity": 1, "\\u0426\\u0435\\u043d\\u0430": 2800.0, "price": 2800.0}	\N	\N	2026-09-24 16:07:36
1689	\N	system	create	salary_accrual	23	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "2350.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 23, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #23"}	\N	\N	2026-09-24 16:05:07
1690	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:05:07
1691	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:05:07
1692	8	ProfiService	create	customer_portal_password	27	\N	\N	{"customer_id": 27, "customer_name": "\\u0410\\u041c\\u0418\\u0420", "customer_phone": "79962193496", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0410\\u041c\\u0418\\u0420"}	\N	\N	2026-09-24 16:06:45
1693	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 16:06:45
1694	8	ProfiService	create	device	27	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u0410\\u041c\\u0418\\u0420", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Samsung", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:06:45
1701	8	ProfiService	update	order	24	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-24 16:07:18
1702	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:07:18
1703	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:07:18
1704	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:07:36
1706	8	ProfiService	create	cash_transaction	38	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u043f\\u0440\\u0438\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "2800.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 1, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #24 (\\u0410\\u041c\\u0418\\u0420)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434 2800.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:07:42
1707	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:07:42
1708	8	ProfiService	create	cash_transaction	39	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "900.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 2, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "\\u0421\\u0435\\u0431\\u0435\\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0440\\u0430\\u0437\\u043e\\u0432\\u044b\\u0445 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #24", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 900.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:07:42
1709	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:07:42
1710	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:07:42
1711	8	ProfiService	create	payment	24	\N	\N	{"ID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": 24, "\\u0421\\u0443\\u043c\\u043c\\u0430": "2800.00 \\u20bd", "\\u0422\\u0438\\u043f \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "transfer", "\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439": "", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #24: 2800.00 \\u0440\\u0443\\u0431 (transfer)"}	\N	\N	2026-09-24 16:07:42
1712	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:07:42
1713	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:07:42
1714	8	ProfiService	update	order	24	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 13, "new_name": "\\u0413\\u043e\\u0442\\u043e\\u0432"}}	\N	\N	2026-09-24 16:07:48
1715	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:07:48
1716	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:07:48
1717	8	ProfiService	update	order	24	\N	\N	{"field": "status", "status": {"old_id": 13, "old_name": "\\u0413\\u043e\\u0442\\u043e\\u0432", "new_id": 1, "new_name": "\\u0412\\u044b\\u0434\\u0430\\u043d"}}	\N	\N	2026-09-24 16:07:52
1718	\N	system	create	salary_accrual	24	\N	\N	{"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0439": 1, "\\u041e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430": "950.00 \\u20bd", "\\u0417\\u0430\\u044f\\u0432\\u043a\\u0430": 24, "description": "\\u041d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e \\u0437\\u0430\\u044f\\u0432\\u043a\\u0435 #24"}	\N	\N	2026-09-24 16:07:52
1719	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:07:52
1720	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:07:52
1721	8	ProfiService	create	order_model	239	\N	\N	{"name": "Gt3", "description": "\\u0414\\u043e\\u0431\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: Gt3"}	\N	\N	2026-09-24 16:09:02
1722	8	ProfiService	create	customer_portal_password	28	\N	\N	{"customer_id": 28, "customer_name": "\\u041c\\u0410\\u0428\\u0422\\u0410\\u041a\\u041e\\u0412 M A", "customer_phone": "79020032026", "note": "Plaintext \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. Staff \\u0432\\u0438\\u0434\\u0438\\u0442 \\u0435\\u0433\\u043e \\u043e\\u0434\\u0438\\u043d \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0438/\\u0441\\u0431\\u0440\\u043e\\u0441\\u0435.", "description": "\\u0421\\u0433\\u0435\\u043d\\u0435\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u043f\\u043e\\u0440\\u0442\\u0430\\u043b\\u0430 \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u041c\\u0410\\u0428\\u0422\\u0410\\u041a\\u041e\\u0412 M A"}	\N	\N	2026-09-24 16:09:54
1723	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "device", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'device'"}	\N	\N	2026-09-24 16:09:54
1724	8	ProfiService	create	device	28	\N	\N	{"\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u0410\\u0428\\u0422\\u0410\\u041a\\u041e\\u0412 M A", "\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d", "\\u0411\\u0440\\u0435\\u043d\\u0434": "Realme", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:09:54
1725	8	\N	create	order	25	\N	\N	{"UUID \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438": "c0c3815f-b1bd-434b-9818-a82b496176c3", "\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442": "\\u041c\\u0410\\u0428\\u0422\\u0410\\u041a\\u041e\\u0412 M A", "\\u0423\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e": "\\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Realme", "\\u0421\\u0435\\u0440\\u0438\\u0439\\u043d\\u044b\\u0439 \\u043d\\u043e\\u043c\\u0435\\u0440": null, "\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441": "\\u041d\\u043e\\u0432\\u044b\\u0439", "\\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440": "Manager", "\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440": "\\u0410\\u0440\\u0442\\u0451\\u043c"}	\N	\N	2026-09-24 16:09:54
1726	8	\N	create	customer	28	\N	\N	{"name": "\\u041c\\u0410\\u0428\\u0422\\u0410\\u041a\\u041e\\u0412 M A", "phone": "79020032026", "email": "\\u041d\\u0435 \\u0443\\u043a\\u0430\\u0437\\u0430\\u043d"}	\N	\N	2026-09-24 16:09:54
1727	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:09:54
1728	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "customer", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'customer'"}	\N	\N	2026-09-24 16:09:54
1729	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "finance", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'finance'"}	\N	\N	2026-09-24 16:09:54
1730	8	ProfiService	update	order	25	\N	\N	{"field": "diagnostics", "old": "", "new": "\\u0422\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0448\\u0438\\u0432\\u043a\\u0430 \\u0430\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442\\u0430 \\u0441 \\u043f\\u043e\\u0442\\u0435\\u0440\\u0435\\u0439 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445", "description": "\\u0418\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0430 \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0438"}	\N	\N	2026-09-24 16:10:34
1731	8	ProfiService	update	order	25	\N	\N	{"field": "status", "status": {"old_id": 3, "old_name": "\\u041d\\u043e\\u0432\\u044b\\u0439", "new_id": 12, "new_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f"}}	\N	\N	2026-09-24 16:10:38
1732	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-24 16:10:38
1733	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 1, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-24 16:10:38
1734	\N	\N	login_failed	staff_auth	\N	\N	\N	{"ip": "85.93.1.9", "username_mask": "pr***", "description": "\\u041d\\u0435\\u0443\\u0434\\u0430\\u0447\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (pr***)"}	\N	\N	2026-09-24 16:12:56
1735	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "85.93.1.9", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-24 16:13:17
1738	8	ProfiService	create	salary_payment	4	\N	\N	{"employee_id": 5, "role": "master", "amount_cents": 570000, "payment_date": "2026-09-24", "payment_type": "salary", "period_start": null, "period_end": null, "description": "\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 5700.00 \\u20bd \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 5 (master)"}	\N	\N	2026-09-24 16:15:12
1736	8	ProfiService	create	cash_transaction	40	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "5700.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 5, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "salary_payment#4. \\u0412\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u0439 (\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 5700.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:15:12
1737	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 2, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:15:12
1739	8	ProfiService	create	cash_transaction	41	\N	\N	{"\\u0422\\u0438\\u043f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0438": "\\u0440\\u0430\\u0441\\u0445\\u043e\\u0434", "\\u0421\\u0443\\u043c\\u043c\\u0430": "4133.00 \\u20bd", "ID \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438": 5, "\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b": "cash", "\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435": "salary_payment#5. \\u0412\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u0440\\u043f\\u043b\\u0430\\u0442\\u044b. \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b (\\u043c\\u0430\\u0441\\u0442\\u0435\\u0440)", "description": "\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0430 \\u043a\\u0430\\u0441\\u0441\\u043e\\u0432\\u0430\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f: \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434 4133.00 \\u0440\\u0443\\u0431"}	\N	\N	2026-09-24 16:15:34
1740	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "cash_summary", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'cash_summary'"}	\N	\N	2026-09-24 16:15:34
1741	8	ProfiService	create	salary_payment	5	\N	\N	{"employee_id": 6, "role": "master", "amount_cents": 413300, "payment_date": "2026-09-24", "payment_type": "salary", "period_start": null, "period_end": null, "description": "\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0430 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u0430 4133.00 \\u20bd \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u043a\\u0443 6 (master)"}	\N	\N	2026-09-24 16:15:34
1742	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "176.116.141.1", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-25 03:21:38
1743	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 3, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-25 03:21:46
1744	8	ProfiService	update	user	14	\N	\N	{"updates": {"username": "admin@admin.ru", "is_active": 1, "display_name": "Admin"}}	\N	\N	2026-09-25 03:22:16
1745	8	ProfiService	update	user	14	\N	\N	{"display_name": "Admin", "username": "admin@admin.ru", "is_active": 1, "description": "\\u041e\\u0431\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d \\u0430\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440"}	\N	\N	2026-09-25 03:22:16
1746	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "ref_order_statuses", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'ref_order_statuses'"}	\N	\N	2026-09-25 03:22:42
1747	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "176.116.141.1", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-26 00:38:11
1748	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-26 00:39:12
1749	12	master@master.ru	login_success	staff_auth	12	\N	\N	{"ip": "176.116.141.1", "username_mask": "ma***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (ma***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-28 11:06:40
1750	8	ProfiService	login_success	staff_auth	8	\N	\N	{"ip": "176.116.141.1", "username_mask": "Pr***", "branch_id": 1, "remember_me": false, "description": "\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u0432\\u0445\\u043e\\u0434 staff (Pr***) \\u0432 \\u0442\\u043e\\u0447\\u043a\\u0443 #1"}	\N	\N	2026-09-28 11:12:03
1751	8	ProfiService	update	order	25	\N	\N	{"field": "status", "status": {"old_id": 12, "old_name": "\\u0412 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u0443 \\u0412\\u0438\\u0442\\u0430\\u043b\\u0438\\u044f", "new_id": 2, "new_name": "\\u0417\\u0430\\u043a\\u0440\\u044b\\u0442 \\u043d\\u0435\\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e"}}	\N	\N	2026-09-28 11:14:24
1752	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "order", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'order'"}	\N	\N	2026-09-28 11:14:24
1753	\N	system	clear	cache	\N	\N	\N	{"entries_cleared": 0, "key_prefix": "all_orders_header_counters", "description": "\\u041e\\u0447\\u0438\\u0449\\u0435\\u043d \\u043a\\u044d\\u0448 \\u0441 \\u043f\\u0440\\u0435\\u0444\\u0438\\u043a\\u0441\\u043e\\u043c 'all_orders_header_counters'"}	\N	\N	2026-09-28 11:14:24
1754	8	ProfiService	delete	order_model	220	\N	\N	{"name": "4433", "description": "\\u0423\\u0434\\u0430\\u043b\\u0435\\u043d\\u0430 \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u0430: 4433"}	\N	\N	2026-09-28 11:16:26
\.


--
-- Data for Name: appearance_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.appearance_tags (id, name, sort_order, created_at) FROM stdin;
8	Аппарат	1	2026-09-08 20:14:40.177339
9	Аппарат не сдан	2	2026-09-08 20:14:40.177339
20	Попадание влаги	3	2026-09-13 23:47:45.116031
1	Следы эксплуатации, мелкие царапины, потертости	4	2026-09-08 20:14:40.177339
2	Нет возможности проверить работу faceID и камер	5	2026-09-08 20:14:40.177339
3	Разбита задняя крышка	6	2026-09-08 20:14:40.177339
7	Разбит дисплей	7	2026-09-08 20:14:40.177339
6	Скол на корпусе	8	2026-09-08 20:14:40.177339
5	Трещина на экране	9	2026-09-08 20:14:40.177339
15	Чехол/сумка	10	2026-09-08 20:14:40.177339
16	Бывший в употреблении	11	2026-09-08 20:14:46.583046
17	Следы эксплуатации	12	2026-09-08 20:31:11.641451
18	Мелкие царапины	13	2026-09-08 20:31:11.641451
19	Потертости	14	2026-09-08 20:31:11.641451
10	Аппарат, акб	15	2026-09-08 20:14:40.177339
12	Аппарат, акб, зарядное уст-во	16	2026-09-08 20:14:40.177339
11	Аппарат, зарядное уст-во	17	2026-09-08 20:14:40.177339
13	Аппарат коробка, зарядное уст-во	18	2026-09-08 20:14:40.177339
14	Зарядное уст-во	19	2026-09-08 20:14:40.177339
4	Отсутствует держатель SIM	20	2026-09-08 20:14:40.177339
\.


--
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.branches (id, name, address, phone, color, is_active, created_at, logo_url) FROM stdin;
1	Новый город	пр-кт Ульяновский, 12е	+7 (900) 111-22-33	#3b82f6	t	2026-09-10 01:28:46.41319	/images/branches/novy_gorod.png
2	Верхняя терраса	пр-д Сиреневый, 13б	+7 (900) 444-55-66	#8b5cf6	t	2026-09-10 01:28:46.41319	/images/branches/verkhnyaya_terrasa.png
\.


--
-- Data for Name: cash_transactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cash_transactions (id, category_id, amount, transaction_type, payment_method, description, order_id, payment_id, shop_sale_id, transaction_date, created_by_id, created_by_username, created_at, is_cancelled, cancelled_at, cancelled_reason, cancelled_by_id, cancelled_by_username, storno_of_id) FROM stdin;
10	1	3500	income	transfer	Оплата по заявке #4 (БОРИСОВ А А)	4	7	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:04:15.059993	0	\N	\N	\N	\N	\N
11	2	1018	expense	cash	Себестоимость разовых позиций по заявке #4	4	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:13:17.600334	0	\N	\N	\N	\N	\N
12	1	3000	income	cash	Оплата по заявке #5 (ТКАЧЕНКО П)	5	8	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:33:47.810613	0	\N	\N	\N	\N	\N
13	2	990	expense	cash	Себестоимость разовых позиций по заявке #5	5	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:33:47.86282	0	\N	\N	\N	\N	\N
14	1	2900	income	transfer	Оплата по заявке #6 (ВЯЧЕСЛАВ)	6	9	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:36:13.537834	0	\N	\N	\N	\N	\N
15	2	910	expense	transfer	Себестоимость разовых позиций по заявке #6	6	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:36:13.607734	0	\N	\N	\N	\N	\N
16	1	3000	income	transfer	Оплата по заявке #7 (ЯЦУШКО)	7	10	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:47:18.136937	0	\N	\N	\N	\N	\N
17	1	2400	income	transfer	Оплата по заявке #8 (АДМАЙКИНА)	8	11	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:51:36.664357	0	\N	\N	\N	\N	\N
18	2	680	expense	transfer	Себестоимость разовых позиций по заявке #8	8	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:51:36.704837	0	\N	\N	\N	\N	\N
19	3	3000	income	transfer	Предоплата по заявке #9 (ЗАХАРОВ). Предоплата при создании заявки	9	12	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 00:55:04.230415	0	\N	\N	\N	\N	\N
20	4	3000	expense	transfer	Возврат по оплате #12. Возврат клиенту	9	13	\N	2026-09-14 00:00:00	8	ProfiService	2026-09-14 01:00:04.806816	0	\N	\N	\N	\N	\N
21	1	2500	income	transfer	Оплата по заявке #10 (МОМЛЕВ)	10	14	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 01:03:36.980092	0	\N	\N	\N	\N	\N
22	2	982	expense	transfer	Себестоимость разовых позиций по заявке #10	10	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 01:03:37.039304	0	\N	\N	\N	\N	\N
23	1	2500	income	transfer	Оплата по заявке #11 (КОЖАЕВ)	11	15	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 01:08:37.735912	0	\N	\N	\N	\N	\N
24	2	1090	expense	transfer	Себестоимость разовых позиций по заявке #11	11	\N	\N	2026-09-14 00:00:00	10	forsale001@mail.ru	2026-09-14 01:08:37.79717	0	\N	\N	\N	\N	\N
25	5	796	expense	cash	salary_payment#1. Выплата зарплаты. сотруднику Артём (мастер)	\N	\N	\N	2026-09-13 00:00:00	8	ProfiService	2026-09-14 01:15:31.386373	0	\N	\N	\N	\N	\N
26	5	1241	expense	cash	salary_payment#2. Выплата зарплаты. сотруднику Михаил (мастер)	\N	\N	\N	2026-09-13 00:00:00	8	ProfiService	2026-09-14 01:15:46.361673	0	\N	\N	\N	\N	\N
27	5	4829	expense	cash	salary_payment#3. Выплата зарплаты. сотруднику Виталий (мастер)	\N	\N	\N	2026-09-13 00:00:00	8	ProfiService	2026-09-14 01:15:58.670088	0	\N	\N	\N	\N	\N
28	1	3000	income	cash	Оплата по заявке #12 (АДМАЙКИНА)	12	16	\N	2026-09-18 00:00:00	10	forsale001@mail.ru	2026-09-18 11:42:34.352006	0	\N	\N	\N	\N	\N
29	1	1500	income	transfer	Оплата по заявке #14 (ШАБРОВА Ю В)	14	17	\N	2026-09-18 00:00:00	10	forsale001@mail.ru	2026-09-18 11:48:32.05456	0	\N	\N	\N	\N	\N
30	3	500	income	transfer	Предоплата по заявке #16 (ГОГОЛЕВ А А). Предоплата при создании заявки	16	18	\N	2026-09-18 00:00:00	10	forsale001@mail.ru	2026-09-18 11:54:36.150482	0	\N	\N	\N	\N	\N
31	2	4000	expense	cash	Себестоимость разовых позиций по заявке #16	16	\N	\N	2026-09-18 00:00:00	10	forsale001@mail.ru	2026-09-18 11:55:12.38616	0	\N	\N	\N	\N	\N
32	1	2500	income	transfer	Оплата по заявке #13 (БОРИСОВА С В)	13	19	\N	2026-09-20 00:00:00	8	ProfiService	2026-09-20 19:46:02.175432	0	\N	\N	\N	\N	\N
33	1	2500	income	transfer	Оплата по заявке #20 (АРТЮХОВ)	20	20	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 14:54:22.888202	0	\N	\N	\N	\N	\N
34	1	1500	income	transfer	Оплата по заявке #21 (АЛИК)	21	21	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 14:57:05.219147	0	\N	\N	\N	\N	\N
35	1	4100	income	transfer	Оплата по заявке #22 (МАНЬШИН И В)	22	22	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:00:50.817761	0	\N	\N	\N	\N	\N
36	2	2034	expense	transfer	Себестоимость разовых позиций по заявке #22	22	\N	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:00:50.892925	0	\N	\N	\N	\N	\N
37	1	4700	income	transfer	Оплата по заявке #23 (РУСТАМ)	23	23	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:04:45.795637	0	\N	\N	\N	\N	\N
38	1	2800	income	transfer	Оплата по заявке #24 (АМИР)	24	24	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:07:42.552663	0	\N	\N	\N	\N	\N
39	2	900	expense	transfer	Себестоимость разовых позиций по заявке #24	24	\N	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:07:42.595873	0	\N	\N	\N	\N	\N
40	5	5700	expense	cash	salary_payment#4. Выплата зарплаты. сотруднику Виталий (мастер)	\N	\N	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:15:12.486858	0	\N	\N	\N	\N	\N
41	5	4133	expense	cash	salary_payment#5. Выплата зарплаты. сотруднику Михаил (мастер)	\N	\N	\N	2026-09-24 00:00:00	8	ProfiService	2026-09-24 15:15:34.299519	0	\N	\N	\N	\N	\N
\.


--
-- Data for Name: comment_attachments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.comment_attachments (id, comment_id, filename, file_path, file_size, mime_type, created_at) FROM stdin;
\.


--
-- Data for Name: customer_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_tokens (id, customer_id, token, expires_at, created_at, last_used_at) FROM stdin;
\.


--
-- Data for Name: customer_wallet_transactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_wallet_transactions (id, customer_id, amount_cents, tx_type, source, order_id, payment_id, comment, created_by_id, created_by_username, created_at) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customers (id, name, phone, email, created_at, updated_at, wallet_cents, portal_password_changed, portal_enabled, portal_password_hash, customer_kind, inn, kpp, ogrn, legal_name, legal_address, bank_name, bik, checking_account, corr_account) FROM stdin;
19	ГОГОЛЕВ А А	79022141965		2026-09-18 11:54:35.894262	2026-09-18 11:54:35.894262	0	0	1	scrypt:32768:8:1$DDGmEzs9KBuwdIap$549b915848df523035cd1d997d0adfc0f93a87b71af9d577d7de3f8c6c547600aae83a37569526d2b479e648794daaedc848bb6ff63deb63e4ac8d26de6223b7	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	ВЕРШИНИН	79278163040		2026-09-18 11:58:09.162043	2026-09-18 11:58:09.162043	0	0	1	scrypt:32768:8:1$SBpaNnm3Oq9QG6RC$0d9d11f8762c9548412def1352aae3c4f11ca694ed4d9213513308936f2cd78bbd792c449a55f4743ea61f17f940b44887acae53642366ae9b14960e3c8a8106	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	БОРИСОВ А А	79041970171	\N	2026-09-13 20:38:53.937807	2026-09-13 23:47:45.035753	0	0	1	scrypt:32768:8:1$PYDDHXXsiNBeYYKD$285dd8f9a957f28e72b0d526cf255a0a2e3646264b80f1a18d62e660ce82a7a35f6b4cac7786d65389064946a65061e64709552dd0a972e3f72c6c3b19890cde	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	Иванов Иван Иванович	79999999999		2026-09-20 21:16:42.507533	2026-09-20 21:16:42.507533	0	0	1	scrypt:32768:8:1$3S0t753WNxndet6s$5ddaf0080c46788eadf4d94c8a9cefd8d5ef55d9a2ca3575dcee0c333b80821a2404b915ae72966ae27f46958e3ffe08b9690595f40ce979d7c6898ca6c4743e	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	ТКАЧЕНКО П	79170571178	\N	2026-09-14 00:31:12.455288	2026-09-14 00:31:47.768185	0	0	1	scrypt:32768:8:1$PFSvdc1pLyEUpQm2$fafb6be8a2a9a3c26e4ad7da1a368e9940ee7e5e6d19750ca1e1efe4ef7e8907ee80b915ead513ea99203a4deb52911f333f9114232b4008d4dba039384553b6	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	ВЯЧЕСЛАВ	79084895018		2026-09-14 00:35:20.892758	2026-09-14 00:35:20.892758	0	0	1	scrypt:32768:8:1$8XE074icf0FsmnX3$8c5ce87095c3ee74ef6685486da608982623ecbc62d8053378d5c4d6553ffcce64f8287e1fea0b62a9bb1e8bc3ce431c05e2d1604c5aecd3ec7dc56243c3229e	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	ЯЦУШКО	79897738937		2026-09-14 00:43:26.187033	2026-09-14 00:43:26.187033	0	0	1	scrypt:32768:8:1$2xIBEj5GM0WKQQQp$882e178d705a5243e7c356010a363293bb6417823b2e228435a9b4b65a3d3382c33ac0d573b946915d4f5394958f11d1df758fd17839a9e88b47080726fd85ec	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	ЗАХАРОВ	79063945370		2026-09-14 00:55:03.852781	2026-09-14 00:55:03.852781	0	0	1	scrypt:32768:8:1$CB7mfwRQVlDt4eJM$ed74a03830bd8f158502a8294d98d4e3d63a8e4ec932916f92898d6fe87cdab8bc55c0993544352d6c5ace385e1a3de7093f38717ecbba71ad6b73d920eefc35	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	МОМЛЕВ	79997237404		2026-09-14 01:02:44.544251	2026-09-14 01:02:44.544251	0	0	1	scrypt:32768:8:1$oxlItP614Rurz7JB$b036f7482689b89674f8fc42b3d38e0e64b5154004e00e10e0efd44a537d9b58b2641e2763b71a743ad93541b6dcd5d9b4e0134d8a690dec8845065239de2e97	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	КОЖАЕВ	79021252861		2026-09-14 01:06:52.590528	2026-09-14 01:06:52.590528	0	0	1	scrypt:32768:8:1$ZyfgB1hQR1hAIIBU$bdb97effa5d0663ac4750b266f452ea9dd85f0fd4d85c6b5e5ee6847fff71928195d4a5acd51325c0af145b5fc03379c654bbaadc70664c525602c2ae02db59c	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	АДМАЙКИНА	79991940204		2026-09-14 00:49:52.202751	2026-09-18 11:40:01.325637	0	0	1	scrypt:32768:8:1$y5HbMqdTA6f4wv1V$67df26c4ebd2951830f5cfb7e9263207caaf512130c0d64f07c10d39c2c5df3e7537518010cc6d78b0a6e1c15dc2b4082a266ba86df466ac1f1a35775abd98cb	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	БОРИСОВА С В	79022147099		2026-09-18 11:45:05.083546	2026-09-18 11:45:05.083546	0	0	1	scrypt:32768:8:1$QSSDI3yoTSx7NmBQ$bbb2c57fc65bbf2fba16337509388897fc158907cdccda50e2a4b2f4c3cd298003543d4e92a67cf46db3f56c193dee281e1f9d8b497398c47e63c3b3e858a063	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	ШАБРОВА Ю В	79539817068		2026-09-18 11:47:32.746721	2026-09-18 11:47:32.746721	0	0	1	scrypt:32768:8:1$aLJhOSLpm8z8f43Y$ee3e1884f1ff662b8f0321e875e8163ff47d9ccbb655e1c1c0d8a64241657e4b3266893b40a39593d8f75fcf8b5916166259b1f98c0241572dda2c1069ce9be8	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	Петров Петр Петрович	78888888888		2026-09-20 21:18:43.919816	2026-09-20 21:18:43.919816	0	0	1	scrypt:32768:8:1$ZIBlRQ7x7p8GYteG$0704aae80c0ca8cb737e2d5e4411929c465fc510d874946d04c5cfc0a7f7366e03ed0a284ba89fb317c9be30ccbd495497388804e3ac707fcc323f3cf7e14226	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	ОКОЗИН Д Е	79061475657	\N	2026-09-18 11:51:21.778817	2026-09-18 11:52:11.460367	0	0	1	scrypt:32768:8:1$wFwhidrkqBVtG6uo$4780e69f15f0931c63d59cfd56a20ecc12b49eed8ed8127a84df16434d1493be96ebd83f170dc34b4ce57285824e5950e7948f8fcba3d069051df8a2f66e0e91	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	АРТЮХОВ	79867364971		2026-09-24 14:53:35.001046	2026-09-24 14:53:35.001046	0	0	1	scrypt:32768:8:1$6n1yBGTlrlaPt1kg$3403f16d9b7b5ba29c90e455a0a099dbc89e7fe98ea3f4bc00afc7be1c3aea664d8613796cec53c668ba9b01b6e7eab5c872a5a68b6d909aa9e63b729ac26c7f	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	АЛИК	79991940055		2026-09-24 14:55:52.744348	2026-09-24 14:55:52.744348	0	0	1	scrypt:32768:8:1$EKXQYnQaltTQAC1D$068dd6ee448585f05a1425ba4fb16ec6f85136da9026d25ba1a9c6e61b1b73ac53bfd67a07d79427ff5c6dc61f616f399d80701d14b52e87aa14d1463a77d041	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	МАНЬШИН И В	79176141606		2026-09-24 14:59:25.440525	2026-09-24 14:59:25.440525	0	0	1	scrypt:32768:8:1$deorELcw8UucZiuO$2e80ebb1f0e181733336b902f16f3184e605981cd1d7ae46634e783a6ee1a2ddd67045fc19b5229bf026fbceaebb8055b6ae297ee0975728f2687711ebba3ea1	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	РУСТАМ	79170564233		2026-09-24 15:03:38.441572	2026-09-24 15:03:38.441572	0	0	1	scrypt:32768:8:1$jTd78TeUMkVxajF8$dc6864740776dde86e2ad09c71345e90f1ad9e0ef6853920c1684129c47e23cbe4fed6c9a46c772e49bbec486221b714e7d6ffa3aa184d794f599c071b23c09d	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
27	АМИР	79962193496		2026-09-24 15:06:44.886088	2026-09-24 15:06:44.886088	0	0	1	scrypt:32768:8:1$cKjxAYE2ezitI6sR$8d60854c3ba4361df82b332fedfc5fa37f3a4d67724977df0acd8d3f7373bf79697355b3d4122737618414109b1218f15ab09455b025cf6abbbb4149230f6be5	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
28	МАШТАКОВ M A	79020032026		2026-09-24 15:09:53.916659	2026-09-24 15:09:53.916659	0	0	1	scrypt:32768:8:1$siXIrFTbGQUxYscJ$c8b2ca7c9a85b6baafc9a09096ad254e20a70eb07d99ecf7f457a5b9971e8f1e4cc2cad6871933408be2998b19da60d87316a1888881630a1d2fac3535620ac7	person	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: demo_visitor_events; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.demo_visitor_events (id, user_id, username, ip, user_agent, path, event_type, created_at, client_instance_id) FROM stdin;
\.


--
-- Data for Name: device_brands; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.device_brands (id, name, created_at, sort_order) FROM stdin;
1	Не указан	2026-03-03 17:47:45	0
2	-	2026-03-03 17:47:45	0
213	70mai	2026-09-11 20:01:32.818255	3
214	Acer	2026-09-11 20:01:32.818255	4
215	AGM	2026-09-11 20:01:32.818255	5
216	Alcatel	2026-09-11 20:01:32.818255	6
217	Apple	2026-09-11 20:01:32.818255	7
218	Artway	2026-09-11 20:01:32.818255	8
219	Asus	2026-09-11 20:01:32.818255	9
220	Azdome	2026-09-11 20:01:32.818255	10
221	Baseus	2026-09-11 20:01:32.818255	11
222	Beltronics	2026-09-11 20:01:32.818255	12
223	Blackview	2026-09-11 20:01:32.818255	13
224	BlackVue	2026-09-11 20:01:32.818255	14
225	Botslab	2026-09-11 20:01:32.818255	15
226	BQ	2026-09-11 20:01:32.818255	16
227	CARCAM	2026-09-11 20:01:32.818255	17
228	Clarion	2026-09-11 20:01:32.818255	18
229	Cobra	2026-09-11 20:01:32.818255	19
230	Comtec	2026-09-11 20:01:32.818255	20
231	Cubot	2026-09-11 20:01:32.818255	21
232	Cyclone	2026-09-11 20:01:32.818255	22
233	DDPAI	2026-09-11 20:01:32.818255	23
234	Digma	2026-09-11 20:01:32.818255	24
235	Doogee	2026-09-11 20:01:32.818255	25
236	Eplutus	2026-09-11 20:01:32.818255	26
237	Escort	2026-09-11 20:01:32.818255	27
238	Explay	2026-09-11 20:01:32.818255	28
239	F+	2026-09-11 20:01:32.818255	29
240	Fly	2026-09-11 20:01:32.818255	30
241	Fujida	2026-09-11 20:01:32.818255	31
242	FULLMIMAX	2026-09-11 20:01:32.818255	32
243	Garmin	2026-09-11 20:01:32.818255	33
244	Globus	2026-09-11 20:01:32.818255	34
245	Google	2026-09-11 20:01:32.818255	35
246	HINZ	2026-09-11 20:01:32.818255	36
247	Honor	2026-09-11 20:01:32.818255	37
248	HTC	2026-09-11 20:01:32.818255	38
249	Huawei	2026-09-11 20:01:32.818255	39
250	iBOX	2026-09-11 20:01:32.818255	40
251	Infinix	2026-09-11 20:01:32.818255	41
252	INOI	2026-09-11 20:01:32.818255	42
253	Inspector	2026-09-11 20:01:32.818255	43
254	Intro	2026-09-11 20:01:32.818255	44
255	Itel	2026-09-11 20:01:32.818255	45
256	JVC Kenwood	2026-09-11 20:01:32.818255	46
257	KMDRIVE	2026-09-11 20:01:32.818255	47
258	Kunfine	2026-09-11 20:01:32.818255	48
259	Lamax	2026-09-11 20:01:32.818255	49
260	Lexand	2026-09-11 20:01:32.818255	50
261	LG	2026-09-11 20:01:32.818255	51
262	Magellan	2026-09-11 20:01:32.818255	52
263	Marubox	2026-09-11 20:01:32.818255	53
264	Maxvi	2026-09-11 20:01:32.818255	54
265	Meizu	2026-09-11 20:01:32.818255	55
266	Mio	2026-09-11 20:01:32.818255	56
267	Motorola	2026-09-11 20:01:32.818255	57
268	Mystery	2026-09-11 20:01:32.818255	58
269	Navitel	2026-09-11 20:01:32.818255	59
270	Neoline	2026-09-11 20:01:32.818255	60
271	Nextbase	2026-09-11 20:01:32.818255	61
272	Nokia	2026-09-11 20:01:32.818255	62
273	Nordväl	2026-09-11 20:01:32.818255	63
274	OnePlus	2026-09-11 20:01:32.818255	64
275	OPPO	2026-09-11 20:01:32.818255	65
276	Oukitel	2026-09-11 20:01:32.818255	66
277	ParkCity	2026-09-11 20:01:32.818255	67
278	Philips	2026-09-11 20:01:32.818255	68
279	Pioneer	2026-09-11 20:01:32.818255	69
280	PlayMe	2026-09-11 20:01:32.818255	70
281	POCO	2026-09-11 20:01:32.818255	71
282	Prestige	2026-09-11 20:01:32.818255	72
283	Prology	2026-09-11 20:01:32.818255	73
284	Qstar	2026-09-11 20:01:32.818255	74
285	Radenso	2026-09-11 20:01:32.818255	75
286	Realme	2026-09-11 20:01:32.818255	76
287	Redtiger	2026-09-11 20:01:32.818255	77
288	Ritmix	2026-09-11 20:01:32.818255	78
289	Roadgid	2026-09-11 20:01:32.818255	79
290	Samsung	2026-09-11 20:01:32.818255	80
291	Sho-me	2026-09-11 20:01:32.818255	81
292	SilverStone F1	2026-09-11 20:01:32.818255	82
293	Smart Detector	2026-09-11 20:01:32.818255	83
294	Snooper	2026-09-11 20:01:32.818255	84
295	Sony	2026-09-11 20:01:32.818255	85
296	SPAWNSON	2026-09-11 20:01:32.818255	86
297	Street Storm	2026-09-11 20:01:32.818255	87
298	Supra	2026-09-11 20:01:32.818255	88
299	Tecno	2026-09-11 20:01:32.818255	89
300	Texet	2026-09-11 20:01:32.818255	90
301	Teyes	2026-09-11 20:01:32.818255	91
302	Toguard	2026-09-11 20:01:32.818255	92
303	TomTom	2026-09-11 20:01:32.818255	93
304	TrendVision	2026-09-11 20:01:32.818255	94
305	Truecam	2026-09-11 20:01:32.818255	95
306	Ulefone	2026-09-11 20:01:32.818255	96
307	UMIDIGI	2026-09-11 20:01:32.818255	97
308	Uniden	2026-09-11 20:01:32.818255	98
309	UralCB	2026-09-11 20:01:32.818255	99
310	Valentine One	2026-09-11 20:01:32.818255	100
311	Vantrue	2026-09-11 20:01:32.818255	101
312	Viofo	2026-09-11 20:01:32.818255	102
313	vivo	2026-09-11 20:01:32.818255	103
314	Whistler	2026-09-11 20:01:32.818255	104
315	Wolfbox	2026-09-11 20:01:32.818255	105
316	Xiaomi	2026-09-11 20:01:32.818255	106
319	Redmi	2026-09-13 20:35:29.797143	77
320	Atoch	2026-09-24 14:52:38.46749	109
321	Atouch	2026-09-24 14:52:49.316358	110
317	Xusheng	2026-09-11 20:01:32.818255	107
318	ZTE	2026-09-11 20:01:32.818255	108
\.


--
-- Data for Name: device_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.device_types (id, name, created_at, sort_order) FROM stdin;
1	Не указан	2026-03-03 17:47:45	0
18	Смартфон	2026-09-11 20:14:23.664228	2
19	Кнопочный телефон	2026-09-11 20:14:23.664228	3
20	Планшет	2026-09-11 20:14:23.664228	4
21	Ноутбук	2026-09-11 20:14:23.664228	5
22	Нетбук	2026-09-11 20:14:23.664228	6
23	Ультрабук	2026-09-11 20:14:23.664228	7
24	Моноблок	2026-09-11 20:14:23.664228	8
25	Системный блок	2026-09-11 20:14:23.664228	9
26	Проектор	2026-09-11 20:14:23.664228	10
27	Сканер	2026-09-11 20:14:23.664228	11
28	Видеорегистратор	2026-09-11 20:14:23.664228	12
29	Навигатор	2026-09-11 20:14:23.664228	13
30	Радар-детектор	2026-09-11 20:14:23.664228	14
31	Фитнес-трекер	2026-09-11 20:14:23.664228	15
32	Умные часы	2026-09-11 20:14:23.664228	16
33	Наушники	2026-09-11 20:14:23.664228	17
34	Портативная колонка	2026-09-11 20:14:23.664228	18
35	Веб-камера	2026-09-11 20:14:23.664228	19
36	Экшн-камера	2026-09-11 20:14:23.664228	20
37	Квадрокоптер	2026-09-11 20:14:23.664228	21
38	Игровая консоль	2026-09-11 20:14:23.664228	22
39	Портативная консоль	2026-09-11 20:14:23.664228	23
40	Геймпад	2026-09-11 20:14:23.664228	24
41	Джойстик	2026-09-11 20:14:23.664228	25
42	Руль	2026-09-11 20:14:23.664228	26
43	Электронная книга	2026-09-11 20:14:23.664228	27
44	MP3-плеер	2026-09-11 20:14:23.664228	28
45	Рация	2026-09-11 20:14:23.664228	29
46	Маршрутизатор	2026-09-11 20:14:23.664228	30
47	Модем	2026-09-11 20:14:23.664228	31
48	Wi-Fi адаптер	2026-09-11 20:14:23.664228	32
49	Bluetooth адаптер	2026-09-11 20:14:23.664228	33
50	GPS-трекер	2026-09-11 20:14:23.664228	34
51	Видеоняня	2026-09-11 20:14:23.664228	35
52	IP-камера	2026-09-11 20:14:23.664228	36
53	Домофон	2026-09-11 20:14:23.664228	37
54	Автомагнитола	2026-09-11 20:14:23.664228	38
55	Сабвуфер	2026-09-11 20:14:23.664228	39
56	Акустическая система	2026-09-11 20:14:23.664228	40
57	Power bank	2026-09-11 20:14:23.664228	41
58	Робот-пылесос	2026-09-11 20:14:23.664228	42
59	Электробритва	2026-09-11 20:14:23.664228	43
60	Машинка для стрижки	2026-09-11 20:14:23.664228	44
61	Электронная сигарета	2026-09-11 20:14:23.664228	45
62	Вейп	2026-09-11 20:14:23.664228	46
63	IQOS	2026-09-11 20:14:23.664228	47
\.


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.devices (id, customer_id, device_type_id, device_brand_id, serial_number, created_at, password, symptom_tags, appearance_tags, comment) FROM stdin;
8	8	18	319	\N	2026-09-13 20:38:54.137639	\N	Разбит экран, Не заряжается	Аппарат, Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости, Попадание влаги	\N
9	9	18	316	\N	2026-09-14 00:31:12.663854	\N	Нет изображения, Попадание влаги, Не включается	Аппарат, Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости	\N
10	10	18	251	\N	2026-09-14 00:35:21.289637	\N	Разбит экран	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
11	11	34	2	\N	2026-09-14 00:43:26.373263	\N	Хрипит динамик	Бывший в употреблении, Аппарат, зарядное уст-во, Следы эксплуатации, мелкие царапины, потертости	\N
13	13	18	217	\N	2026-09-14 00:55:04.12316	\N	Не работают микрофоны	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости, Нет возможности проверить работу faceID и камер	\N
14	14	18	299	\N	2026-09-14 01:02:44.723626	\N	Разбит экран	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
15	15	18	275	\N	2026-09-14 01:06:52.908558	\N	Разбит экран	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости	\N
12	12	18	319	\N	2026-09-14 00:49:52.382519	\N	Разбит экран	Бывший в употреблении, Аппарат	\N
16	16	28	2	\N	2026-09-18 11:45:05.322157	\N	Выключается сам по себе	Следы эксплуатации, мелкие царапины, потертости	\N
17	17	18	319	\N	2026-09-18 11:47:33.039923	\N	Не заряжается, Кнопка включения	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
18	18	28	250	\N	2026-09-18 11:51:21.9753	\N	Нет изображения с камеры	Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости	\N
19	19	18	281	\N	2026-09-18 11:54:36.082579	\N	Замена аккумулятора	Аппарат не сдан	\N
20	20	28	289	\N	2026-09-18 11:58:09.377706	\N	Включается при внешнем нагреве	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
21	21	18	319	\N	2026-09-20 21:16:42.724817	\N	Разбит экран	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости, Разбит дисплей	\N
22	22	18	319	\N	2026-09-20 21:18:44.295186	\N	Разбит экран	Бывший в употреблении, Аппарат, Разбит дисплей, Следы эксплуатации, мелкие царапины, потертости	\N
23	23	20	321	\N	2026-09-24 14:53:35.253487	\N	Замена аккумулятора	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
24	24	28	250	\N	2026-09-24 14:55:52.921058	\N	Не включается	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
25	25	18	290	\N	2026-09-24 14:59:25.603771	\N	Разбит экран	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
26	26	18	319	\N	2026-09-24 15:03:38.599154	\N	Разбит экран	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
27	27	18	290	\N	2026-09-24 15:06:45.163077	\N	Разбит экран	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости	\N
28	28	18	286	\N	2026-09-24 15:09:54.1767	\N	Цикличная перезагрузка, Нет запуска системы	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N
\.


--
-- Data for Name: diagnostics_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.diagnostics_templates (id, name, body, device_type_id, device_brand_id, model_id, sort_order, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: general_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.general_settings (id, org_name, phone, address, inn, ogrn, logo_url, currency, country, updated_at, default_warranty_days, timezone_offset, mail_server, mail_port, mail_use_tls, mail_use_ssl, mail_username, mail_password, mail_default_sender, mail_timeout, close_print_mode, auto_email_order_accepted, auto_email_status_update, auto_email_order_ready, auto_email_order_closed, sms_enabled, telegram_enabled, signature_name, signature_position, director_email, auto_email_director_order_accepted, auto_email_director_order_closed, bank_name, bik, checking_account, corr_account, kpp, ogrnip, legal_address, director_title, director_name, accountant_name, signature_url, stamp_url, phone_prefix, currency_symbol) FROM stdin;
1	Profi Service	+7 (927) 829-58-80	г. Ульяновск, проспект Ульяновский, 12е	732802001	305732817200092	http://91.209.135.93/images/ProService.png	RUB	Россия	2025-11-27 15:44:30	30	4		587	1	0				3	work_act	0	0	0	0	0	0	Demo Director	Director		1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7	₽
\.


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.inventory (id, name, inventory_date, status, notes, created_by, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: inventory_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.inventory_items (id, inventory_id, part_id, stock_quantity, actual_quantity, difference, notes, created_at) FROM stdin;
\.


--
-- Data for Name: invoice_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.invoice_items (id, invoice_id, line_type, title, qty, unit, price_cents, sum_cents, vat_label, source_order_service_id, source_order_part_id, "position", catalog_part_id, catalog_service_id) FROM stdin;
\.


--
-- Data for Name: invoice_sequences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.invoice_sequences (id, doc_type, year, last_number) FROM stdin;
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.invoices (id, number, act_number, waybill_number, issued_at, due_date, status, order_id, customer_id, buyer_kind, buyer_name, buyer_inn, buyer_kpp, buyer_ogrn, buyer_address, buyer_bank_name, buyer_bik, buyer_checking_account, buyer_corr_account, seller_snapshot, subtotal_cents, vat_mode, total_cents, comment, paid_at, paid_by_user_id, payment_id, created_by, created_at, updated_at, is_deleted, shop_sale_id) FROM stdin;
\.


--
-- Data for Name: managers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.managers (id, name, created_at, salary_rule_type, salary_rule_value, active, comment, updated_at, user_id, salary_percent_services, salary_percent_parts, salary_percent_shop_parts, branch_id) FROM stdin;
7	Manager	2026-04-07 20:10:55.118104	percent	0	0	\N	2026-09-08 22:03:57.07786	9	0	0	0	\N
\.


--
-- Data for Name: masters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.masters (id, name, created_at, salary_rule_type, salary_rule_value, active, comment, updated_at, user_id, salary_percent_services, salary_percent_parts, salary_percent_shop_parts, branch_id) FROM stdin;
7	Артём	2026-09-08 18:48:07.86649	percent	40	1	\N	2026-09-11 15:57:04.784554	13	40	\N	5	\N
6	Михаил	2026-09-07 14:27:14.926874	percent	50	1	\N	2026-09-11 15:57:14.211207	12	50	\N	50	\N
5	Виталий	2026-04-07 20:10:55.121069	percent	50	1	\N	2026-09-11 15:57:25.391758	10	50	\N	50	\N
\.


--
-- Data for Name: notification_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notification_preferences (id, user_id, notification_type, enabled, email_enabled, push_enabled, created_at, updated_at) FROM stdin;
1	8	order_status_change	0	1	1	2026-09-07 00:35:44.114396	2026-09-07 00:35:44.114396
2	8	low_stock	0	1	1	2026-09-07 00:35:44.912463	2026-09-07 00:35:44.912463
4	8	payment_received	0	1	1	2026-09-07 00:35:46.424119	2026-09-07 00:35:46.424119
3	8	new_order	0	1	0	2026-09-07 00:35:45.569633	2026-09-07 18:40:52.665929
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.notifications (id, user_id, type, title, message, entity_type, entity_id, read_at, created_at) FROM stdin;
350	13	in_app	Изменен статус заявки #25	Статус заявки #25 изменен на: Закрыт неуспешно	order	25	\N	2026-09-28 10:14:24.809356
351	13	push	Изменен статус заявки #25	Статус заявки #25 изменен на: Закрыт неуспешно	order	25	\N	2026-09-28 10:14:24.814957
134	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	\N	2026-09-13 20:43:40.885596
352	9	in_app	Изменен статус заявки #25	Статус заявки #25 изменен на: Закрыт неуспешно	order	25	\N	2026-09-28 10:14:24.829933
349	8	in_app	Статус заявки #25 изменён	Статус заявки #25 изменён на: Закрыт неуспешно	order	25	2026-09-28 10:14:48.004969	2026-09-28 10:14:24.803109
138	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Диагностика	order	4	\N	2026-09-13 20:45:01.185811
142	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Ждет запчасть	order	4	\N	2026-09-13 20:45:21.494857
146	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	\N	2026-09-13 20:45:34.586848
131	8	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: В работе у Михаила	order	4	2026-09-13 22:32:59.005444	2026-09-13 20:43:40.85299
135	8	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: Диагностика	order	4	2026-09-13 22:32:59.005444	2026-09-13 20:45:01.147834
139	8	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: Ждет запчасть	order	4	2026-09-13 22:32:59.005444	2026-09-13 20:45:21.378062
143	8	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: В работе у Михаила	order	4	2026-09-13 22:32:59.005444	2026-09-13 20:45:34.560102
150	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Готов	order	4	\N	2026-09-14 00:13:48.880979
154	9	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Выдан	order	4	\N	2026-09-14 00:14:01.125133
156	9	in_app	Изменен статус заявки #5	Статус заявки #5 изменен на: В работе у Виталия	order	5	\N	2026-09-14 00:31:52.141968
158	9	in_app	Изменен статус заявки #5	Статус заявки #5 изменен на: Готов	order	5	\N	2026-09-14 00:32:47.238956
160	9	in_app	Изменен статус заявки #5	Статус заявки #5 изменен на: В работе у Виталия	order	5	\N	2026-09-14 00:32:58.418955
162	9	in_app	Изменен статус заявки #5	Статус заявки #5 изменен на: Готов	order	5	\N	2026-09-14 00:33:52.576783
164	13	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: В работе у Артёма	order	6	\N	2026-09-14 00:35:30.042415
165	13	push	Изменен статус заявки #6	Статус заявки #6 изменен на: В работе у Артёма	order	6	\N	2026-09-14 00:35:30.051039
166	9	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: В работе у Артёма	order	6	\N	2026-09-14 00:35:30.109867
168	13	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: Готов	order	6	\N	2026-09-14 00:36:37.63919
169	13	push	Изменен статус заявки #6	Статус заявки #6 изменен на: Готов	order	6	\N	2026-09-14 00:36:37.678699
170	9	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: Готов	order	6	\N	2026-09-14 00:36:37.693554
132	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:43:40.861213
133	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:43:40.868876
136	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Диагностика	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:01.156374
137	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: Диагностика	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:01.163048
140	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Ждет запчасть	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:21.459896
141	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: Ждет запчасть	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:21.468432
144	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:34.566201
145	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: В работе у Михаила	order	4	2026-09-14 12:34:25.204776	2026-09-13 20:45:34.572618
172	9	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: В работе у Виталия	order	7	\N	2026-09-14 00:43:52.747373
174	9	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: Готов	order	7	\N	2026-09-14 00:43:56.355127
176	9	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: В работе у Виталия	order	8	\N	2026-09-14 00:50:43.168877
178	9	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: Готов	order	8	\N	2026-09-14 00:51:41.600347
182	9	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: В работе у Михаила	order	9	\N	2026-09-14 00:55:23.30403
186	9	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: Готов	order	9	\N	2026-09-14 00:56:24.809417
190	9	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: Закрыт неуспешно	order	9	\N	2026-09-14 01:00:37.831096
192	9	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: В работе у Виталия	order	10	\N	2026-09-14 01:03:10.390476
194	9	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: Готов	order	10	\N	2026-09-14 01:03:43.046928
196	9	in_app	Изменен статус заявки #11	Статус заявки #11 изменен на: В работе у Виталия	order	11	\N	2026-09-14 01:07:24.270769
198	9	in_app	Изменен статус заявки #11	Статус заявки #11 изменен на: Ждет запчасть	order	11	\N	2026-09-14 01:07:44.711712
200	9	in_app	Изменен статус заявки #11	Статус заявки #11 изменен на: В работе у Виталия	order	11	\N	2026-09-14 01:08:03.379017
202	9	in_app	Изменен статус заявки #11	Статус заявки #11 изменен на: Готов	order	11	\N	2026-09-14 01:08:41.120563
204	9	in_app	Изменен статус заявки #5	Статус заявки #5 изменен на: Выдан	order	5	\N	2026-09-14 01:09:02.564994
206	9	in_app	Изменен статус заявки #11	Статус заявки #11 изменен на: Выдан	order	11	\N	2026-09-14 01:09:15.215898
210	9	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: В работе у Михаила	order	10	\N	2026-09-14 01:11:40.601181
180	12	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: В работе у Михаила	order	9	2026-09-14 12:34:25.204776	2026-09-14 00:55:23.279651
181	12	push	Изменен статус заявки #9	Статус заявки #9 изменен на: В работе у Михаила	order	9	2026-09-14 12:34:25.204776	2026-09-14 00:55:23.286785
184	12	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: Готов	order	9	2026-09-14 12:34:25.204776	2026-09-14 00:56:24.777629
185	12	push	Изменен статус заявки #9	Статус заявки #9 изменен на: Готов	order	9	2026-09-14 12:34:25.204776	2026-09-14 00:56:24.784172
188	12	in_app	Изменен статус заявки #9	Статус заявки #9 изменен на: Закрыт неуспешно	order	9	2026-09-14 12:34:25.204776	2026-09-14 01:00:37.807761
189	12	push	Изменен статус заявки #9	Статус заявки #9 изменен на: Закрыт неуспешно	order	9	2026-09-14 12:34:25.204776	2026-09-14 01:00:37.817073
207	12	in_app	Статус заявки #10 изменён	Статус заявки #10 изменён на: В работе у Михаила	order	10	2026-09-14 12:34:25.204776	2026-09-14 01:11:40.578107
214	9	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: Выдан	order	10	\N	2026-09-14 01:11:46.150765
218	9	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: Выдан	order	7	\N	2026-09-14 01:11:59.9537
226	9	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: Выдан	order	8	\N	2026-09-14 01:12:16.455856
228	13	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: Выдан	order	6	\N	2026-09-14 01:12:26.724645
229	13	push	Изменен статус заявки #6	Статус заявки #6 изменен на: Выдан	order	6	\N	2026-09-14 01:12:26.731116
230	9	in_app	Изменен статус заявки #6	Статус заявки #6 изменен на: Выдан	order	6	\N	2026-09-14 01:12:26.753873
212	10	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: Выдан	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:11:46.116583
213	10	push	Изменен статус заявки #10	Статус заявки #10 изменен на: Выдан	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:11:46.122469
216	10	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: Выдан	order	7	2026-09-14 01:14:33.211311	2026-09-14 01:11:59.933535
217	10	push	Изменен статус заявки #7	Статус заявки #7 изменен на: Выдан	order	7	2026-09-14 01:14:33.211311	2026-09-14 01:11:59.939006
224	10	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: Выдан	order	8	2026-09-14 01:14:33.211311	2026-09-14 01:12:16.427172
225	10	push	Изменен статус заявки #8	Статус заявки #8 изменен на: Выдан	order	8	2026-09-14 01:14:33.211311	2026-09-14 01:12:16.435301
211	12	in_app	Статус заявки #10 изменён	Статус заявки #10 изменён на: Выдан	order	10	2026-09-14 12:34:25.204776	2026-09-14 01:11:46.110116
215	12	in_app	Статус заявки #7 изменён	Статус заявки #7 изменён на: Выдан	order	7	2026-09-14 12:34:25.204776	2026-09-14 01:11:59.927097
223	12	in_app	Статус заявки #8 изменён	Статус заявки #8 изменён на: Выдан	order	8	2026-09-14 12:34:25.204776	2026-09-14 01:12:16.418926
227	12	in_app	Статус заявки #6 изменён	Статус заявки #6 изменён на: Выдан	order	6	2026-09-14 12:34:25.204776	2026-09-14 01:12:26.718803
222	9	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: В работе у Артёма	order	8	\N	2026-09-14 01:12:13.23631
147	10	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: Готов	order	4	2026-09-14 01:14:33.211311	2026-09-14 00:13:48.767709
151	10	in_app	Статус заявки #4 изменён	Статус заявки #4 изменён на: Выдан	order	4	2026-09-14 01:14:33.211311	2026-09-14 00:14:01.092666
155	10	in_app	Статус заявки #5 изменён	Статус заявки #5 изменён на: В работе у Виталия	order	5	2026-09-14 01:14:33.211311	2026-09-14 00:31:52.125997
157	10	in_app	Статус заявки #5 изменён	Статус заявки #5 изменён на: Готов	order	5	2026-09-14 01:14:33.211311	2026-09-14 00:32:47.223184
159	10	in_app	Статус заявки #5 изменён	Статус заявки #5 изменён на: В работе у Виталия	order	5	2026-09-14 01:14:33.211311	2026-09-14 00:32:58.404928
161	10	in_app	Статус заявки #5 изменён	Статус заявки #5 изменён на: Готов	order	5	2026-09-14 01:14:33.211311	2026-09-14 00:33:52.438608
163	10	in_app	Статус заявки #6 изменён	Статус заявки #6 изменён на: В работе у Артёма	order	6	2026-09-14 01:14:33.211311	2026-09-14 00:35:30.03214
167	10	in_app	Статус заявки #6 изменён	Статус заявки #6 изменён на: Готов	order	6	2026-09-14 01:14:33.211311	2026-09-14 00:36:37.618231
171	10	in_app	Статус заявки #7 изменён	Статус заявки #7 изменён на: В работе у Виталия	order	7	2026-09-14 01:14:33.211311	2026-09-14 00:43:52.660749
173	10	in_app	Статус заявки #7 изменён	Статус заявки #7 изменён на: Готов	order	7	2026-09-14 01:14:33.211311	2026-09-14 00:43:56.33795
175	10	in_app	Статус заявки #8 изменён	Статус заявки #8 изменён на: В работе у Виталия	order	8	2026-09-14 01:14:33.211311	2026-09-14 00:50:43.152241
177	10	in_app	Статус заявки #8 изменён	Статус заявки #8 изменён на: Готов	order	8	2026-09-14 01:14:33.211311	2026-09-14 00:51:41.583696
179	10	in_app	Статус заявки #9 изменён	Статус заявки #9 изменён на: В работе у Михаила	order	9	2026-09-14 01:14:33.211311	2026-09-14 00:55:23.271568
183	10	in_app	Статус заявки #9 изменён	Статус заявки #9 изменён на: Готов	order	9	2026-09-14 01:14:33.211311	2026-09-14 00:56:24.770472
187	10	in_app	Статус заявки #9 изменён	Статус заявки #9 изменён на: Закрыт неуспешно	order	9	2026-09-14 01:14:33.211311	2026-09-14 01:00:37.720191
191	10	in_app	Статус заявки #10 изменён	Статус заявки #10 изменён на: В работе у Виталия	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:03:10.370547
193	10	in_app	Статус заявки #10 изменён	Статус заявки #10 изменён на: Готов	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:03:42.962036
195	10	in_app	Статус заявки #11 изменён	Статус заявки #11 изменён на: В работе у Виталия	order	11	2026-09-14 01:14:33.211311	2026-09-14 01:07:24.251648
197	10	in_app	Статус заявки #11 изменён	Статус заявки #11 изменён на: Ждет запчасть	order	11	2026-09-14 01:14:33.211311	2026-09-14 01:07:44.696617
199	10	in_app	Статус заявки #11 изменён	Статус заявки #11 изменён на: В работе у Виталия	order	11	2026-09-14 01:14:33.211311	2026-09-14 01:08:03.358169
201	10	in_app	Статус заявки #11 изменён	Статус заявки #11 изменён на: Готов	order	11	2026-09-14 01:14:33.211311	2026-09-14 01:08:41.103434
203	10	in_app	Статус заявки #5 изменён	Статус заявки #5 изменён на: Выдан	order	5	2026-09-14 01:14:33.211311	2026-09-14 01:09:02.547394
205	10	in_app	Статус заявки #11 изменён	Статус заявки #11 изменён на: Выдан	order	11	2026-09-14 01:14:33.211311	2026-09-14 01:09:15.199635
208	10	in_app	Изменен статус заявки #10	Статус заявки #10 изменен на: В работе у Михаила	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:11:40.583234
209	10	push	Изменен статус заявки #10	Статус заявки #10 изменен на: В работе у Михаила	order	10	2026-09-14 01:14:33.211311	2026-09-14 01:11:40.588394
220	10	in_app	Изменен статус заявки #8	Статус заявки #8 изменен на: В работе у Артёма	order	8	2026-09-14 01:14:33.211311	2026-09-14 01:12:13.214965
221	10	push	Изменен статус заявки #8	Статус заявки #8 изменен на: В работе у Артёма	order	8	2026-09-14 01:14:33.211311	2026-09-14 01:12:13.222101
231	10	in_app	Статус заявки #7 изменён	Статус заявки #7 изменён на: В работе у Виталия	order	7	\N	2026-09-14 01:18:00.143107
232	9	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: В работе у Виталия	order	7	\N	2026-09-14 01:18:00.395533
233	10	in_app	Статус заявки #7 изменён	Статус заявки #7 изменён на: Выдан	order	7	\N	2026-09-14 01:18:03.80458
234	9	in_app	Изменен статус заявки #7	Статус заявки #7 изменен на: Выдан	order	7	\N	2026-09-14 01:18:03.821178
148	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Готов	order	4	2026-09-14 12:34:25.204776	2026-09-14 00:13:48.851619
149	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: Готов	order	4	2026-09-14 12:34:25.204776	2026-09-14 00:13:48.864036
152	12	in_app	Изменен статус заявки #4	Статус заявки #4 изменен на: Выдан	order	4	2026-09-14 12:34:25.204776	2026-09-14 00:14:01.099964
153	12	push	Изменен статус заявки #4	Статус заявки #4 изменен на: Выдан	order	4	2026-09-14 12:34:25.204776	2026-09-14 00:14:01.10616
219	12	in_app	Статус заявки #8 изменён	Статус заявки #8 изменён на: В работе у Артёма	order	8	2026-09-14 12:34:25.204776	2026-09-14 01:12:13.209198
235	10	in_app	Статус заявки #12 изменён	Статус заявки #12 изменён на: В работе у Виталия	order	12	\N	2026-09-18 11:40:39.767681
236	9	in_app	Изменен статус заявки #12	Статус заявки #12 изменен на: В работе у Виталия	order	12	\N	2026-09-18 11:40:39.784014
237	10	in_app	Статус заявки #12 изменён	Статус заявки #12 изменён на: Готов	order	12	\N	2026-09-18 11:42:39.902364
238	9	in_app	Изменен статус заявки #12	Статус заявки #12 изменен на: Готов	order	12	\N	2026-09-18 11:42:39.919983
239	10	in_app	Статус заявки #14 изменён	Статус заявки #14 изменён на: В работе у Михаила	order	14	\N	2026-09-18 11:48:02.069405
242	9	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: В работе у Михаила	order	14	\N	2026-09-18 11:48:02.148467
243	10	in_app	Статус заявки #14 изменён	Статус заявки #14 изменён на: Готов	order	14	\N	2026-09-18 11:48:05.7794
246	9	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: Готов	order	14	\N	2026-09-18 11:48:05.920328
247	10	in_app	Статус заявки #13 изменён	Статус заявки #13 изменён на: Диагностика	order	13	\N	2026-09-18 11:48:48.760754
248	9	in_app	Изменен статус заявки #13	Статус заявки #13 изменен на: Диагностика	order	13	\N	2026-09-18 11:48:48.849913
249	10	in_app	Статус заявки #15 изменён	Статус заявки #15 изменён на: В работе у Михаила	order	15	\N	2026-09-18 11:51:44.287533
252	9	in_app	Изменен статус заявки #15	Статус заявки #15 изменен на: В работе у Михаила	order	15	\N	2026-09-18 11:51:44.31174
253	10	in_app	Статус заявки #16 изменён	Статус заявки #16 изменён на: Ждет запчасть	order	16	\N	2026-09-18 11:54:47.690143
256	9	in_app	Изменен статус заявки #16	Статус заявки #16 изменен на: Ждет запчасть	order	16	\N	2026-09-18 11:54:47.714138
257	10	in_app	Статус заявки #17 изменён	Статус заявки #17 изменён на: Диагностика	order	17	\N	2026-09-18 11:58:16.878545
260	9	in_app	Изменен статус заявки #17	Статус заявки #17 изменен на: Диагностика	order	17	\N	2026-09-18 11:58:16.940628
264	9	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: Выдан	order	14	\N	2026-09-18 15:31:40.026875
266	10	in_app	Изменен статус заявки #12	Статус заявки #12 изменен на: Выдан	order	12	\N	2026-09-18 15:33:03.220443
267	10	push	Изменен статус заявки #12	Статус заявки #12 изменен на: Выдан	order	12	\N	2026-09-18 15:33:03.226957
268	9	in_app	Изменен статус заявки #12	Статус заявки #12 изменен на: Выдан	order	12	\N	2026-09-18 15:33:03.243612
272	9	in_app	Изменен статус заявки #17	Статус заявки #17 изменен на: Закрыт неуспешно	order	17	\N	2026-09-20 11:49:39.620661
274	10	in_app	Изменен статус заявки #13	Статус заявки #13 изменен на: Готов	order	13	\N	2026-09-20 11:51:17.328584
275	10	push	Изменен статус заявки #13	Статус заявки #13 изменен на: Готов	order	13	\N	2026-09-20 11:51:17.335519
276	9	in_app	Изменен статус заявки #13	Статус заявки #13 изменен на: Готов	order	13	\N	2026-09-20 11:51:17.352633
240	12	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: В работе у Михаила	order	14	2026-09-28 10:07:03.163558	2026-09-18 11:48:02.127336
241	12	push	Изменен статус заявки #14	Статус заявки #14 изменен на: В работе у Михаила	order	14	2026-09-28 10:07:03.163558	2026-09-18 11:48:02.13409
244	12	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: Готов	order	14	2026-09-28 10:07:03.163558	2026-09-18 11:48:05.890986
245	12	push	Изменен статус заявки #14	Статус заявки #14 изменен на: Готов	order	14	2026-09-28 10:07:03.163558	2026-09-18 11:48:05.907447
250	12	in_app	Изменен статус заявки #15	Статус заявки #15 изменен на: В работе у Михаила	order	15	2026-09-28 10:07:03.163558	2026-09-18 11:51:44.293166
280	9	in_app	Изменен статус заявки #15	Статус заявки #15 изменен на: Закрыт неуспешно	order	15	\N	2026-09-24 14:49:04.651661
282	10	in_app	Изменен статус заявки #13	Статус заявки #13 изменен на: Выдан	order	13	\N	2026-09-24 14:50:04.526531
283	10	push	Изменен статус заявки #13	Статус заявки #13 изменен на: Выдан	order	13	\N	2026-09-24 14:50:04.578687
284	9	in_app	Изменен статус заявки #13	Статус заявки #13 изменен на: Выдан	order	13	\N	2026-09-24 14:50:04.593723
286	10	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: В работе у Виталия	order	20	\N	2026-09-24 14:53:55.50858
287	10	push	Изменен статус заявки #20	Статус заявки #20 изменен на: В работе у Виталия	order	20	\N	2026-09-24 14:53:55.515426
288	9	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: В работе у Виталия	order	20	\N	2026-09-24 14:53:55.533734
290	10	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: Готов	order	20	\N	2026-09-24 14:54:28.64996
291	10	push	Изменен статус заявки #20	Статус заявки #20 изменен на: Готов	order	20	\N	2026-09-24 14:54:28.755245
292	9	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: Готов	order	20	\N	2026-09-24 14:54:28.770059
294	10	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: Выдан	order	20	\N	2026-09-24 14:54:39.953284
295	10	push	Изменен статус заявки #20	Статус заявки #20 изменен на: Выдан	order	20	\N	2026-09-24 14:54:39.9586
296	9	in_app	Изменен статус заявки #20	Статус заявки #20 изменен на: Выдан	order	20	\N	2026-09-24 14:54:39.972083
298	10	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: В работе у Виталия	order	21	\N	2026-09-24 14:56:38.215611
299	10	push	Изменен статус заявки #21	Статус заявки #21 изменен на: В работе у Виталия	order	21	\N	2026-09-24 14:56:38.221729
300	9	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: В работе у Виталия	order	21	\N	2026-09-24 14:56:38.235781
302	10	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: Готов	order	21	\N	2026-09-24 14:57:09.983795
303	10	push	Изменен статус заявки #21	Статус заявки #21 изменен на: Готов	order	21	\N	2026-09-24 14:57:09.989184
304	9	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: Готов	order	21	\N	2026-09-24 14:57:10.004112
306	10	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: Выдан	order	21	\N	2026-09-24 14:57:15.034989
307	10	push	Изменен статус заявки #21	Статус заявки #21 изменен на: Выдан	order	21	\N	2026-09-24 14:57:15.042212
308	9	in_app	Изменен статус заявки #21	Статус заявки #21 изменен на: Выдан	order	21	\N	2026-09-24 14:57:15.057685
312	9	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: В работе у Михаила	order	22	\N	2026-09-24 14:59:59.594746
316	9	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: Готов	order	22	\N	2026-09-24 15:00:55.436241
278	12	in_app	Изменен статус заявки #15	Статус заявки #15 изменен на: Закрыт неуспешно	order	15	2026-09-28 10:07:03.163558	2026-09-24 14:49:04.628428
279	12	push	Изменен статус заявки #15	Статус заявки #15 изменен на: Закрыт неуспешно	order	15	2026-09-28 10:07:03.163558	2026-09-24 14:49:04.636363
310	12	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: В работе у Михаила	order	22	2026-09-28 10:07:03.163558	2026-09-24 14:59:59.572941
311	12	push	Изменен статус заявки #22	Статус заявки #22 изменен на: В работе у Михаила	order	22	2026-09-28 10:07:03.163558	2026-09-24 14:59:59.579231
314	12	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: Готов	order	22	2026-09-28 10:07:03.163558	2026-09-24 15:00:55.415391
315	12	push	Изменен статус заявки #22	Статус заявки #22 изменен на: Готов	order	22	2026-09-28 10:07:03.163558	2026-09-24 15:00:55.421861
318	12	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: Выдан	order	22	2026-09-28 10:07:03.163558	2026-09-24 15:00:59.473257
320	9	in_app	Изменен статус заявки #22	Статус заявки #22 изменен на: Выдан	order	22	\N	2026-09-24 15:00:59.496477
332	9	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: Выдан	order	23	\N	2026-09-24 15:05:07.238414
329	8	in_app	Статус заявки #23 изменён	Статус заявки #23 изменён на: Выдан	order	23	2026-09-25 02:22:39.966642	2026-09-24 15:05:07.216044
319	12	push	Изменен статус заявки #22	Статус заявки #22 изменен на: Выдан	order	22	2026-09-28 10:07:03.163558	2026-09-24 15:00:59.479818
330	12	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: Выдан	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:05:07.220936
331	12	push	Изменен статус заявки #23	Статус заявки #23 изменен на: Выдан	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:05:07.225818
324	9	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: В работе у Михаила	order	23	\N	2026-09-24 15:03:58.846769
328	9	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: Готов	order	23	\N	2026-09-24 15:05:03.178275
334	10	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: В работе у Виталия	order	24	\N	2026-09-24 15:07:18.367796
335	10	push	Изменен статус заявки #24	Статус заявки #24 изменен на: В работе у Виталия	order	24	\N	2026-09-24 15:07:18.375676
336	9	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: В работе у Виталия	order	24	\N	2026-09-24 15:07:18.393982
338	10	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: Готов	order	24	\N	2026-09-24 15:07:48.486375
339	10	push	Изменен статус заявки #24	Статус заявки #24 изменен на: Готов	order	24	\N	2026-09-24 15:07:48.492193
340	9	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: Готов	order	24	\N	2026-09-24 15:07:48.506262
342	10	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: Выдан	order	24	\N	2026-09-24 15:07:52.982997
343	10	push	Изменен статус заявки #24	Статус заявки #24 изменен на: Выдан	order	24	\N	2026-09-24 15:07:52.989457
344	9	in_app	Изменен статус заявки #24	Статус заявки #24 изменен на: Выдан	order	24	\N	2026-09-24 15:07:53.004743
346	13	in_app	Изменен статус заявки #25	Статус заявки #25 изменен на: В работе у Виталия	order	25	\N	2026-09-24 15:10:38.771072
347	13	push	Изменен статус заявки #25	Статус заявки #25 изменен на: В работе у Виталия	order	25	\N	2026-09-24 15:10:38.776932
348	9	in_app	Изменен статус заявки #25	Статус заявки #25 изменен на: В работе у Виталия	order	25	\N	2026-09-24 15:10:38.7905
261	8	in_app	Статус заявки #14 изменён	Статус заявки #14 изменён на: Выдан	order	14	2026-09-25 02:22:39.966642	2026-09-18 15:31:39.94148
265	8	in_app	Статус заявки #12 изменён	Статус заявки #12 изменён на: Выдан	order	12	2026-09-25 02:22:39.966642	2026-09-18 15:33:03.21291
269	8	in_app	Статус заявки #17 изменён	Статус заявки #17 изменён на: Закрыт неуспешно	order	17	2026-09-25 02:22:39.966642	2026-09-20 11:49:39.596692
273	8	in_app	Статус заявки #13 изменён	Статус заявки #13 изменён на: Готов	order	13	2026-09-25 02:22:39.966642	2026-09-20 11:51:17.321245
277	8	in_app	Статус заявки #15 изменён	Статус заявки #15 изменён на: Закрыт неуспешно	order	15	2026-09-25 02:22:39.966642	2026-09-24 14:49:04.618782
281	8	in_app	Статус заявки #13 изменён	Статус заявки #13 изменён на: Выдан	order	13	2026-09-25 02:22:39.966642	2026-09-24 14:50:04.520527
285	8	in_app	Статус заявки #20 изменён	Статус заявки #20 изменён на: В работе у Виталия	order	20	2026-09-25 02:22:39.966642	2026-09-24 14:53:55.45089
289	8	in_app	Статус заявки #20 изменён	Статус заявки #20 изменён на: Готов	order	20	2026-09-25 02:22:39.966642	2026-09-24 14:54:28.599909
293	8	in_app	Статус заявки #20 изменён	Статус заявки #20 изменён на: Выдан	order	20	2026-09-25 02:22:39.966642	2026-09-24 14:54:39.947786
297	8	in_app	Статус заявки #21 изменён	Статус заявки #21 изменён на: В работе у Виталия	order	21	2026-09-25 02:22:39.966642	2026-09-24 14:56:38.209688
301	8	in_app	Статус заявки #21 изменён	Статус заявки #21 изменён на: Готов	order	21	2026-09-25 02:22:39.966642	2026-09-24 14:57:09.977953
305	8	in_app	Статус заявки #21 изменён	Статус заявки #21 изменён на: Выдан	order	21	2026-09-25 02:22:39.966642	2026-09-24 14:57:15.023796
309	8	in_app	Статус заявки #22 изменён	Статус заявки #22 изменён на: В работе у Михаила	order	22	2026-09-25 02:22:39.966642	2026-09-24 14:59:59.56578
313	8	in_app	Статус заявки #22 изменён	Статус заявки #22 изменён на: Готов	order	22	2026-09-25 02:22:39.966642	2026-09-24 15:00:55.408675
317	8	in_app	Статус заявки #22 изменён	Статус заявки #22 изменён на: Выдан	order	22	2026-09-25 02:22:39.966642	2026-09-24 15:00:59.467021
321	8	in_app	Статус заявки #23 изменён	Статус заявки #23 изменён на: В работе у Михаила	order	23	2026-09-25 02:22:39.966642	2026-09-24 15:03:58.781181
325	8	in_app	Статус заявки #23 изменён	Статус заявки #23 изменён на: Готов	order	23	2026-09-25 02:22:39.966642	2026-09-24 15:05:03.14007
322	12	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: В работе у Михаила	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:03:58.826354
323	12	push	Изменен статус заявки #23	Статус заявки #23 изменен на: В работе у Михаила	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:03:58.83205
326	12	in_app	Изменен статус заявки #23	Статус заявки #23 изменен на: Готов	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:05:03.147918
327	12	push	Изменен статус заявки #23	Статус заявки #23 изменен на: Готов	order	23	2026-09-28 10:07:03.163558	2026-09-24 15:05:03.155418
333	8	in_app	Статус заявки #24 изменён	Статус заявки #24 изменён на: В работе у Виталия	order	24	2026-09-25 02:22:39.966642	2026-09-24 15:07:18.360657
337	8	in_app	Статус заявки #24 изменён	Статус заявки #24 изменён на: Готов	order	24	2026-09-25 02:22:39.966642	2026-09-24 15:07:48.479974
341	8	in_app	Статус заявки #24 изменён	Статус заявки #24 изменён на: Выдан	order	24	2026-09-25 02:22:39.966642	2026-09-24 15:07:52.976498
345	8	in_app	Статус заявки #25 изменён	Статус заявки #25 изменён на: В работе у Виталия	order	25	2026-09-25 02:22:39.966642	2026-09-24 15:10:38.744536
251	12	push	Изменен статус заявки #15	Статус заявки #15 изменен на: В работе у Михаила	order	15	2026-09-28 10:07:03.163558	2026-09-18 11:51:44.298522
254	12	in_app	Изменен статус заявки #16	Статус заявки #16 изменен на: Ждет запчасть	order	16	2026-09-28 10:07:03.163558	2026-09-18 11:54:47.695712
255	12	push	Изменен статус заявки #16	Статус заявки #16 изменен на: Ждет запчасть	order	16	2026-09-28 10:07:03.163558	2026-09-18 11:54:47.701077
258	12	in_app	Изменен статус заявки #17	Статус заявки #17 изменен на: Диагностика	order	17	2026-09-28 10:07:03.163558	2026-09-18 11:58:16.911307
259	12	push	Изменен статус заявки #17	Статус заявки #17 изменен на: Диагностика	order	17	2026-09-28 10:07:03.163558	2026-09-18 11:58:16.925788
262	12	in_app	Изменен статус заявки #14	Статус заявки #14 изменен на: Выдан	order	14	2026-09-28 10:07:03.163558	2026-09-18 15:31:40.005354
263	12	push	Изменен статус заявки #14	Статус заявки #14 изменен на: Выдан	order	14	2026-09-28 10:07:03.163558	2026-09-18 15:31:40.011671
270	12	in_app	Изменен статус заявки #17	Статус заявки #17 изменен на: Закрыт неуспешно	order	17	2026-09-28 10:07:03.163558	2026-09-20 11:49:39.602686
271	12	push	Изменен статус заявки #17	Статус заявки #17 изменен на: Закрыт неуспешно	order	17	2026-09-28 10:07:03.163558	2026-09-20 11:49:39.608257
\.


--
-- Data for Name: order_appearance_tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_appearance_tags (id, order_id, appearance_tag_id, created_at) FROM stdin;
32	4	8	2026-09-13 23:47:45.116031
33	4	16	2026-09-13 23:47:45.116031
34	4	17	2026-09-13 23:47:45.116031
35	4	18	2026-09-13 23:47:45.116031
36	4	19	2026-09-13 23:47:45.116031
37	4	20	2026-09-13 23:47:45.116031
43	5	8	2026-09-14 00:31:47.836595
44	5	16	2026-09-14 00:31:47.836595
45	5	17	2026-09-14 00:31:47.836595
46	5	18	2026-09-14 00:31:47.836595
47	5	19	2026-09-14 00:31:47.836595
48	6	16	2026-09-14 00:35:21.318418
49	6	17	2026-09-14 00:35:21.318418
50	6	18	2026-09-14 00:35:21.318418
51	6	19	2026-09-14 00:35:21.318418
52	7	16	2026-09-14 00:43:26.395081
53	7	8	2026-09-14 00:43:26.395081
54	7	14	2026-09-14 00:43:26.395081
55	7	17	2026-09-14 00:43:26.395081
56	7	18	2026-09-14 00:43:26.395081
57	7	19	2026-09-14 00:43:26.395081
58	8	16	2026-09-14 00:49:52.406044
59	9	16	2026-09-14 00:55:04.1462
60	9	8	2026-09-14 00:55:04.1462
61	9	17	2026-09-14 00:55:04.1462
62	9	18	2026-09-14 00:55:04.1462
63	9	19	2026-09-14 00:55:04.1462
64	9	2	2026-09-14 00:55:04.1462
65	10	16	2026-09-14 01:02:44.742327
66	10	17	2026-09-14 01:02:44.742327
67	10	18	2026-09-14 01:02:44.742327
68	10	19	2026-09-14 01:02:44.742327
69	11	16	2026-09-14 01:06:52.940059
70	11	8	2026-09-14 01:06:52.940059
71	11	17	2026-09-14 01:06:52.940059
72	11	18	2026-09-14 01:06:52.940059
73	11	19	2026-09-14 01:06:52.940059
74	12	16	2026-09-18 11:40:01.429528
75	12	8	2026-09-18 11:40:01.429528
76	13	17	2026-09-18 11:45:05.345527
77	13	18	2026-09-18 11:45:05.345527
78	13	19	2026-09-18 11:45:05.345527
79	14	16	2026-09-18 11:47:33.060306
80	14	17	2026-09-18 11:47:33.060306
81	14	18	2026-09-18 11:47:33.060306
82	14	19	2026-09-18 11:47:33.060306
87	15	16	2026-09-18 11:52:11.510194
88	15	17	2026-09-18 11:52:11.510194
89	15	18	2026-09-18 11:52:11.510194
90	15	19	2026-09-18 11:52:11.510194
91	16	9	2026-09-18 11:54:36.101024
92	17	16	2026-09-18 11:58:09.400148
93	17	17	2026-09-18 11:58:09.400148
94	17	18	2026-09-18 11:58:09.400148
95	17	19	2026-09-18 11:58:09.400148
96	18	16	2026-09-20 21:16:42.755659
97	18	8	2026-09-20 21:16:42.755659
98	18	17	2026-09-20 21:16:42.755659
99	18	18	2026-09-20 21:16:42.755659
100	18	19	2026-09-20 21:16:42.755659
101	18	7	2026-09-20 21:16:42.755659
102	19	16	2026-09-20 21:18:44.316298
103	19	8	2026-09-20 21:18:44.316298
104	19	7	2026-09-20 21:18:44.316298
105	19	17	2026-09-20 21:18:44.316298
106	19	18	2026-09-20 21:18:44.316298
107	19	19	2026-09-20 21:18:44.316298
108	20	16	2026-09-24 14:53:35.306413
109	20	17	2026-09-24 14:53:35.306413
110	20	18	2026-09-24 14:53:35.306413
111	20	19	2026-09-24 14:53:35.306413
112	21	16	2026-09-24 14:55:52.940378
113	21	17	2026-09-24 14:55:52.940378
114	21	18	2026-09-24 14:55:52.940378
115	21	19	2026-09-24 14:55:52.940378
116	22	16	2026-09-24 14:59:25.62259
117	22	17	2026-09-24 14:59:25.62259
118	22	18	2026-09-24 14:59:25.62259
119	22	19	2026-09-24 14:59:25.62259
120	23	16	2026-09-24 15:03:38.665739
121	23	17	2026-09-24 15:03:38.665739
122	23	18	2026-09-24 15:03:38.665739
123	23	19	2026-09-24 15:03:38.665739
124	24	16	2026-09-24 15:06:45.182425
125	24	8	2026-09-24 15:06:45.182425
126	24	17	2026-09-24 15:06:45.182425
127	24	18	2026-09-24 15:06:45.182425
128	24	19	2026-09-24 15:06:45.182425
129	25	16	2026-09-24 15:09:54.197665
130	25	17	2026-09-24 15:09:54.197665
131	25	18	2026-09-24 15:09:54.197665
132	25	19	2026-09-24 15:09:54.197665
\.


--
-- Data for Name: order_client_files; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_client_files (id, order_id, filename, file_path, file_size, mime_type, created_by, created_at) FROM stdin;
\.


--
-- Data for Name: order_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_comments (id, order_id, author_type, author_id, author_name, comment_text, is_internal, created_at, user_id, mentions) FROM stdin;
1	4	manager	\N	Admin	Смена статуса: Заказаны запчасти	0	2026-09-13 20:45:21.265097	\N	\N
2	11	manager	\N	Виталий	Смена статуса: Заказан дисплей	0	2026-09-14 01:07:44.61719	\N	\N
\.


--
-- Data for Name: order_customer_emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_customer_emails (id, order_id, customer_id, recipient_email, template_type, subject, status_name, success, error_message, created_at) FROM stdin;
\.


--
-- Data for Name: order_diagnostics_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_diagnostics_history (id, order_id, body, created_by, created_at) FROM stdin;
8	4	Замена дисплейного модуля, замена нижней платы, восстановление цепей питания	8	2026-09-13 21:44:26
9	5	Попадание влаги, не работает дисплей	10	2026-09-14 01:32:47
10	6	Замена дисплейного модуля	10	2026-09-14 01:36:37
11	7	замена микросхемы усилителя звука	10	2026-09-14 01:43:50
12	8	Замена дисплейного модуля, \nЗамена разъема питания,	10	2026-09-14 01:50:39
13	9	Аппарат реф	10	2026-09-14 01:55:20
14	10	Замена дисплейного модуля	10	2026-09-14 02:03:06
15	11	Разбит дисплей	10	2026-09-14 02:07:21
16	12	замена дисплея, замена акб	10	2026-09-18 12:40:34
17	14	замена разъема	10	2026-09-18 12:47:58
18	15	отвал матрицы камеры	10	2026-09-18 12:51:40
19	17	саморемонт	8	2026-09-20 12:49:38
20	13	Отбит элемент на мат.плате, восстановление цепи питания	8	2026-09-20 12:51:11
21	20	замена аккумулятора	8	2026-09-24 15:53:51
22	21	требуется прошивка	8	2026-09-24 15:56:33
23	22	требуется замена дисплейного модуля	8	2026-09-24 15:59:44
24	23	Нужно вытащить данные	8	2026-09-24 16:03:55
25	24	разбит дисплей	8	2026-09-24 16:07:05
26	25	Требуется прошивка аппарата с потерей данных	8	2026-09-24 16:10:34
\.


--
-- Data for Name: order_models; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_models (id, name, created_at, device_type_id, device_brand_id) FROM stdin;
1	iPhone 17e	2026-09-08 19:46:57.147712	2	8
2	iPhone 17 Pro Max	2026-09-08 19:46:57.147712	2	8
3	iPhone 17 Pro	2026-09-08 19:46:57.147712	2	8
4	iPhone 17 Air	2026-09-08 19:46:57.147712	2	8
5	iPhone 17	2026-09-08 19:46:57.147712	2	8
6	iPhone 16e	2026-09-08 19:46:57.147712	2	8
7	iPhone 16 Pro Max	2026-09-08 19:46:57.147712	2	8
8	iPhone 16 Pro	2026-09-08 19:46:57.147712	2	8
9	iPhone 16 Plus	2026-09-08 19:46:57.147712	2	8
10	iPhone 16	2026-09-08 19:46:57.147712	2	8
11	iPhone 15 Pro Max	2026-09-08 19:46:57.147712	2	8
12	iPhone 15 Pro	2026-09-08 19:46:57.147712	2	8
13	iPhone 15 Plus	2026-09-08 19:46:57.147712	2	8
14	iPhone 15	2026-09-08 19:46:57.147712	2	8
15	iPhone 14 Pro Max	2026-09-08 19:46:57.147712	2	8
16	iPhone 14 Pro	2026-09-08 19:46:57.147712	2	8
17	iPhone 14 Plus	2026-09-08 19:46:57.147712	2	8
18	iPhone 14	2026-09-08 19:46:57.147712	2	8
19	iPhone SE (3-го поколения)	2026-09-08 19:46:57.147712	2	8
20	iPhone 13 Pro Max	2026-09-08 19:46:57.147712	2	8
21	iPhone 13 Pro	2026-09-08 19:46:57.147712	2	8
22	iPhone 13	2026-09-08 19:46:57.147712	2	8
23	iPhone 13 mini	2026-09-08 19:46:57.147712	2	8
24	iPhone 12 Pro Max	2026-09-08 19:46:57.147712	2	8
25	iPhone 12 Pro	2026-09-08 19:46:57.147712	2	8
26	iPhone 12	2026-09-08 19:46:57.147712	2	8
27	iPhone 12 mini	2026-09-08 19:46:57.147712	2	8
28	iPhone SE (2-го поколения)	2026-09-08 19:46:57.147712	2	8
29	iPhone 11 Pro Max	2026-09-08 19:46:57.147712	2	8
30	iPhone 11 Pro	2026-09-08 19:46:57.147712	2	8
31	iPhone 11	2026-09-08 19:46:57.147712	2	8
32	iPhone XS Max	2026-09-08 19:46:57.147712	2	8
33	iPhone XS	2026-09-08 19:46:57.147712	2	8
34	iPhone XR	2026-09-08 19:46:57.147712	2	8
35	iPhone X	2026-09-08 19:46:57.147712	2	8
36	iPhone 8 Plus	2026-09-08 19:46:57.147712	2	8
37	iPhone 8	2026-09-08 19:46:57.147712	2	8
38	iPhone 7 Plus	2026-09-08 19:46:57.147712	2	8
39	iPhone 7	2026-09-08 19:46:57.147712	2	8
40	iPhone SE (1-го поколения)	2026-09-08 19:46:57.147712	2	8
41	iPhone 6s Plus	2026-09-08 19:46:57.147712	2	8
42	iPhone 6s	2026-09-08 19:46:57.147712	2	8
43	iPhone 6 Plus	2026-09-08 19:46:57.147712	2	8
44	iPhone 6	2026-09-08 19:46:57.147712	2	8
45	iPhone 5s	2026-09-08 19:46:57.147712	2	8
46	iPhone 5c	2026-09-08 19:46:57.147712	2	8
47	iPhone 5	2026-09-08 19:46:57.147712	2	8
48	iPhone 4s	2026-09-08 19:46:57.147712	2	8
49	iPhone 4	2026-09-08 19:46:57.147712	2	8
50	iPhone 3GS	2026-09-08 19:46:57.147712	2	8
51	iPhone 3G	2026-09-08 19:46:57.147712	2	8
52	iPhone (1-го поколения)	2026-09-08 19:46:57.147712	2	8
53	Galaxy S26 Ultra	2026-09-08 20:06:07.32053	2	74
54	Galaxy S26+	2026-09-08 20:06:07.32053	2	74
55	Galaxy S26	2026-09-08 20:06:07.32053	2	74
56	Galaxy S26 FE	2026-09-08 20:06:07.32053	2	74
57	Galaxy Z Fold 8	2026-09-08 20:06:07.32053	2	74
58	Galaxy Z Fold 8 Ultra	2026-09-08 20:06:07.32053	2	74
59	Galaxy Z Flip 8	2026-09-08 20:06:07.32053	2	74
60	Galaxy Z Flip 8 FE	2026-09-08 20:06:07.32053	2	74
61	Galaxy Z TriFold	2026-09-08 20:06:07.32053	2	74
62	Galaxy A57	2026-09-08 20:06:07.32053	2	74
63	Galaxy A37	2026-09-08 20:06:07.32053	2	74
64	Galaxy A27	2026-09-08 20:06:07.32053	2	74
65	Galaxy A17	2026-09-08 20:06:07.32053	2	74
66	Galaxy A17 4G	2026-09-08 20:06:07.32053	2	74
67	Galaxy A07	2026-09-08 20:06:07.32053	2	74
68	Galaxy A07s	2026-09-08 20:06:07.32053	2	74
69	Galaxy M57	2026-09-08 20:06:07.32053	2	74
70	Galaxy M37	2026-09-08 20:06:07.32053	2	74
71	Galaxy M17	2026-09-08 20:06:07.32053	2	74
72	Galaxy M17e	2026-09-08 20:06:07.32053	2	74
73	Galaxy M07	2026-09-08 20:06:07.32053	2	74
74	Galaxy F70 Pro	2026-09-08 20:06:07.32053	2	74
75	Galaxy F70e	2026-09-08 20:06:07.32053	2	74
76	Galaxy F56	2026-09-08 20:06:07.32053	2	74
77	Galaxy F36	2026-09-08 20:06:07.32053	2	74
78	Galaxy F17	2026-09-08 20:06:07.32053	2	74
79	Galaxy F07	2026-09-08 20:06:07.32053	2	74
80	Galaxy XCover 7 Pro	2026-09-08 20:06:07.32053	2	74
81	Galaxy S25 Ultra	2026-09-08 20:06:07.32053	2	74
82	Galaxy S25+	2026-09-08 20:06:07.32053	2	74
83	Galaxy S25	2026-09-08 20:06:07.32053	2	74
84	Galaxy S25 Edge	2026-09-08 20:06:07.32053	2	74
85	Galaxy S25 FE	2026-09-08 20:06:07.32053	2	74
86	Galaxy Z Fold 7	2026-09-08 20:06:07.32053	2	74
87	Galaxy Z Flip 7	2026-09-08 20:06:07.32053	2	74
88	Galaxy A56	2026-09-08 20:06:07.32053	2	74
89	Galaxy A36	2026-09-08 20:06:07.32053	2	74
90	Galaxy A26	2026-09-08 20:06:07.32053	2	74
91	Galaxy A16	2026-09-08 20:06:07.32053	2	74
92	Galaxy A16 5G	2026-09-08 20:06:07.32053	2	74
93	Galaxy A06	2026-09-08 20:06:07.32053	2	74
94	Galaxy M56	2026-09-08 20:06:07.32053	2	74
95	Galaxy M36	2026-09-08 20:06:07.32053	2	74
96	Galaxy M16	2026-09-08 20:06:07.32053	2	74
97	Galaxy F55	2026-09-08 20:06:07.32053	2	74
98	Galaxy F35	2026-09-08 20:06:07.32053	2	74
99	Galaxy F16	2026-09-08 20:06:07.32053	2	74
100	Galaxy XCover 7	2026-09-08 20:06:07.32053	2	74
101	Galaxy S24 Ultra	2026-09-08 20:06:07.32053	2	74
102	Galaxy S24+	2026-09-08 20:06:07.32053	2	74
103	Galaxy S24	2026-09-08 20:06:07.32053	2	74
104	Galaxy S24 FE	2026-09-08 20:06:07.32053	2	74
105	Galaxy Z Fold 6	2026-09-08 20:06:07.32053	2	74
106	Galaxy Z Flip 6	2026-09-08 20:06:07.32053	2	74
107	Galaxy A55	2026-09-08 20:06:07.32053	2	74
108	Galaxy A35	2026-09-08 20:06:07.32053	2	74
109	Galaxy A25	2026-09-08 20:06:07.32053	2	74
110	Galaxy A25 5G	2026-09-08 20:06:07.32053	2	74
111	Galaxy A15	2026-09-08 20:06:07.32053	2	74
112	Galaxy A15 5G	2026-09-08 20:06:07.32053	2	74
113	Galaxy A05	2026-09-08 20:06:07.32053	2	74
114	Galaxy A05s	2026-09-08 20:06:07.32053	2	74
115	Galaxy M55	2026-09-08 20:06:07.32053	2	74
116	Galaxy M35	2026-09-08 20:06:07.32053	2	74
117	Galaxy M15	2026-09-08 20:06:07.32053	2	74
118	Galaxy M14	2026-09-08 20:06:07.32053	2	74
119	Galaxy F54	2026-09-08 20:06:07.32053	2	74
120	Galaxy F34	2026-09-08 20:06:07.32053	2	74
121	Galaxy F15	2026-09-08 20:06:07.32053	2	74
122	Galaxy F14	2026-09-08 20:06:07.32053	2	74
123	Galaxy F05	2026-09-08 20:06:07.32053	2	74
124	Galaxy S23 Ultra	2026-09-08 20:06:07.32053	2	74
125	Galaxy S23+	2026-09-08 20:06:07.32053	2	74
126	Galaxy S23	2026-09-08 20:06:07.32053	2	74
127	Galaxy S23 FE	2026-09-08 20:06:07.32053	2	74
128	Galaxy Z Fold 5	2026-09-08 20:06:07.32053	2	74
129	Galaxy Z Flip 5	2026-09-08 20:06:07.32053	2	74
130	Galaxy A54	2026-09-08 20:06:07.32053	2	74
131	Galaxy A34	2026-09-08 20:06:07.32053	2	74
132	Galaxy A24	2026-09-08 20:06:07.32053	2	74
133	Galaxy A14	2026-09-08 20:06:07.32053	2	74
134	Galaxy A14 5G	2026-09-08 20:06:07.32053	2	74
135	Galaxy A04	2026-09-08 20:06:07.32053	2	74
136	Galaxy A04e	2026-09-08 20:06:07.32053	2	74
137	Galaxy A04s	2026-09-08 20:06:07.32053	2	74
138	Galaxy M54	2026-09-08 20:06:07.32053	2	74
139	Galaxy M34	2026-09-08 20:06:07.32053	2	74
140	Galaxy M13	2026-09-08 20:06:07.32053	2	74
141	Galaxy F23	2026-09-08 20:06:07.32053	2	74
142	Galaxy XCover 6 Pro	2026-09-08 20:06:07.32053	2	74
143	Galaxy S22 Ultra	2026-09-08 20:06:07.32053	2	74
144	Galaxy S22+	2026-09-08 20:06:07.32053	2	74
145	Galaxy S22	2026-09-08 20:06:07.32053	2	74
146	Galaxy Z Fold 4	2026-09-08 20:06:07.32053	2	74
147	Galaxy Z Flip 4	2026-09-08 20:06:07.32053	2	74
148	Galaxy A53	2026-09-08 20:06:07.32053	2	74
149	Galaxy A33	2026-09-08 20:06:07.32053	2	74
150	Galaxy A23	2026-09-08 20:06:07.32053	2	74
151	Galaxy A23 5G	2026-09-08 20:06:07.32053	2	74
152	Galaxy A13	2026-09-08 20:06:07.32053	2	74
153	Galaxy A13 5G	2026-09-08 20:06:07.32053	2	74
154	Galaxy A03	2026-09-08 20:06:07.32053	2	74
155	Galaxy A03s	2026-09-08 20:06:07.32053	2	74
156	Galaxy A03 Core	2026-09-08 20:06:07.32053	2	74
157	Galaxy M53	2026-09-08 20:06:07.32053	2	74
158	Galaxy M33	2026-09-08 20:06:07.32053	2	74
159	Galaxy M23	2026-09-08 20:06:07.32053	2	74
160	Galaxy F13	2026-09-08 20:06:07.32053	2	74
161	Galaxy XCover 5	2026-09-08 20:06:07.32053	2	74
162	Galaxy XCover Pro	2026-09-08 20:06:07.32053	2	74
163	Galaxy S21 Ultra	2026-09-08 20:06:07.32053	2	74
164	Galaxy S21+	2026-09-08 20:06:07.32053	2	74
165	Galaxy S21	2026-09-08 20:06:07.32053	2	74
166	Galaxy S21 FE	2026-09-08 20:06:07.32053	2	74
167	Galaxy Z Fold 3	2026-09-08 20:06:07.32053	2	74
168	Galaxy Z Flip 3	2026-09-08 20:06:07.32053	2	74
169	Galaxy A52	2026-09-08 20:06:07.32053	2	74
170	Galaxy A52s 5G	2026-09-08 20:06:07.32053	2	74
171	Galaxy A32	2026-09-08 20:06:07.32053	2	74
172	Galaxy A32 5G	2026-09-08 20:06:07.32053	2	74
173	Galaxy A22	2026-09-08 20:06:07.32053	2	74
174	Galaxy A22 5G	2026-09-08 20:06:07.32053	2	74
175	Galaxy A12	2026-09-08 20:06:07.32053	2	74
176	Galaxy A12 Nacho	2026-09-08 20:06:07.32053	2	74
177	Galaxy A02	2026-09-08 20:06:07.32053	2	74
178	Galaxy A02s	2026-09-08 20:06:07.32053	2	74
179	Galaxy M52	2026-09-08 20:06:07.32053	2	74
180	Galaxy M32	2026-09-08 20:06:07.32053	2	74
181	Galaxy M22	2026-09-08 20:06:07.32053	2	74
182	Galaxy M12	2026-09-08 20:06:07.32053	2	74
183	Galaxy F62	2026-09-08 20:06:07.32053	2	74
184	Galaxy F52	2026-09-08 20:06:07.32053	2	74
185	Galaxy F42	2026-09-08 20:06:07.32053	2	74
186	Galaxy F22	2026-09-08 20:06:07.32053	2	74
187	Galaxy F12	2026-09-08 20:06:07.32053	2	74
188	Galaxy Note 20 Ultra	2026-09-08 20:06:07.32053	2	74
189	Galaxy Note 20	2026-09-08 20:06:07.32053	2	74
190	Galaxy S20 Ultra	2026-09-08 20:06:07.32053	2	74
191	Galaxy S20+	2026-09-08 20:06:07.32053	2	74
192	Galaxy S20	2026-09-08 20:06:07.32053	2	74
193	Galaxy S20 FE	2026-09-08 20:06:07.32053	2	74
194	Galaxy Z Fold 2	2026-09-08 20:06:07.32053	2	74
195	Galaxy Z Flip	2026-09-08 20:06:07.32053	2	74
196	Galaxy Z Flip 5G	2026-09-08 20:06:07.32053	2	74
197	Galaxy A71	2026-09-08 20:06:07.32053	2	74
198	Galaxy A71 5G	2026-09-08 20:06:07.32053	2	74
199	Galaxy A51	2026-09-08 20:06:07.32053	2	74
200	Galaxy A51 5G	2026-09-08 20:06:07.32053	2	74
201	Galaxy A31	2026-09-08 20:06:07.32053	2	74
202	Galaxy A21	2026-09-08 20:06:07.32053	2	74
203	Galaxy A21s	2026-09-08 20:06:07.32053	2	74
204	Galaxy A11	2026-09-08 20:06:07.32053	2	74
205	Galaxy A01	2026-09-08 20:06:07.32053	2	74
206	Galaxy A01s	2026-09-08 20:06:07.32053	2	74
207	Galaxy A01 Core	2026-09-08 20:06:07.32053	2	74
208	Galaxy M51	2026-09-08 20:06:07.32053	2	74
209	Galaxy M31	2026-09-08 20:06:07.32053	2	74
210	Galaxy M31s	2026-09-08 20:06:07.32053	2	74
211	Galaxy M21	2026-09-08 20:06:07.32053	2	74
212	Galaxy M21s	2026-09-08 20:06:07.32053	2	74
213	Galaxy M11	2026-09-08 20:06:07.32053	2	74
214	Galaxy M01	2026-09-08 20:06:07.32053	2	74
215	Galaxy M01s	2026-09-08 20:06:07.32053	2	74
216	Galaxy F41	2026-09-08 20:06:07.32053	2	74
217	Unidentified	2026-09-08 22:08:56.177809	3	23
218	Zt20	2026-09-10 10:58:53.902273	\N	\N
219	Не указана	2026-09-10 12:11:27.705753	\N	\N
221	13с	2026-09-13 20:38:54.185744	\N	\N
222	Poco m3 pro	2026-09-14 00:31:12.691424	\N	\N
223	Hot 40i	2026-09-14 00:35:21.318418	\N	\N
224	YNDX-00021	2026-09-14 00:43:26.395081	\N	\N
225	9a	2026-09-14 00:49:52.406044	\N	\N
226	IPhone 16 Pro Max	2026-09-14 00:55:04.1462	\N	\N
227	Hot 11S NFC	2026-09-14 01:02:44.742327	\N	\N
228	A53	2026-09-14 01:06:52.940059	\N	\N
229	8t	2026-09-18 11:40:01.429528	\N	\N
230	Viper	2026-09-18 11:45:05.345527	\N	\N
231	Note 10s	2026-09-18 11:47:33.060306	\N	\N
232	Icon wifi signature	2026-09-18 11:51:21.994153	\N	\N
233	F6  pro	2026-09-18 11:54:36.101024	\N	\N
234	X8 gibrid gt	2026-09-18 11:58:09.400148	\N	\N
235	X19 PRO	2026-09-24 14:53:01.330576	20	321
236	LASERVISION 4К	2026-09-24 14:55:31.055146	28	\N
237	A325	2026-09-24 14:57:46.355589	18	290
238	Note 14 pro	2026-09-24 15:03:18.724677	18	319
239	Gt3	2026-09-24 15:09:02.134162	18	286
\.


--
-- Data for Name: order_parts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_parts (id, order_id, part_id, name, quantity, price, purchase_price, created_at, base_price, discount_type, discount_value, warranty_days, executor_id) FROM stdin;
\.


--
-- Data for Name: order_pins; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_pins (id, order_id, user_id, created_at) FROM stdin;
\.


--
-- Data for Name: order_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_services (id, order_id, service_id, name, quantity, price, created_at, base_price, cost_price, discount_type, discount_value, warranty_days, executor_id) FROM stdin;
11	4	\N	Замена дисплейного модуля	1	3500.0	2026-09-14 00:13:17.565477	3500.0	1018.0	\N	\N	30	\N
12	5	\N	Замена дисплейного модуля, восстановление после попадания влаги	1	3000.0	2026-09-14 00:33:33.557246	3000.0	990.0	\N	\N	30	\N
13	6	\N	Замена дисплейного модуля	1	2900.0	2026-09-14 00:36:03.49732	2900.0	910.0	\N	\N	30	\N
14	7	\N	замена микросхемы усилителя звука	1	3000.0	2026-09-14 00:47:11.095349	3000.0	\N	\N	\N	30	\N
15	8	\N	Замена дисплейного модуля, замена разъема питания	1	2400.0	2026-09-14 00:51:31.338738	2400.0	680.0	\N	\N	30	\N
16	10	\N	Замена дисплейного модуля	1	2500.0	2026-09-14 01:03:28.952057	2500.0	982.0	\N	\N	30	\N
17	11	\N	Замена дисплейного модуля	1	2500.0	2026-09-14 01:08:26.644143	2500.0	1090.0	\N	\N	30	\N
18	12	\N	Замена дисплейного модуля, замена аккумулятора	1	3000.0	2026-09-18 11:42:19.553467	3000.0	\N	\N	\N	30	\N
19	14	\N	замена разъема питания	1	1500.0	2026-09-18 11:48:26.25771	1500.0	\N	\N	\N	30	\N
22	13	\N	Восстановление цепи питания	1	2500.0	2026-09-20 11:51:56.541456	2500.0	\N	\N	\N	30	\N
23	20	\N	Замена аккумулятора	1	2500.0	2026-09-24 14:54:11.385653	2500.0	\N	\N	\N	30	\N
24	21	\N	восстановление прошивки	1	1500.0	2026-09-24 14:56:58.820478	1500.0	\N	\N	\N	30	\N
25	22	\N	Замена дисплейного модуля	1	4100.0	2026-09-24 15:00:43.93951	4100.0	2034.0	\N	\N	30	\N
26	23	\N	Копирование данных с аппарата	1	4700.0	2026-09-24 15:04:39.529687	4700.0	\N	\N	\N	30	\N
27	24	\N	Замена дисплейного модуля	1	2800.0	2026-09-24 15:07:36.502139	2800.0	900.0	\N	\N	30	\N
21	16	\N	замена аккумулятора (оригинал)	1	7500.0	2026-09-18 11:55:12.218332	7500.0	4000.0	\N	\N	30	6
\.


--
-- Data for Name: order_status_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_status_history (id, order_id, old_status_id, new_status_id, changed_by, changed_by_username, comment, created_at) FROM stdin;
48	4	\N	3	10	\N	Создание заявки	2026-09-13 21:38:54
49	4	3	10	8	ProfiService	Изменение статуса	2026-09-13 21:43:40
50	4	10	7	8	ProfiService	Изменение статуса	2026-09-13 21:45:01
51	4	7	4	8	ProfiService	Заказаны запчасти	2026-09-13 21:45:21
52	4	4	10	8	ProfiService	Изменение статуса	2026-09-13 21:45:34
53	4	10	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:13:48
54	4	13	1	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:14:00
55	5	\N	3	10	\N	Создание заявки	2026-09-14 01:31:12
56	5	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:31:52
57	5	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:32:47
58	5	13	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:32:58
59	5	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:33:52
60	6	\N	3	10	\N	Создание заявки	2026-09-14 01:35:21
61	6	3	14	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:35:29
62	6	14	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:36:37
63	7	\N	3	10	\N	Создание заявки	2026-09-14 01:43:26
64	7	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:43:52
65	7	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:43:56
66	8	\N	3	10	\N	Создание заявки	2026-09-14 01:49:52
67	8	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:50:43
68	8	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:51:41
69	9	\N	3	10	\N	Создание заявки	2026-09-14 01:55:04
70	9	3	10	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:55:23
71	9	10	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 01:56:24
72	9	13	2	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:00:37
73	10	\N	3	10	\N	Создание заявки	2026-09-14 02:02:44
74	10	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:03:10
75	10	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:03:42
76	11	\N	3	10	\N	Создание заявки	2026-09-14 02:06:52
77	11	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:07:24
78	11	12	4	10	forsale001@mail.ru	Заказан дисплей	2026-09-14 02:07:44
79	11	4	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:08:03
80	11	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:08:41
81	5	13	1	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:09:02
82	11	13	1	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:09:15
83	10	13	10	12	master@master.ru	Изменение статуса	2026-09-14 02:11:40
84	10	10	1	12	master@master.ru	Изменение статуса	2026-09-14 02:11:46
85	7	13	1	12	master@master.ru	Изменение статуса	2026-09-14 02:11:59
86	8	13	14	12	master@master.ru	Изменение статуса	2026-09-14 02:12:13
87	8	14	1	12	master@master.ru	Изменение статуса	2026-09-14 02:12:16
88	6	13	1	12	master@master.ru	Изменение статуса	2026-09-14 02:12:26
89	7	1	12	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:18:00
90	7	12	1	10	forsale001@mail.ru	Изменение статуса	2026-09-14 02:18:03
91	12	\N	3	10	\N	Создание заявки	2026-09-18 12:40:01
92	12	3	12	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:40:39
93	12	12	13	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:42:39
94	13	\N	3	10	\N	Создание заявки	2026-09-18 12:45:05
95	14	\N	3	10	\N	Создание заявки	2026-09-18 12:47:33
96	14	3	10	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:48:02
97	14	10	13	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:48:05
98	13	3	7	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:48:48
99	15	\N	3	10	\N	Создание заявки	2026-09-18 12:51:22
100	15	3	10	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:51:44
101	16	\N	3	10	\N	Создание заявки	2026-09-18 12:54:36
102	16	3	4	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:54:47
103	17	\N	3	10	\N	Создание заявки	2026-09-18 12:58:09
104	17	3	7	10	forsale001@mail.ru	Изменение статуса	2026-09-18 12:58:16
105	14	13	1	8	ProfiService	Изменение статуса	2026-09-18 16:31:39
106	12	13	1	8	ProfiService	Изменение статуса	2026-09-18 16:33:03
107	17	7	2	8	ProfiService	Изменение статуса	2026-09-20 12:49:39
108	13	7	13	8	ProfiService	Изменение статуса	2026-09-20 12:51:17
109	18	\N	3	10	\N	Создание заявки	2026-09-20 22:16:42
110	19	\N	3	10	\N	Создание заявки	2026-09-20 22:18:44
111	15	10	2	8	ProfiService	Изменение статуса	2026-09-24 15:49:04
112	13	13	1	8	ProfiService	Изменение статуса	2026-09-24 15:50:04
113	20	\N	3	8	\N	Создание заявки	2026-09-24 15:53:35
114	20	3	12	8	ProfiService	Изменение статуса	2026-09-24 15:53:55
115	20	12	13	8	ProfiService	Изменение статуса	2026-09-24 15:54:28
116	20	13	1	8	ProfiService	Изменение статуса	2026-09-24 15:54:39
117	21	\N	3	8	\N	Создание заявки	2026-09-24 15:55:52
118	21	3	12	8	ProfiService	Изменение статуса	2026-09-24 15:56:38
119	21	12	13	8	ProfiService	Изменение статуса	2026-09-24 15:57:09
120	21	13	1	8	ProfiService	Изменение статуса	2026-09-24 15:57:14
121	22	\N	3	8	\N	Создание заявки	2026-09-24 15:59:25
122	22	3	10	8	ProfiService	Изменение статуса	2026-09-24 15:59:59
123	22	10	13	8	ProfiService	Изменение статуса	2026-09-24 16:00:55
124	22	13	1	8	ProfiService	Изменение статуса	2026-09-24 16:00:59
125	23	\N	3	8	\N	Создание заявки	2026-09-24 16:03:38
126	23	3	10	8	ProfiService	Изменение статуса	2026-09-24 16:03:58
127	23	10	13	8	ProfiService	Изменение статуса	2026-09-24 16:05:03
128	23	13	1	8	ProfiService	Изменение статуса	2026-09-24 16:05:07
129	24	\N	3	8	\N	Создание заявки	2026-09-24 16:06:45
130	24	3	12	8	ProfiService	Изменение статуса	2026-09-24 16:07:18
131	24	12	13	8	ProfiService	Изменение статуса	2026-09-24 16:07:48
132	24	13	1	8	ProfiService	Изменение статуса	2026-09-24 16:07:52
133	25	\N	3	8	\N	Создание заявки	2026-09-24 16:09:54
134	25	3	12	8	ProfiService	Изменение статуса	2026-09-24 16:10:38
135	25	12	2	8	ProfiService	Изменение статуса	2026-09-28 11:14:24
\.


--
-- Data for Name: order_statuses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_statuses (id, code, name, color, is_default, sort_order, created_at, group_name, triggers_payment_modal, accrues_salary, is_archived, is_final, blocks_edit, requires_warranty, requires_comment, client_name, client_description, salary_rule_type, salary_rule_value) FROM stdin;
14	v_rabote_u_artyoma	В работе у Артёма	#00ffd5	0	2	2026-09-08 18:53:49.105647	В работе	0	0	0	0	0	0	0	\N	\N	\N	\N
10	v_rabote_u_andreya	В работе у Михаила	#998c00	0	4	2026-03-03 18:25:52	В работе	0	0	0	0	0	0	0	\N	\N	\N	\N
9	согласование	Согласование	#ffc800	0	8	2026-03-03 17:48:38	В работе	0	0	0	0	0	0	0	\N	\N	\N	\N
6	незабирашка	Незабирашка	#cccccc	0	10	2026-03-03 17:47:54	Отложенные	0	0	0	0	0	0	0	\N	\N	\N	\N
2	закрыт_неуспешно	Закрыт неуспешно	#cccccc	0	9	2026-03-03 17:47:45	Закрытые неуспешно	0	0	0	1	1	0	0	\N	\N	\N	\N
8	на_запчасти	На запчасти	#787878	0	11	2026-03-03 17:48:03	Закрытые неуспешно	0	0	0	1	1	0	0	\N	\N	\N	\N
12	v_rabote_u_sergeya	В работе у Виталия	#1d8500	0	3	2026-03-04 09:20:29	В работе	0	0	0	0	0	0	0	\N	\N	\N	\N
7	диагностика	Диагностика	#ff0000	0	0	2026-03-03 17:47:58	В работе	0	0	0	0	0	0	0	\N	\N	\N	\N
3	новый	Новый	#0084ff	1	1	2026-03-03 17:47:48	Новые	0	0	0	0	0	0	0	\N	\N	\N	\N
13	gotov	Готов	#ff6600	0	6	2026-03-08 08:51:07	Готовые	0	0	0	0	0	0	0	\N	\N	\N	\N
1	closed	Выдан	#6b6b6b	0	7	2026-03-03 17:47:45	Закрытые успешно	1	1	0	1	1	0	0	\N	\N	\N	\N
4	ждет_запчасть	Ждет запчасть	#00ffaa	0	5	2026-03-03 17:47:48	Отложенные	0	0	0	0	0	0	0	\N	\N	\N	\N
\.


--
-- Data for Name: order_symptoms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_symptoms (id, order_id, symptom_id, created_at) FROM stdin;
13	4	5	2026-09-13 23:47:45.116031
14	4	10	2026-09-13 23:47:45.116031
17	5	4	2026-09-14 00:31:47.836595
18	5	12	2026-09-14 00:31:47.836595
19	5	2	2026-09-14 00:31:47.836595
20	6	5	2026-09-14 00:35:21.318418
21	7	13	2026-09-14 00:43:26.395081
22	8	5	2026-09-14 00:49:52.406044
23	8	10	2026-09-14 00:49:52.406044
24	9	14	2026-09-14 00:55:04.1462
25	10	5	2026-09-14 01:02:44.742327
26	11	5	2026-09-14 01:06:52.940059
27	12	5	2026-09-18 11:40:01.429528
28	13	15	2026-09-18 11:45:05.345527
29	14	10	2026-09-18 11:47:33.060306
30	14	16	2026-09-18 11:47:33.060306
32	15	17	2026-09-18 11:52:11.510194
33	16	18	2026-09-18 11:54:36.101024
34	17	19	2026-09-18 11:58:09.400148
35	18	5	2026-09-20 21:16:42.755659
36	19	5	2026-09-20 21:18:44.316298
37	20	18	2026-09-24 14:53:35.306413
38	21	2	2026-09-24 14:55:52.940378
39	22	5	2026-09-24 14:59:25.62259
40	23	5	2026-09-24 15:03:38.665739
41	24	5	2026-09-24 15:06:45.182425
42	25	20	2026-09-24 15:09:54.197665
43	25	21	2026-09-24 15:09:54.197665
\.


--
-- Data for Name: order_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_templates (id, name, description, template_data, created_by, is_public, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: order_visibility_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_visibility_history (id, order_id, hidden, changed_by, changed_at, reason) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders (id, order_id, device_id, customer_id, manager_id, master_id, status, prepayment, estimated_cost, password, appearance, comment, created_at, updated_at, symptom_tags, intake_checklist, status_id, hidden, model, model_id, prepayment_cents, is_deleted, deleted_at, deleted_by_id, deleted_reason, diagnostics, branch_id) FROM stdin;
7	fa8f3dab-607e-4b6f-b8a5-4f810c707e13	11	11	7	5	новый	0.0	3000.0	\N	Бывший в употреблении, Аппарат, зарядное уст-во, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-14 01:43:26	2026-09-14 02:18:03	Хрипит динамик	\N	1	0	YNDX-00021	224	0	0	\N	\N	\N	замена микросхемы усилителя звука	1
14	059c87c3-e1ec-4776-b77e-94653ab7e7f8	17	17	7	6	новый	0.0	1500.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-18 12:47:32	2026-09-18 16:31:39	Не заряжается, Кнопка включения	\N	1	0	Note 10s	231	0	0	\N	\N	\N	замена разъема	1
12	f10a939f-8839-4f73-bd77-37acb60a9384	12	12	7	5	новый	0.0	3000.0	\N	Бывший в употреблении, Аппарат	\N	2026-09-18 12:40:01	2026-09-18 16:33:03	Разбит экран	\N	1	0	8t	229	0	0	\N	\N	\N	замена дисплея, замена акб	1
18	ac5bb7cb-bc08-457a-b46b-d3a966f3226e	21	21	7	5	новый	0.0	0.0	\N	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости, Разбит дисплей	\N	2026-09-20 22:16:42	2026-09-20 21:16:42.755659	Разбит экран	\N	3	0	13с	221	0	0	\N	\N	\N	\N	2
17	06518550-2676-4f5a-a27b-3b52694bf256	20	20	7	6	новый	0.0	0.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-18 12:58:09	2026-09-20 12:49:39	Включается при внешнем нагреве	\N	2	0	X8 gibrid gt	234	0	0	\N	\N	\N	саморемонт	1
19	68074358-9976-460e-892a-0f432492a793	22	22	7	5	новый	0.0	0.0	\N	Бывший в употреблении, Аппарат, Разбит дисплей, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-20 22:18:43	2026-09-20 21:18:44.316298	Разбит экран	\N	3	0	13с	221	0	0	\N	\N	\N	\N	1
15	e5719376-2860-432b-8b60-f6ac327ddfad	18	18	7	6	новый	0.0	3500.0	\N	Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости	наебнули дисплей, в неспешном поиске	2026-09-18 12:51:21	2026-09-24 15:49:04	Нет изображения с камеры	\N	2	0	Icon wifi signature	232	0	0	\N	\N	\N	отвал матрицы камеры	1
13	175f5f8f-8692-486e-a3a1-0d3ae5e078e9	16	16	7	5	новый	0.0	0.0	\N	Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-18 12:45:05	2026-09-24 15:50:04	Выключается сам по себе	\N	1	0	Viper	230	0	0	\N	\N	\N	Отбит элемент на мат.плате, восстановление цепи питания	1
4	5d229046-4408-4727-9d6e-b8e98f2fdeec	8	8	7	6	новый	0.0	3500.0	\N	Аппарат, Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости, Попадание влаги	\N	2026-09-13 21:38:53	2026-09-14 01:14:00	Разбит экран, Не заряжается	\N	1	0	13с	221	0	0	\N	\N	\N	Замена дисплейного модуля, замена нижней платы, восстановление цепей питания	1
21	b1592324-d882-48c6-9af8-3ecfac540e4b	24	24	7	5	новый	0.0	0.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 15:55:52	2026-09-24 15:57:14	Не включается	\N	1	0	LASERVISION 4К	236	0	0	\N	\N	\N	требуется прошивка	1
16	ad2a4bf7-c859-467a-b31c-e367b5be1c23	19	19	7	6	новый	500.0	7500.0	\N	Аппарат не сдан	\N	2026-09-18 12:54:35	2026-09-26 00:39:12	Замена аккумулятора	\N	4	0	F6  pro	233	50000	0	\N	\N	\N	\N	1
9	4dfcd210-284a-4aa4-b0de-eb1703c557f4	13	13	7	6	новый	3000.0	6000.0	\N	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости, Нет возможности проверить работу faceID и камер	\N	2026-09-14 01:55:03	2026-09-14 02:00:37	Не работают микрофоны	\N	2	0	iPhone 16 Pro Max	226	300000	0	\N	\N	\N	Аппарат реф	1
5	7877c901-f465-4370-a0f0-ec9ba3d4b8a9	9	9	7	5	новый	0.0	3000.0	\N	Аппарат, Бывший в употреблении, Следы эксплуатации, Мелкие царапины, Потертости	\N	2026-09-14 01:31:12	2026-09-14 02:09:02	Нет изображения, Попадание влаги, Не включается	\N	1	0	Poco m3 pro	222	0	0	\N	\N	\N	Попадание влаги, не работает дисплей	1
11	abe3692b-1159-4a48-905d-a9e70fa2eac1	15	15	7	5	новый	0.0	2500.0	\N	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-14 02:06:52	2026-09-14 02:09:15	Разбит экран	\N	1	0	A53	228	0	0	\N	\N	\N	Разбит дисплей	1
10	23c8ce38-9b02-438c-996b-d3b429deeb33	14	14	7	5	новый	0.0	2500.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-14 02:02:44	2026-09-14 02:11:46	Разбит экран	\N	1	0	Hot 11S NFC	227	0	0	\N	\N	\N	Замена дисплейного модуля	1
8	d839a7f5-60ab-42f4-86da-1f0973f19160	12	12	7	5	новый	0.0	2400.0	\N	Бывший в употреблении	\N	2026-09-14 01:49:52	2026-09-14 02:12:16	Разбит экран, Не заряжается	\N	1	0	9a	225	0	0	\N	\N	\N	Замена дисплейного модуля, \nЗамена разъема питания,	1
6	2be0c3cc-b7a1-4f1e-a66d-bfddc7dd51b0	10	10	7	7	новый	0.0	2900.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-14 01:35:20	2026-09-14 02:12:26	Разбит экран	\N	1	0	Hot 40i	223	0	0	\N	\N	\N	Замена дисплейного модуля	1
20	13b94a3f-e5bf-4d86-8034-eca2654a35e1	23	23	7	5	новый	0.0	2500.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 15:53:34	2026-09-24 15:54:39	Замена аккумулятора	\N	1	0	X19 PRO	235	0	0	\N	\N	\N	замена аккумулятора	1
22	e8039ffd-90f0-429c-b37f-01a666432bca	25	25	7	6	новый	0.0	4100.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 15:59:25	2026-09-24 16:00:59	Разбит экран	\N	1	0	A325	237	0	0	\N	\N	\N	требуется замена дисплейного модуля	1
23	e1ad5de5-13d8-4162-8b92-b5aff688f11b	26	26	7	6	новый	0.0	4700.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 16:03:38	2026-09-24 16:05:07	Разбит экран	\N	1	0	Note 14 pro	238	0	0	\N	\N	\N	Нужно вытащить данные	1
24	0ec3c441-118a-442b-af05-61470e1611c7	27	27	7	5	новый	0.0	2800.0	\N	Бывший в употреблении, Аппарат, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 16:06:44	2026-09-24 16:07:52	Разбит экран	\N	1	0	Galaxy A11	204	0	0	\N	\N	\N	разбит дисплей	1
25	c0c3815f-b1bd-434b-9818-a82b496176c3	28	28	7	7	новый	0.0	0.0	\N	Бывший в употреблении, Следы эксплуатации, мелкие царапины, потертости	\N	2026-09-24 16:09:53	2026-09-28 11:14:24	Цикличная перезагрузка, Нет запуска системы	\N	2	0	Gt3	239	0	0	\N	\N	\N	Требуется прошивка аппарата с потерей данных	1
\.


--
-- Data for Name: part_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.part_categories (id, name, description, created_at, updated_at, parent_id) FROM stdin;
\.


--
-- Data for Name: parts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.parts (id, name, part_number, description, price, stock_quantity, min_quantity, category, supplier, created_at, updated_at, purchase_price, unit, warranty_days, is_deleted, comment, category_id, salary_rule_type, salary_rule_value) FROM stdin;
\.


--
-- Data for Name: payment_receipts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_receipts (id, payment_id, receipt_type, status, provider, provider_receipt_id, payload, response, error, created_by_id, created_by_username, created_at, printed_at) FROM stdin;
1	12	sell	manual	\N	\N	\N	\N	\N	8	ProfiService	2026-09-14 00:59:18.453104	\N
2	13	refund	manual	\N	\N	\N	\N	\N	8	ProfiService	2026-09-14 01:00:04.856834	\N
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payments (id, order_id, amount, payment_type, payment_date, created_by, created_by_username, comment, created_at, is_cancelled, cancelled_at, cancelled_reason, cancelled_by_id, cancelled_by_username, kind, status, idempotency_key, external_provider, external_payment_id, captured_at, refunded_of_id, invoice_id) FROM stdin;
7	4	3500.0	transfer	2026-09-14 01:04:14	10	forsale001@mail.ru		2026-09-14 01:04:14	0	\N	\N	\N	\N	payment	captured	idem_1789333445791_71c4bffc4a14c8	\N	\N	2026-09-14 01:04:14	\N	\N
8	5	3000.0	cash	2026-09-14 01:33:47	10	forsale001@mail.ru		2026-09-14 01:33:47	0	\N	\N	\N	\N	payment	captured	idem_1789335218564_220833569781e8	\N	\N	2026-09-14 01:33:47	\N	\N
9	6	2900.0	transfer	2026-09-14 01:36:13	10	forsale001@mail.ru		2026-09-14 01:36:13	0	\N	\N	\N	\N	payment	captured	idem_1789335364298_7610e2d038e69	\N	\N	2026-09-14 01:36:13	\N	\N
10	7	3000.0	transfer	2026-09-14 01:47:18	10	forsale001@mail.ru		2026-09-14 01:47:18	0	\N	\N	\N	\N	payment	captured	idem_1789336028897_96b9886a1a0c58	\N	\N	2026-09-14 01:47:18	\N	\N
11	8	2400.0	transfer	2026-09-14 01:51:36	10	forsale001@mail.ru		2026-09-14 01:51:36	0	\N	\N	\N	\N	payment	captured	idem_1789336287410_4f001965b34c88	\N	\N	2026-09-14 01:51:36	\N	\N
12	9	3000.0	transfer	2026-09-14 01:55:04	10	forsale001@mail.ru	Предоплата при создании заявки	2026-09-14 01:55:04	0	\N	\N	\N	\N	deposit	captured	order_create_prepayment:4dfcd210-284a-4aa4-b0de-eb1703c557f4	\N	\N	2026-09-14 01:55:04	\N	\N
13	9	3000.0	transfer	2026-09-14 02:00:04	8	ProfiService	ВОЗВРАТ: Возврат клиенту (по оплате #12)	2026-09-14 02:00:04	0	\N	\N	\N	\N	refund	captured	\N	\N	\N	\N	12	\N
14	10	2500.0	transfer	2026-09-14 02:03:36	10	forsale001@mail.ru		2026-09-14 02:03:36	0	\N	\N	\N	\N	payment	captured	idem_1789337007565_382ffa9720e87	\N	\N	2026-09-14 02:03:36	\N	\N
15	11	2500.0	transfer	2026-09-14 02:08:37	10	forsale001@mail.ru		2026-09-14 02:08:37	0	\N	\N	\N	\N	payment	captured	idem_1789337308455_afdc5e8a11f1a8	\N	\N	2026-09-14 02:08:37	\N	\N
16	12	3000.0	cash	2026-09-18 12:42:34	10	forsale001@mail.ru		2026-09-18 12:42:34	0	\N	\N	\N	\N	payment	captured	idem_1789720951416_3a7cbcf913ed7	\N	\N	2026-09-18 12:42:34	\N	\N
17	14	1500.0	transfer	2026-09-18 12:48:32	10	forsale001@mail.ru		2026-09-18 12:48:32	0	\N	\N	\N	\N	payment	captured	idem_1789721309071_21bdc46cf18f2	\N	\N	2026-09-18 12:48:32	\N	\N
18	16	500.0	transfer	2026-09-18 12:54:36	10	forsale001@mail.ru	Предоплата при создании заявки	2026-09-18 12:54:36	0	\N	\N	\N	\N	deposit	captured	order_create_prepayment:ad2a4bf7-c859-467a-b31c-e367b5be1c23	\N	\N	2026-09-18 12:54:36	\N	\N
19	13	2500.0	transfer	2026-09-20 20:46:02	8	ProfiService		2026-09-20 20:46:02	0	\N	\N	\N	\N	payment	captured	idem_1789922753681_918f4baef3be08	\N	\N	2026-09-20 20:46:02	\N	\N
20	20	2500.0	transfer	2026-09-24 15:54:22	8	ProfiService		2026-09-24 15:54:22	0	\N	\N	\N	\N	payment	captured	idem_1790250862407_06d55ad7ee8d4	\N	\N	2026-09-24 15:54:22	\N	\N
21	21	1500.0	transfer	2026-09-24 15:57:05	8	ProfiService		2026-09-24 15:57:05	0	\N	\N	\N	\N	payment	captured	idem_1790251024753_85666f56de3e9	\N	\N	2026-09-24 15:57:05	\N	\N
22	22	4100.0	transfer	2026-09-24 16:00:50	8	ProfiService		2026-09-24 16:00:50	0	\N	\N	\N	\N	payment	captured	idem_1790251250394_b0bd2641bcc8d	\N	\N	2026-09-24 16:00:50	\N	\N
23	23	4700.0	transfer	2026-09-24 16:04:45	8	ProfiService		2026-09-24 16:04:45	0	\N	\N	\N	\N	payment	captured	idem_1790251485330_1a25e4ec8c41	\N	\N	2026-09-24 16:04:45	\N	\N
24	24	2800.0	transfer	2026-09-24 16:07:42	8	ProfiService		2026-09-24 16:07:42	0	\N	\N	\N	\N	payment	captured	idem_1790251662102_2f30f454d6b8	\N	\N	2026-09-24 16:07:42	\N	\N
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.permissions (id, name, description, created_at) FROM stdin;
1	view_orders	Просмотр заявок	2025-12-04 16:16:31
2	create_orders	Создание заявок	2025-12-04 16:16:31
3	edit_orders	Редактирование заявок	2025-12-04 16:16:31
4	delete_orders	Удаление заявок	2025-12-04 16:16:31
5	view_customers	Просмотр клиентов	2025-12-04 16:16:31
6	create_customers	Создание клиентов	2025-12-04 16:16:31
7	edit_customers	Редактирование клиентов	2025-12-04 16:16:31
8	delete_customers	Удаление клиентов	2025-12-04 16:16:31
9	view_warehouse	Просмотр склада	2025-12-04 16:16:31
10	manage_warehouse	Управление складом	2025-12-04 16:16:31
11	view_reports	Просмотр отчетов	2025-12-04 16:16:31
12	manage_settings	Управление настройками	2025-12-04 16:16:31
13	manage_users	Управление пользователями	2025-12-04 16:16:31
14	salary.view	Просмотр модуля зарплаты	2026-01-18 15:33:06
15	view_finance	Просмотр финансового модуля	2026-01-20 17:40:26
16	manage_finance	Управление финансовым модулем	2026-01-20 17:40:26
17	view_shop	Просмотр модуля Магазин	2026-01-20 17:40:26
18	manage_shop	Управление модулем Магазин	2026-01-20 17:40:26
19	view_action_logs	Просмотр логов действий	2026-01-20 17:40:26
20	manage_statuses	Управление статусами заявок	2026-01-20 17:40:26
21	view_invoices	Просмотр раздела Счета	2026-09-07 00:02:13.876278
22	manage_invoices	Создание и редактирование счетов	2026-09-07 00:02:13.876278
23	mark_invoice_paid	Отметка счетов оплаченными	2026-09-07 00:02:13.876278
\.


--
-- Data for Name: print_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.print_templates (id, name, template_type, html_content, created_at, updated_at, branch_id) FROM stdin;
2	Техническая информация для мастера	master	<div class="print-section">\r\n    <div class="print-header">\r\n        {% if settings.logo_url %}\r\n        <img src="{{ settings.logo_url }}" alt="Logo" class="print-logo">\r\n        {% endif %}\r\n        <div class="print-title">##ORG_NAME##</div>\r\n    </div>\r\n    \r\n    <h2 class="text-center mb-4">ТЕХНИЧЕСКАЯ ИНФОРМАЦИЯ</h2>\r\n    \r\n    <table class="print-info-table">\r\n        <tr>\r\n            <td>Номер заявки:</td>\r\n            <td><strong>##ORDER_ID##</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>UUID заявки:</td>\r\n            <td><small>##ORDER_UUID##</small></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Дата создания:</td>\r\n            <td>##ORDER_CREATED_AT##</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Дата обновления:</td>\r\n            <td>##ORDER_UPDATED_AT##</td>\r\n        </tr>\r\n    </table>\r\n    \r\n    <h4 class="mt-4 mb-3">Информация о клиенте:</h4>\r\n    <table class="print-info-table">\r\n        <tr>\r\n            <td>ФИО/Компания:</td>\r\n            <td><strong>##CLIENT_NAME##</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Телефон:</td>\r\n            <td>##CLIENT_PHONE##</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Email:</td>\r\n            <td>##CLIENT_EMAIL##</td>\r\n        </tr>\r\n    </table>\r\n    \r\n    <h4 class="mt-4 mb-3">Информация об устройстве:</h4>\r\n    <table class="print-info-table">\r\n        <tr>\r\n            <td>Тип устройства:</td>\r\n            <td>##DEVICE_TYPE##</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Бренд:</td>\r\n            <td>##DEVICE_BRAND##</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Серийный номер:</td>\r\n            <td>##SERIAL_NUMBER##</td>\r\n        </tr>\r\n        ##IF_PASSWORD##\r\n        <tr>\r\n            <td>Пароль:</td>\r\n            <td><strong>##PASSWORD##</strong></td>\r\n        </tr>\r\n        ##END_IF_PASSWORD##\r\n    </table>\r\n    \r\n    ##IF_APPEARANCE##\r\n    <h4 class="mt-4 mb-3">Внешний вид и комплектация:</h4>\r\n    <div class="mb-3">##APPEARANCE##</div>\r\n    ##END_IF_APPEARANCE##\r\n    \r\n    ##IF_SYMPTOMS##\r\n    <h4 class="mt-4 mb-3">Симптомы и описание неисправности:</h4>\r\n    <div class="mb-3">##SYMPTOMS##</div>\r\n    ##END_IF_SYMPTOMS##\r\n    \r\n    ##IF_COMMENT##\r\n    <h4 class="mt-4 mb-3">Комментарий:</h4>\r\n    <div class="mb-3">##COMMENT##</div>\r\n    ##END_IF_COMMENT##\r\n    \r\n    <div class="print-divider"></div>\r\n    \r\n    <h4 class="mt-4 mb-3">Ответственные лица:</h4>\r\n    <table class="print-info-table">\r\n        <tr>\r\n            <td>Менеджер:</td>\r\n            <td><strong>##MANAGER_NAME##</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Мастер:</td>\r\n            <td><strong>##MASTER_NAME##</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Статус:</td>\r\n            <td><strong>##STATUS_NAME##</strong></td>\r\n        </tr>\r\n    </table>\r\n    \r\n    <h4 class="mt-4 mb-3">Финансовая информация:</h4>\r\n    <table class="print-info-table">\r\n        <tr>\r\n            <td>Предварительная стоимость:</td>\r\n            <td><strong>##ESTIMATED_COST## ##CURRENCY##</strong></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Предоплата:</td>\r\n            <td><strong>##PREPAYMENT## ##CURRENCY##</strong></td>\r\n        </tr>\r\n    </table>\r\n    \r\n    <div class="print-footer mt-4">\r\n        <p><strong>Примечания для мастера:</strong></p>\r\n        <div style="min-height: 100px; border: 1px solid #ddd; padding: 10px; margin-top: 10px;">\r\n            <p>_________________________________________________________________</p>\r\n            <p>_________________________________________________________________</p>\r\n            <p>_________________________________________________________________</p>\r\n        </div>\r\n        \r\n        <div class="mt-4">\r\n            <div style="display: inline-block; margin-right: 100px;">\r\n                <div>Мастер: _________________</div>\r\n                <div class="print-signature-line"></div>\r\n                <div style="margin-top: 5px;">##MASTER_NAME##</div>\r\n            </div>\r\n            <div style="display: inline-block;">\r\n                <div>Дата: _________________</div>\r\n                <div class="print-signature-line"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>	2025-11-27 17:23:24	2025-11-27 20:43:24	\N
8	Счёт на оплату (B2B)	invoice_bill	<!DOCTYPE html>\n<html><head><meta charset="utf-8"><title>Счёт ##DOC_NUMBER##</title>\n<style>\n@page{size:A4;margin:12mm}\nbody{font-family:Arial,sans-serif;font-size:12px;color:#111;margin:0}\ntable{border-collapse:collapse;width:100%}\n.bank td{border:1px solid #333;padding:4px 6px;vertical-align:top}\nh1{font-size:16px;margin:16px 0 8px}\n.meta{margin:8px 0;line-height:1.4}\n.items th,.items td{border:1px solid #333;padding:4px 6px}\n.items th{background:#f3f3f3}\n.right{text-align:right}.center{text-align:center}\n.sign{margin-top:28px;display:flex;justify-content:space-between;gap:24px}\n.sign .box{width:45%;position:relative;min-height:70px}\n.sign img.sig{max-height:48px;position:absolute;left:80px;top:0}\n.sign img.stamp{max-height:90px;position:absolute;left:120px;top:-10px;opacity:.85}\n.logo{max-height:56px;margin-bottom:8px}\n.muted{color:#555}\n</style></head><body>\n##LOGO_HTML##\n<table class="bank">\n<tr>\n<td width="55%"><div class="muted">Банк получателя</div><b>##SELLER_BANK_NAME##</b><br>БИК ##SELLER_BIK##<br>К/с ##SELLER_CORR_ACCOUNT##</td>\n<td width="45%"><div class="muted">Сч. №</div><b>##SELLER_CHECKING_ACCOUNT##</b><br><div class="muted">Получатель</div>##SELLER_NAME##<br>ИНН ##SELLER_INN##</td>\n</tr>\n</table>\n<h1>Счет на оплату № ##DOC_NUMBER## от ##DOC_DATE##</h1>\n<div class="meta"><b>Поставщик:</b> ##SELLER_FULL##</div>\n<div class="meta"><b>Покупатель:</b> ##BUYER_FULL##</div>\n##DUE_HTML##\n<table class="items">\n<thead><tr>\n<th>№</th><th>Товары (работы, услуги)</th><th>Кол-во</th><th>Ед.</th><th>НДС</th><th>Цена</th><th>Сумма</th>\n</tr></thead>\n<tbody>\n<tr data-for="ITEMS">\n<td class="center">##N##</td><td>##TITLE##</td><td class="right">##QTY##</td><td class="center">##UNIT##</td>\n<td class="center">##VAT##</td><td class="right">##PRICE##</td><td class="right">##SUM##</td>\n</tr>\n</tbody>\n</table>\n<p class="right"><b>Итого к оплате: ##TOTAL##</b></p>\n<p>Всего наименований ##ITEMS_COUNT## на сумму ##TOTAL## руб.<br><b>##TOTAL_WORDS##</b></p>\n<div class="sign">\n<div class="box">Руководитель _________________<br>##SELLER_DIRECTOR##\n##SIGNATURE_HTML####STAMP_HTML##\n</div>\n<div class="box">Бухгалтер _________________<br>##SELLER_ACCOUNTANT##</div>\n</div>\n</body></html>\n	2026-09-07 00:02:13.872052	2026-09-07 00:02:13.872052	\N
9	Акт выполненных работ (B2B)	invoice_act	<!DOCTYPE html>\n<html><head><meta charset="utf-8"><title>Акт ##DOC_NUMBER##</title>\n<style>\n@page{size:A4;margin:12mm}\nbody{font-family:Arial,sans-serif;font-size:12px;color:#111}\ntable{border-collapse:collapse;width:100%}\nh1{font-size:16px;margin:12px 0}\n.items th,.items td{border:1px solid #333;padding:4px 6px}\n.items th{background:#f3f3f3}\n.right{text-align:right}.center{text-align:center}\n.meta{margin:6px 0;line-height:1.4}\n.sign{margin-top:28px;display:flex;justify-content:space-between}\n.sign .box{width:45%;position:relative;min-height:70px}\n.sign img.sig{max-height:48px;position:absolute;left:90px;top:0}\n.sign img.stamp{max-height:90px;position:absolute;left:130px;top:-10px;opacity:.85}\n.logo{max-height:56px}\n</style></head><body>\n##LOGO_HTML##\n<h1>Акт № ##DOC_NUMBER## от ##DOC_DATE##</h1>\n<div class="meta"><b>Исполнитель:</b> ##SELLER_FULL##</div>\n<div class="meta"><b>Заказчик:</b> ##BUYER_FULL##</div>\n<table class="items">\n<thead><tr><th>№</th><th>Услуга</th><th>Кол-во</th><th>Ед.</th><th>НДС</th><th>Цена</th><th>Сумма</th></tr></thead>\n<tbody>\n<tr data-for="ITEMS">\n<td class="center">##N##</td><td>##TITLE##</td><td class="right">##QTY##</td><td class="center">##UNIT##</td>\n<td class="center">##VAT##</td><td class="right">##PRICE##</td><td class="right">##SUM##</td>\n</tr>\n</tbody>\n</table>\n<p class="right"><b>Итого к оплате: ##TOTAL##</b></p>\n<p>Всего оказано услуг на сумму ##TOTAL## руб.<br><b>##TOTAL_WORDS##</b></p>\n<p>Вышеперечисленные услуги оказаны в полном объеме и в установленный срок. Заказчик не имеет претензий по качеству, срокам и объемам оказанных услуг.</p>\n<div class="sign">\n<div class="box">Исполнитель _________________<br>##SELLER_DIRECTOR##\n##SIGNATURE_HTML####STAMP_HTML##\n</div>\n<div class="box">Заказчик _________________</div>\n</div>\n</body></html>\n	2026-09-07 00:02:13.873878	2026-09-07 00:02:13.873878	\N
10	Товарная накладная (B2B)	invoice_waybill	<!DOCTYPE html>\n<html><head><meta charset="utf-8"><title>Накладная ##DOC_NUMBER##</title>\n<style>\n@page{size:A4;margin:10mm}\nbody{font-family:Arial,sans-serif;font-size:11px;color:#111}\ntable{border-collapse:collapse;width:100%}\nh1{font-size:15px;text-align:center;margin:10px 0}\n.meta td{padding:2px 4px;vertical-align:top}\n.items th,.items td{border:1px solid #333;padding:3px 4px}\n.items th{background:#f3f3f3;font-size:10px}\n.right{text-align:right}.center{text-align:center}\n.sign{margin-top:20px}\n.sign img.sig{max-height:40px;vertical-align:middle}\n.sign img.stamp{max-height:80px;vertical-align:middle;opacity:.85}\n.logo{max-height:48px}\n</style></head><body>\n##LOGO_HTML##\n<table class="meta" style="width:100%;margin-bottom:8px">\n<tr><td width="50%"><b>Номер документа</b> ##DOC_NUMBER##</td><td><b>Дата</b> ##DOC_DATE##</td></tr>\n</table>\n<h1>ТОВАРНАЯ НАКЛАДНАЯ</h1>\n<table class="meta">\n<tr><td width="160">Грузополучатель</td><td>##BUYER_FULL##</td></tr>\n<tr><td>Поставщик</td><td>##SELLER_FULL##</td></tr>\n<tr><td>Плательщик</td><td>##BUYER_FULL##</td></tr>\n<tr><td>Основание</td><td>##BASIS##</td></tr>\n</table>\n<table class="items" style="margin-top:10px">\n<thead><tr>\n<th>№</th><th>Товар</th><th>Ед.</th><th>Кол-во</th><th>Цена</th><th>Сумма без НДС</th><th>НДС</th><th>Сумма с НДС</th>\n</tr></thead>\n<tbody>\n<tr data-for="ITEMS">\n<td class="center">##N##</td><td>##TITLE##</td><td class="center">##UNIT##</td><td class="right">##QTY##</td>\n<td class="right">##PRICE##</td><td class="right">##SUM##</td><td class="center">##VAT##</td><td class="right">##SUM##</td>\n</tr>\n</tbody>\n</table>\n<p class="right"><b>Всего отпущено на сумму ##TOTAL_WORDS##</b> (##TOTAL##)</p>\n<div class="sign">\n<p>Отпуск груза разрешил _________________ ##SELLER_DIRECTOR## ##SIGNATURE_HTML## ##STAMP_HTML##</p>\n<p>Главный (старший) бухгалтер _________________ ##SELLER_ACCOUNTANT##</p>\n<p>Груз получил грузополучатель _________________</p>\n</div>\n</body></html>\n	2026-09-07 00:02:13.875197	2026-09-07 00:02:13.875197	\N
13	Email: Заказ готов	order_ready	<div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">\n<h2 style="color: #333;">Заказ готов к выдаче</h2>\n<p>Здравствуйте, ##CLIENT_NAME##!</p>\n<p>Ваша заявка <strong>##ORDER_NUMBER##</strong> готова. Можете приезжать за устройством.</p>\n<p><strong>Напоминание по заявке:</strong><br>Устройство: ##ORDER_DEVICE_TYPE####ORDER_DEVICE_BRAND####ORDER_MODEL##<br>Неисправность: ##DIAGNOSTIC##<br>Выполненные работы: ##ORDER_WORK_DONE##</p>\n<p>Если у вас несколько заявок &mdash; это данные именно по заявке ##ORDER_NUMBER##.</p>\n<p>Ждём вас. С уважением,<br>&laquo;Profi Service&raquo;.</p>\n</div>	2026-09-07 00:22:39.073795	2026-09-07 18:37:43.70431	\N
11	Email: Заказ принят	order_accepted	<div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">\n<h2 style="color: #333;">Заказ принят</h2>\n<p>Здравствуйте, ##CLIENT_NAME##!</p>\n<p>Ваша заявка <strong>##ORDER_NUMBER##</strong> успешно принята в работу. Мы свяжемся с вами при необходимости и сообщим о готовности.</p>\n<p><strong>Личный кабинет:</strong><br>Задать пароль (ссылка действует 2 дня): <a>##PORTAL_SETUP_URL##</a><br>Вход: <a>##PORTAL_URL##</a><br>Логин (телефон): <strong>##PORTAL_LOGIN##</strong></p>\n<p>После установки пароля в кабинете можно отслеживать статус заявки.</p>\n<p>Спасибо за обращение! С уважением,<br>&laquo;Profi Service&raquo;.</p>\n</div>	2026-09-07 00:22:39.032741	2026-09-07 18:38:11.144253	\N
12	Email: Смена статуса	order_status_update	<div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">\n<h2 style="color: #333;">Обновление по заявке ##ORDER_NUMBER##</h2>\n<p>Здравствуйте, ##CLIENT_NAME##!</p>\n<p>Статус вашей заявки изменён: <strong>##STATUS_NAME##</strong>.</p>\n<p>Описание неисправности: ##DIAGNOSTIC##</p>\n<p>Добавлено фото в заявке: ##PHOTO_COUNT##</p>\n<p>Дата обновления: ##UPDATED_AT##</p>\n<p>Подробности вы можете посмотреть в личном кабинете. С уважением,<br>&laquo;Profi Service&raquo;.</p>\n</div>	2026-09-07 00:22:39.051285	2026-09-07 18:38:24.676793	\N
15	Директор: Заказ принят	director_order_accepted	\n<div style="font-family: Arial, sans-serif; max-width: 600px;">\n<h2>Новая заявка принята</h2>\n<table border="1" style="border-collapse: collapse; width: 100%; margin: 1em 0;">\n<tbody><tr><th colspan="2" style="">Заявка ##ORDER_NUMBER## (##ORDER_UUID##)</th></tr>\n<tr><td><strong>Дата создания</strong></td><td>##CREATED_AT##</td></tr>\n<tr><td><strong>Статус</strong></td><td>##STATUS_NAME##</td></tr>\n<tr><td><strong>Клиент</strong></td><td>##CLIENT_NAME##</td></tr>\n<tr><td><strong>Телефон</strong></td><td>##CLIENT_PHONE##</td></tr>\n<tr><td><strong>Email</strong></td><td>##CLIENT_EMAIL##</td></tr>\n<tr><td><strong>Устройство</strong></td><td>##DEVICE_TYPE## ##DEVICE_BRAND## ##MODEL##</td></tr>\n<tr><td><strong>Симптомы / описание</strong></td><td>##SYMPTOM_TAGS## ##COMMENT##</td></tr>\n<tr><td><strong>Внешний вид</strong></td><td>##APPEARANCE##</td></tr>\n<tr><td><strong>Менеджер</strong></td><td>##MANAGER_NAME##</td></tr>\n<tr><td><strong>Мастер</strong></td><td>##MASTER_NAME##</td></tr>\n<tr><td><strong>Предоплата</strong></td><td>##PREPAYMENT##</td></tr>\n<tr><td><strong>Обновлено</strong></td><td>##UPDATED_AT##</td></tr>\n</tbody></table>\n</div>\n            	2026-09-07 00:22:39.112835	2026-09-07 00:22:39.112835	\N
16	Директор: Заказ закрыт (отчет)	director_order_closed_report	\n<div style="font-family: Arial, sans-serif; max-width: 600px;">\n<h2>Заявка закрыта: финансовый отчёт</h2>\n<table border="1" style="border-collapse: collapse; width: 100%; margin: 1em 0;">\n<tbody><tr><th colspan="2" style="">Заявка ##ORDER_NUMBER## (##ORDER_UUID##)</th></tr>\n<tr><td><strong>Клиент</strong></td><td>##CLIENT_NAME## (##CLIENT_PHONE##)</td></tr>\n<tr><td><strong>Устройство</strong></td><td>##DEVICE_TYPE## ##DEVICE_BRAND## ##MODEL##</td></tr>\n<tr><td><strong>Статус</strong></td><td>##STATUS_NAME##</td></tr>\n<tr><td><strong>Менеджер</strong></td><td>##MANAGER_NAME##</td></tr>\n<tr><td><strong>Мастер</strong></td><td>##MASTER_NAME##</td></tr>\n</tbody></table>\n<h3>Касса и выручка</h3>\n<table border="1" style="border-collapse: collapse; width: 100%; margin: 1em 0;">\n<tbody><tr><td><strong>Сумма заявки (итого)</strong></td><td>##ORDER_TOTAL##</td></tr>\n<tr><td><strong>Поступило (оплачено)</strong></td><td>##TOTAL_PAID##</td></tr>\n</tbody></table>\n<h3>Расходы и прибыль</h3>\n<table border="1" style="border-collapse: collapse; width: 100%; margin: 1em 0;">\n<tbody><tr><td><strong>Себестоимость запчастей</strong></td><td>##COST_PARTS##</td></tr>\n<tr><td><strong>Себестоимость услуг</strong></td><td>##COST_SERVICES##</td></tr>\n<tr><td><strong>Общая себестоимость</strong></td><td>##TOTAL_COST##</td></tr>\n<tr><td><strong>Списано со склада (запчасти)</strong></td><td>##WAREHOUSE_WRITEOFF##</td></tr>\n<tr><td><strong>Начисленная зарплата</strong></td><td>##SALARY_AMOUNT##</td></tr>\n<tr><td><strong>Прибыль</strong></td><td>##PROFIT_AMOUNT##</td></tr>\n</tbody></table>\n<p><strong>Обновлено:</strong> ##UPDATED_AT##</p>\n</div>\n            	2026-09-07 00:22:39.130453	2026-09-07 00:22:39.130453	\N
14	Email: Заказ закрыт + Спасибо	order_closed_thanks	<div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">\n<h2 style="color: #333;">Спасибо за обращение!</h2>\n<p>Здравствуйте, ##CLIENT_NAME##!</p>\n<p>Заявка <strong>##ORDER_NUMBER##</strong> закрыта. Надеемся, вы остались довольны результатом.</p>\n<p>Нам очень важна обратная связь. Если у вас найдётся минута &mdash; оставьте, пожалуйста, отзыв. Это поможет другим клиентам и нам становиться лучше.</p>\n<p><strong>Оставить отзыв:</strong><br><a href="https://yandex.ru/maps/org/profi_servis/242638043119">Яндекс.Карты &mdash; Profi Service</a><br><a href="https://2gis.ru/ulyanovsk/gallery/firm/70000001088242459">2ГИС &mdash; Profi Service</a></p>\n<p>Напоминание: по заявке ##ORDER_NUMBER## было отремонтировано устройство ##ORDER_DEVICE_TYPE####ORDER_DEVICE_BRAND####ORDER_MODEL## (##DIAGNOSTIC##).</p>\n<p>Будем рады видеть вас снова. С уважением,<br>&laquo;Profi Service&raquo;.</p>\n</div>	2026-09-07 00:22:39.093152	2026-09-07 15:49:51.797951	\N
7	Акт выполненных работ	work_act	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Акт выполненных работ</h1>\n<p>№ заказа <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li>Гарантийный ремонт производится в срок от 1 до 7 дней после поступления запчастей.</li>\n<li>Выход устройства из строя в результате действий пользователя или заражения вирусами гарантийным случаем не является.</li>\n<li>Исполнитель предоставляет гарантию на ремонт в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</li>\n<li>Гарантийное обслуживание производится по адресу, указанному в Акте, и только при наличии у Заказчика Акта сдачи-приемки работ, подписанного обеими сторонами.</li>\n<li>Исполнитель несет ответственность только за услуги, оказанные в соответствии с данным Договором.</li>\n<li>Ремонт и обслуживание оборудования осуществляются в соответствии с требованиями нормативных документов, в том числе ГОСТ 12.2006-87 п.9.1, ГОСТР 50377-92 п.2.1.4, ГОСТР 50936-96, ГОСТ Р 50938-96, и согласно Федеральному Закону &laquo;О защите прав потребителей&raquo;.</li>\n<li>Исполнитель не несет гарантийных обязательств в случаях отсутствия или повреждения гарантийной пломбы Исполнителя, внесения каких-либо изменений в конфигурацию оборудования, в том числе программное обеспечение устройства, в случае замены узлов, комплектующих или расходных материалов, в случае установки или настройки программного обеспечения, в случае монтажных работ, работ по администрированию без присутствия представителя Исполнителя.</li>\n<li>Требования по устранению недостатков оказанных услуг принимаются Исполнителем только в письменном виде и при условии выполнения установленных производителем правил эксплуатации оборудования.</li>\n<li>Установленные узлы или расходные материалы возврату не подлежат.</li>\n</ol>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Заказчик</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Исполнитель</strong></td>\n<td>##COMPANY_NAME##</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Наименование работ (услуг) / товара</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Кол-во</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Итого:</strong></td>\n<td><strong>##TOTAL_ITEMS####CURRENCY##</strong></td>\n</tr>\n</tbody>\n</table>\n<p><strong>Работы выполнены в полном объёме, в срок и с надлежащим качеством. Заказчик претензий по объёму, срокам и качеству не имеет. Стоимость работ (услуг) и товаров Заказчиком принята.</strong></p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Исполнитель</strong>: __________________ / ##EMPLOYEE_NAME##</p>\n</td>\n<td>\n<p><strong>Заказчик</strong>: __________________ / ##CLIENT_NAME##</p>\n</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>	2026-02-22 18:57:22	2026-09-20 22:10:38.935867	\N
4	Квитанция для клиента	customer	<table style="width: 100%; height: 355.062px;" border="1">\n<tbody>\n<tr style="height: 355.062px;">\n<td style="width: 63.8403%;">\n<h1>Приемная квитанция</h1>\n<p>Заказ <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Стоимость услуг определяется сервис-инженером только после проведения диагностики оборудования.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сроки ремонта устанавливаются в зависимости от наличия запчастей и сложности выполнения работ.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Аппараты принимаются на ремонт/диагностику без SIM карт и карт памяти, а также зарядных устройств, гарнитур, кабелей и других аксессуаров, кроме тех случаев, когда это необходимо для диагностики. Такой случай фиксируется в квитанции дополнительно. Исполнитель не несет ответственности за сохранность перечисленных устройств, при отсутствии записи о них в квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Оборудование с согласия клиента принято без разборки и проверки неисправностей. Клиент согласен, что все неисправности и внутренние повреждения, которые могут быть обнаружены в оборудовании при техническом обслуживании, возникли до приема оборудования по данной квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик согласен на обработку персональных данных, а также несет ответственность за достоверность предоставленной информации. Сервисный центр не несет ответственности за сохранность данных, хранящихся в памяти (носителе памяти) оборудования, сданного в ремонт.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Исполнитель предоставляет гарантию на ремонт узлов оборудования до 14 дней на установленные комплектующие в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик обязан проверить работоспособность оборудования или настроенного программного обеспечения в присутствии сервис-инженера.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Установленные узлы или расходные материалы возврату не подлежат.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">В случае утери квитанции выдача аппарата производится при предъявлении паспорта лица, сдававшего аппарат и письменного заявления.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сданный в ремонт или на диагностику аппарат должен быть получен в течение 30 дней с момента извещения (в случае недоступности отправляется SMS на номер телефона). При невыполнении этого требования взимается пеня в размере 10 рублей за каждый день просрочки. Аппараты, невостребованные в течение 90 дней, могут быть реализованы в установленном законом порядке для погашения задолженности Заказчика перед Исполнителем. *Правила бытового обслуживания населения в РФ, глава IV, пункт 15.</span></li>\n</ol>\n</td>\n<td style="width: 36.1597%;">\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td colspan="2">\n<p><strong>Предварительная стоимость: ##ESTIMATED_COST####CURRENCY##</strong></p>\n<p><strong>Предоплата: ##TOTAL_PAID## (##total.paid.words##)</strong></p>\n</td>\n</tr>\n<tr>\n<td><strong>Мастер</strong>: __________________ ##ENGINEER_NAME##</td>\n<td><strong>Заказчик</strong>: __________________ ##CLIENT_NAME##<br>с условиями оказания услуг ознакомлен и согласен</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>\n<p>✂ ---------------------------------------------------------------</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<h3>Заказ ##ORDER_NUMBER## от ##CREATED_AT##</h3>\n</td>\n<td>##ticket.numberId.barcode##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##, ##c5286c7d-44aa-4579-8258-935b003998cf##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<p></p>	2025-11-29 15:41:47	2026-09-20 22:10:38.935867	\N
17	Товарный чек — Новый город	sales_receipt	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Товарный чек</h1>\n<p>Продажа от <strong>##CREATED_AT##</strong></p>\n<p>&nbsp;</p>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>Товары и услуги</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Позиция</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Количество</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Сумма, ##CURRENCY##</strong></td>\n<td><strong>##TOTAL_ITEMS##</strong></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Продавец</strong>: __________________ ##EMPLOYEE_NAME##</p>\n<p><br><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</p>\n</td>\n</tr>\n</tbody>\n</table>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	1
19	Акт выполненных работ — Новый город	work_act	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Акт выполненных работ</h1>\n<p>№ заказа <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li>Гарантийный ремонт производится в срок от 1 до 7 дней после поступления запчастей.</li>\n<li>Выход устройства из строя в результате действий пользователя или заражения вирусами гарантийным случаем не является.</li>\n<li>Исполнитель предоставляет гарантию на ремонт в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</li>\n<li>Гарантийное обслуживание производится по адресу, указанному в Акте, и только при наличии у Заказчика Акта сдачи-приемки работ, подписанного обеими сторонами.</li>\n<li>Исполнитель несет ответственность только за услуги, оказанные в соответствии с данным Договором.</li>\n<li>Ремонт и обслуживание оборудования осуществляются в соответствии с требованиями нормативных документов, в том числе ГОСТ 12.2006-87 п.9.1, ГОСТР 50377-92 п.2.1.4, ГОСТР 50936-96, ГОСТ Р 50938-96, и согласно Федеральному Закону &laquo;О защите прав потребителей&raquo;.</li>\n<li>Исполнитель не несет гарантийных обязательств в случаях отсутствия или повреждения гарантийной пломбы Исполнителя, внесения каких-либо изменений в конфигурацию оборудования, в том числе программное обеспечение устройства, в случае замены узлов, комплектующих или расходных материалов, в случае установки или настройки программного обеспечения, в случае монтажных работ, работ по администрированию без присутствия представителя Исполнителя.</li>\n<li>Требования по устранению недостатков оказанных услуг принимаются Исполнителем только в письменном виде и при условии выполнения установленных производителем правил эксплуатации оборудования.</li>\n<li>Установленные узлы или расходные материалы возврату не подлежат.</li>\n</ol>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Заказчик</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Исполнитель</strong></td>\n<td>##COMPANY_NAME##</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Наименование работ (услуг) / товара</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Кол-во</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Итого:</strong></td>\n<td><strong>##TOTAL_ITEMS####CURRENCY##</strong></td>\n</tr>\n</tbody>\n</table>\n<p><strong>Работы выполнены в полном объёме, в срок и с надлежащим качеством. Заказчик претензий по объёму, срокам и качеству не имеет. Стоимость работ (услуг) и товаров Заказчиком принята.</strong></p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Исполнитель</strong>: __________________ / ##EMPLOYEE_NAME##</p>\n</td>\n<td>\n<p><strong>Заказчик</strong>: __________________ / ##CLIENT_NAME##</p>\n</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	1
20	Акт выполненных работ — Верхняя терраса	work_act	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Акт выполненных работ</h1>\n<p>№ заказа <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li>Гарантийный ремонт производится в срок от 1 до 7 дней после поступления запчастей.</li>\n<li>Выход устройства из строя в результате действий пользователя или заражения вирусами гарантийным случаем не является.</li>\n<li>Исполнитель предоставляет гарантию на ремонт в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</li>\n<li>Гарантийное обслуживание производится по адресу, указанному в Акте, и только при наличии у Заказчика Акта сдачи-приемки работ, подписанного обеими сторонами.</li>\n<li>Исполнитель несет ответственность только за услуги, оказанные в соответствии с данным Договором.</li>\n<li>Ремонт и обслуживание оборудования осуществляются в соответствии с требованиями нормативных документов, в том числе ГОСТ 12.2006-87 п.9.1, ГОСТР 50377-92 п.2.1.4, ГОСТР 50936-96, ГОСТ Р 50938-96, и согласно Федеральному Закону &laquo;О защите прав потребителей&raquo;.</li>\n<li>Исполнитель не несет гарантийных обязательств в случаях отсутствия или повреждения гарантийной пломбы Исполнителя, внесения каких-либо изменений в конфигурацию оборудования, в том числе программное обеспечение устройства, в случае замены узлов, комплектующих или расходных материалов, в случае установки или настройки программного обеспечения, в случае монтажных работ, работ по администрированию без присутствия представителя Исполнителя.</li>\n<li>Требования по устранению недостатков оказанных услуг принимаются Исполнителем только в письменном виде и при условии выполнения установленных производителем правил эксплуатации оборудования.</li>\n<li>Установленные узлы или расходные материалы возврату не подлежат.</li>\n</ol>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Заказчик</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Исполнитель</strong></td>\n<td>##COMPANY_NAME##</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Наименование работ (услуг) / товара</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Кол-во</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Итого:</strong></td>\n<td><strong>##TOTAL_ITEMS####CURRENCY##</strong></td>\n</tr>\n</tbody>\n</table>\n<p><strong>Работы выполнены в полном объёме, в срок и с надлежащим качеством. Заказчик претензий по объёму, срокам и качеству не имеет. Стоимость работ (услуг) и товаров Заказчиком принята.</strong></p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Исполнитель</strong>: __________________ / ##EMPLOYEE_NAME##</p>\n</td>\n<td>\n<p><strong>Заказчик</strong>: __________________ / ##CLIENT_NAME##</p>\n</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	2
6	Товарный чек	sales_receipt	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Товарный чек</h1>\n<p>Продажа от <strong>##CREATED_AT##</strong></p>\n<p>&nbsp;</p>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>Товары и услуги</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Позиция</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Количество</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Сумма, ##CURRENCY##</strong></td>\n<td><strong>##TOTAL_ITEMS##</strong></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Продавец</strong>: __________________ ##EMPLOYEE_NAME##</p>\n<p><br><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</p>\n</td>\n</tr>\n</tbody>\n</table>	2026-02-22 18:57:22	2026-09-20 22:10:38.935867	\N
21	Квитанция для клиента — Новый город	customer	<table style="width: 100%; height: 355.062px;" border="1">\n<tbody>\n<tr style="height: 355.062px;">\n<td style="width: 63.8403%;">\n<h1>Приемная квитанция</h1>\n<p>Заказ <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Стоимость услуг определяется сервис-инженером только после проведения диагностики оборудования.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сроки ремонта устанавливаются в зависимости от наличия запчастей и сложности выполнения работ.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Аппараты принимаются на ремонт/диагностику без SIM карт и карт памяти, а также зарядных устройств, гарнитур, кабелей и других аксессуаров, кроме тех случаев, когда это необходимо для диагностики. Такой случай фиксируется в квитанции дополнительно. Исполнитель не несет ответственности за сохранность перечисленных устройств, при отсутствии записи о них в квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Оборудование с согласия клиента принято без разборки и проверки неисправностей. Клиент согласен, что все неисправности и внутренние повреждения, которые могут быть обнаружены в оборудовании при техническом обслуживании, возникли до приема оборудования по данной квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик согласен на обработку персональных данных, а также несет ответственность за достоверность предоставленной информации. Сервисный центр не несет ответственности за сохранность данных, хранящихся в памяти (носителе памяти) оборудования, сданного в ремонт.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Исполнитель предоставляет гарантию на ремонт узлов оборудования до 14 дней на установленные комплектующие в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик обязан проверить работоспособность оборудования или настроенного программного обеспечения в присутствии сервис-инженера.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Установленные узлы или расходные материалы возврату не подлежат.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">В случае утери квитанции выдача аппарата производится при предъявлении паспорта лица, сдававшего аппарат и письменного заявления.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сданный в ремонт или на диагностику аппарат должен быть получен в течение 30 дней с момента извещения (в случае недоступности отправляется SMS на номер телефона). При невыполнении этого требования взимается пеня в размере 10 рублей за каждый день просрочки. Аппараты, невостребованные в течение 90 дней, могут быть реализованы в установленном законом порядке для погашения задолженности Заказчика перед Исполнителем. *Правила бытового обслуживания населения в РФ, глава IV, пункт 15.</span></li>\n</ol>\n</td>\n<td style="width: 36.1597%;">\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td colspan="2">\n<p><strong>Предварительная стоимость: ##ESTIMATED_COST####CURRENCY##</strong></p>\n<p><strong>Предоплата: ##TOTAL_PAID## (##total.paid.words##)</strong></p>\n</td>\n</tr>\n<tr>\n<td><strong>Мастер</strong>: __________________ ##ENGINEER_NAME##</td>\n<td><strong>Заказчик</strong>: __________________ ##CLIENT_NAME##<br>с условиями оказания услуг ознакомлен и согласен</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>\n<p>✂ ---------------------------------------------------------------</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<h3>Заказ ##ORDER_NUMBER## от ##CREATED_AT##</h3>\n</td>\n<td>##ticket.numberId.barcode##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##, ##c5286c7d-44aa-4579-8258-935b003998cf##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<p></p>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	1
22	Квитанция для клиента — Верхняя терраса	customer	<table style="width: 100%; height: 355.062px;" border="1">\n<tbody>\n<tr style="height: 355.062px;">\n<td style="width: 63.8403%;">\n<h1>Приемная квитанция</h1>\n<p>Заказ <strong>##ORDER_NUMBER##</strong> от <strong>##CREATED_AT##</strong></p>\n<ol style="font-size: 8pt;">\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Стоимость услуг определяется сервис-инженером только после проведения диагностики оборудования.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сроки ремонта устанавливаются в зависимости от наличия запчастей и сложности выполнения работ.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Аппараты принимаются на ремонт/диагностику без SIM карт и карт памяти, а также зарядных устройств, гарнитур, кабелей и других аксессуаров, кроме тех случаев, когда это необходимо для диагностики. Такой случай фиксируется в квитанции дополнительно. Исполнитель не несет ответственности за сохранность перечисленных устройств, при отсутствии записи о них в квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Оборудование с согласия клиента принято без разборки и проверки неисправностей. Клиент согласен, что все неисправности и внутренние повреждения, которые могут быть обнаружены в оборудовании при техническом обслуживании, возникли до приема оборудования по данной квитанции.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик согласен на обработку персональных данных, а также несет ответственность за достоверность предоставленной информации. Сервисный центр не несет ответственности за сохранность данных, хранящихся в памяти (носителе памяти) оборудования, сданного в ремонт.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Исполнитель предоставляет гарантию на ремонт узлов оборудования до 14 дней на установленные комплектующие в соответствии с гарантийным талоном. При этом гарантия Исполнителя распространяется только на те узлы или комплектующие, которые подвергались ремонту или замене Исполнителем.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Заказчик обязан проверить работоспособность оборудования или настроенного программного обеспечения в присутствии сервис-инженера.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Установленные узлы или расходные материалы возврату не подлежат.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">В случае утери квитанции выдача аппарата производится при предъявлении паспорта лица, сдававшего аппарат и письменного заявления.</span></li>\n<li style="font-size: 8pt;"><span style="font-size: 8pt;">Сданный в ремонт или на диагностику аппарат должен быть получен в течение 30 дней с момента извещения (в случае недоступности отправляется SMS на номер телефона). При невыполнении этого требования взимается пеня в размере 10 рублей за каждый день просрочки. Аппараты, невостребованные в течение 90 дней, могут быть реализованы в установленном законом порядке для погашения задолженности Заказчика перед Исполнителем. *Правила бытового обслуживания населения в РФ, глава IV, пункт 15.</span></li>\n</ol>\n</td>\n<td style="width: 36.1597%;">\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n<td rowspan="2">&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td colspan="2">\n<p><strong>Предварительная стоимость: ##ESTIMATED_COST####CURRENCY##</strong></p>\n<p><strong>Предоплата: ##TOTAL_PAID## (##total.paid.words##)</strong></p>\n</td>\n</tr>\n<tr>\n<td><strong>Мастер</strong>: __________________ ##ENGINEER_NAME##</td>\n<td><strong>Заказчик</strong>: __________________ ##CLIENT_NAME##<br>с условиями оказания услуг ознакомлен и согласен</td>\n</tr>\n<tr>\n<td colspan="2"><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</td>\n</tr>\n</tbody>\n</table>\n<p>✂ ---------------------------------------------------------------</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<h3>Заказ ##ORDER_NUMBER## от ##CREATED_AT##</h3>\n</td>\n<td>##ticket.numberId.barcode##</td>\n</tr>\n</tbody>\n</table>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>Клиент</strong></td>\n<td>##CLIENT_NAME##, ##CLIENT_PHONE1##</td>\n</tr>\n<tr>\n<td><strong>Устройство</strong></td>\n<td>##701809f9-23dc-4346-aff4-0aef32523aef##, ##b6a8f943-e1b0-46e8-a321-b25fcfaf6976####c76b5bc7-7a68-4672-9542-cabaf2962600##, ##c5286c7d-44aa-4579-8258-935b003998cf##</td>\n</tr>\n<tr>\n<td><strong>Внешний вид / комплектация</strong></td>\n<td>##bc1ae9b1-7b8b-4da6-add5-26982865629e##</td>\n</tr>\n<tr>\n<td><strong>Неисправность</strong></td>\n<td>##f93f4677-15b5-4e57-97e7-a345cb5b0e21##</td>\n</tr>\n</tbody>\n</table>\n<p></p>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	2
18	Товарный чек — Верхняя терраса	sales_receipt	<table border="1">\n<tbody>\n<tr>\n<td>\n<h1>Товарный чек</h1>\n<p>Продажа от <strong>##CREATED_AT##</strong></p>\n<p>&nbsp;</p>\n</td>\n<td>\n<p><img src="##COMPANY_LOGO_URL##" alt="Логотип" style="##COMPANY_LOGO_STYLE##"></p>\n<p><strong>##COMPANY_NAME##</strong></p>\n<p>##branch.address##<br>##branch.phone##<br>##COMPANY_REQUISITES##</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>Товары и услуги</p>\n<table border="1">\n<tbody>\n<tr>\n<td><strong>№</strong></td>\n<td><strong>Позиция</strong></td>\n<td><strong>Артикул</strong></td>\n<td><strong>Гарантия, дн.</strong></td>\n<td><strong>Цена, ##CURRENCY##</strong></td>\n<td><strong>Скидка, ##CURRENCY##</strong></td>\n<td><strong>Количество</strong></td>\n<td><strong>Сумма, ##CURRENCY##</strong></td>\n</tr>\n</tbody>\n<tbody>\n<tr data-for="ITEMS">\n<td>##INDEX##</td>\n<td>##ITEM_NAME##</td>\n<td>##ITEM_SKU##</td>\n<td>##ITEM_WARRANTY##</td>\n<td>##ITEM_PRICE##</td>\n<td>##ITEM_DISCOUNT##</td>\n<td>##ITEM_QUANTITY##</td>\n<td>##ITEM_SUM##</td>\n</tr>\n<tr>\n<td colspan="7"><strong>Сумма, ##CURRENCY##</strong></td>\n<td><strong>##TOTAL_ITEMS##</strong></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table border="1">\n<tbody>\n<tr>\n<td>\n<p><strong>Продавец</strong>: __________________ ##EMPLOYEE_NAME##</p>\n<p><br><strong>Дата</strong>: ##DATE_TODAY####TIME_NOW##</p>\n</td>\n</tr>\n</tbody>\n</table>	2026-09-20 20:20:54.09047	2026-09-20 22:10:38.935867	2
\.


--
-- Data for Name: purchase_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.purchase_items (id, purchase_id, part_id, quantity, purchase_price, total_price, created_at) FROM stdin;
\.


--
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.purchases (id, supplier_id, supplier_name, purchase_date, total_amount, status, notes, created_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.role_permissions (role, permission_id) FROM stdin;
viewer	1
viewer	5
viewer	21
admin	2
admin	4
admin	3
admin	1
admin	6
admin	8
admin	7
admin	5
admin	10
admin	9
admin	11
admin	16
admin	15
admin	18
admin	17
admin	12
admin	20
admin	13
admin	19
admin	14
admin	22
admin	23
admin	21
master_7	2
master_7	3
master_7	1
master_7	5
master_7	14
master_6	2
master_6	3
master_6	1
master_6	5
master_6	14
manager	2
manager	3
manager	1
manager	6
manager	7
manager	5
manager	10
manager	9
manager	11
manager	16
manager	15
manager	18
manager	17
manager	20
manager	19
manager	14
manager	22
manager	23
manager	21
master	2
master	3
master	1
master	5
master	14
\.


--
-- Data for Name: salary_accruals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.salary_accruals (id, order_id, shop_sale_id, user_id, role, amount_cents, base_amount_cents, profit_cents, rule_type, rule_value, calculated_from, calculated_from_id, service_id, part_id, vat_included, created_at) FROM stdin;
9	4	\N	6	master	124100	350000	248200	percent	50	master	6	\N	\N	0	2026-09-14 01:14:01
10	5	\N	5	master	100500	300000	201000	percent	50	master	5	\N	\N	0	2026-09-14 02:09:02
11	11	\N	5	master	70500	250000	141000	percent	50	master	5	\N	\N	0	2026-09-14 02:09:15
12	10	\N	5	master	75900	250000	151800	percent	50	master	5	\N	\N	0	2026-09-14 02:11:46
13	7	\N	5	master	150000	300000	300000	percent	50	master	5	\N	\N	0	2026-09-14 02:11:59
14	8	\N	5	master	86000	240000	172000	percent	50	master	5	\N	\N	0	2026-09-14 02:12:16
15	6	\N	7	master	79600	290000	199000	percent	40	master	7	\N	\N	0	2026-09-14 02:12:26
16	14	\N	6	master	75000	150000	150000	percent	50	master	6	\N	\N	0	2026-09-18 16:31:39
17	12	\N	5	master	150000	300000	300000	percent	50	master	5	\N	\N	0	2026-09-18 16:33:03
18	13	\N	5	master	125000	250000	250000	percent	50	master	5	\N	\N	0	2026-09-24 15:50:04
19	20	\N	5	master	125000	250000	250000	percent	50	master	5	\N	\N	0	2026-09-24 15:54:39
20	21	\N	5	master	75000	150000	150000	percent	50	master	5	\N	\N	0	2026-09-24 15:57:14
21	22	\N	6	master	103300	410000	206600	percent	50	master	6	\N	\N	0	2026-09-24 16:00:59
22	23	\N	6	master	235000	470000	470000	percent	50	master	6	\N	\N	0	2026-09-24 16:05:07
23	24	\N	5	master	95000	280000	190000	percent	50	master	5	\N	\N	0	2026-09-24 16:07:52
\.


--
-- Data for Name: salary_bonuses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.salary_bonuses (id, user_id, role, amount_cents, reason, order_id, bonus_date, created_by_id, created_by_username, created_at) FROM stdin;
\.


--
-- Data for Name: salary_fines; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.salary_fines (id, user_id, role, amount_cents, reason, order_id, fine_date, created_by_id, created_by_username, created_at) FROM stdin;
\.


--
-- Data for Name: salary_payments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.salary_payments (id, user_id, role, amount_cents, payment_date, period_start, period_end, payment_type, comment, created_by_id, created_by_username, created_at, cash_transaction_id) FROM stdin;
1	7	master	79600	2026-09-13 00:00:00	\N	\N	salary		8	ProfiService	2026-09-14 02:15:31	25
2	6	master	124100	2026-09-13 00:00:00	\N	\N	salary		8	ProfiService	2026-09-14 02:15:46	26
3	5	master	482900	2026-09-13 00:00:00	\N	\N	salary		8	ProfiService	2026-09-14 02:15:58	27
4	5	master	570000	2026-09-24 00:00:00	\N	\N	salary		8	ProfiService	2026-09-24 16:15:12	40
5	6	master	413300	2026-09-24 00:00:00	\N	\N	salary		8	ProfiService	2026-09-24 16:15:34	41
\.


--
-- Data for Name: schema_migrations_pg; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations_pg (version, name, applied_at) FROM stdin;
001	enable_extensions	2026-03-30 19:09:14.906975
002	fulltext_indexes	2026-03-30 19:09:14.955335
003	fix_id_defaults	2026-03-30 19:09:15.035966
004	perf_indexes	2026-03-30 19:09:15.128414
005	staff_chat	2026-04-05 18:58:53.6558
006	staff_chat_reactions	2026-04-06 18:51:03.560068
007	staff_chat_read_cursors	2026-04-10 00:00:00
008	staff_chat_web_push	2026-04-10 00:00:00
009	order_pins	2026-04-15 00:00:00
010	redact_smtp_password_logs	2026-07-25 00:00:00
011	demo_visitor_events	2026-07-27 00:00:00
012	demo_visitor_client_instance	2026-07-27 00:00:00
013	invoices_b2b	2026-07-28 00:00:00
014	invoice_catalog_links	2026-07-28 00:00:00
015	order_estimated_cost	2026-08-08 00:00:00
016	receipt_appearance_estimated	2026-08-08 00:00:00
017	order_diagnostics	2026-08-15 00:00:00
018	order_diagnostics_history	2026-08-15 00:00:00
019	order_model_catalog_links	2026-08-16 00:00:00
020	receipt_estimated_literal_newline	2026-08-16 00:00:00
021	diagnostics_templates	2026-08-20 00:00:00
022	diagnostics_templates_is_active_int	2026-08-22 00:00:00
023	diagnostics_templates_seed	2026-08-22 00:00:00
024	order_customer_emails	2026-08-22 00:00:00
025	locale_settings	2026-08-24 00:00:00
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.services (id, name, price, is_default, sort_order, created_at, updated_at, salary_rule_type, salary_rule_value) FROM stdin;
\.


--
-- Data for Name: shop_sale_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shop_sale_items (id, shop_sale_id, item_type, service_id, service_name, part_id, part_name, part_sku, quantity, price, purchase_price, total, created_at) FROM stdin;
\.


--
-- Data for Name: shop_sales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shop_sales (id, customer_id, customer_name, customer_phone, manager_id, master_id, total_amount, discount, final_amount, paid_amount, payment_method, comment, sale_date, created_by_id, created_by_username, created_at, order_id) FROM stdin;
\.


--
-- Data for Name: staff_chat_attachments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.staff_chat_attachments (id, message_id, original_name, stored_name, mime_type, size_bytes, file_path, is_image, created_at) FROM stdin;
\.


--
-- Data for Name: staff_chat_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.staff_chat_messages (id, room_key, user_id, username, actor_display_name, client_instance_id, message_text, created_at, edited_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: staff_chat_reactions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.staff_chat_reactions (id, message_id, user_id, username, actor_display_name, client_instance_id, emoji, created_at) FROM stdin;
\.


--
-- Data for Name: staff_chat_read_cursors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.staff_chat_read_cursors (id, room_key, user_id, username, actor_display_name, client_instance_id, last_read_message_id, updated_at) FROM stdin;
\.


--
-- Data for Name: staff_chat_web_push_subscriptions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.staff_chat_web_push_subscriptions (id, user_id, endpoint, p256dh, auth, user_agent, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stock_movements; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stock_movements (id, part_id, movement_type, quantity, reference_id, reference_type, created_by, notes, created_at) FROM stdin;
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.suppliers (id, name, contact_person, phone, email, address, inn, comment, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: symptoms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.symptoms (id, name, sort_order, created_at) FROM stdin;
1	Требуется диагностика	0	2026-09-08 20:09:12.129067
2	Не включается	0	2026-09-08 20:09:12.129067
3	Нет звука	0	2026-09-08 20:09:12.129067
4	Нет изображения	0	2026-09-08 20:09:12.129067
5	Разбит экран	0	2026-09-08 20:09:12.129067
6	Не ловит сеть	0	2026-09-08 20:09:12.129067
7	Не видит сим	0	2026-09-08 20:09:12.129067
8	Зависает	0	2026-09-08 20:09:12.129067
9	Некорректно работает	0	2026-09-08 20:09:12.129067
10	Не заряжается	1	2026-09-08 22:08:59.999487
12	Попадание влаги	2	2026-09-14 00:31:12.691424
13	Хрипит динамик	3	2026-09-14 00:43:26.395081
14	Не работают микрофоны	4	2026-09-14 00:55:04.1462
15	Выключается сам по себе	5	2026-09-18 11:45:05.345527
16	Кнопка включения	6	2026-09-18 11:47:33.060306
17	Нет изображения с камеры	7	2026-09-18 11:51:21.994153
18	Замена аккумулятора	8	2026-09-18 11:54:36.101024
19	Включается при внешнем нагреве	9	2026-09-18 11:58:09.400148
20	Цикличная перезагрузка	10	2026-09-24 15:09:54.197665
21	Нет запуска системы	11	2026-09-24 15:09:54.197665
\.


--
-- Data for Name: system_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.system_settings (id, key, value, description, updated_at) FROM stdin;
202	stamp_max_width	110	Максимальная ширина печати в печати (px)	2026-09-08 18:56:02.649905
203	stamp_max_height	110	Максимальная высота печати в печати (px)	2026-09-08 18:56:02.649905
196	print_page_size	A4	Формат печати	2026-09-08 18:56:02.649905
197	print_margin_mm	7	Поля печати (мм)	2026-09-08 18:56:02.649905
184	payment_method_cash_label	Наличные	Подпись способа оплаты cash	2026-09-08 18:52:30.642383
186	payment_method_transfer_label	Перевод	Подпись способа оплаты transfer	2026-09-08 18:52:30.642383
187	payment_method_custom_methods	["СБП"]	Дополнительные способы оплаты (JSON)	2026-09-08 18:52:30.642383
185	payment_method_card_label		Удалён	2026-09-08 18:52:30.642383
188	vat_enabled	0	Учитывать НДС в расчете зарплаты (1 = да, 0 = нет)	2026-09-08 18:52:30.649792
189	vat_rate	0.0	Ставка НДС в процентах (по умолчанию 0%)	2026-09-08 18:52:30.649792
194	logo_max_width	400	Максимальная ширина логотипа в печати (px)	2026-09-08 18:56:02.649905
195	logo_max_height	200	Максимальная высота логотипа в печати (px)	2026-09-08 18:56:02.649905
200	signature_max_width	160	Максимальная ширина подписи в печати (px)	2026-09-08 18:56:02.649905
201	signature_max_height	48	Максимальная высота подписи в печати (px)	2026-09-08 18:56:02.649905
\.


--
-- Data for Name: task_checklists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.task_checklists (id, task_id, item_text, is_completed, item_order, created_at) FROM stdin;
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tasks (id, order_id, title, description, assigned_to, created_by, deadline, priority, status, created_at, updated_at, completed_at) FROM stdin;
\.


--
-- Data for Name: transaction_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.transaction_categories (id, name, type, description, color, is_system, is_active, sort_order, created_at) FROM stdin;
1	Оплата по заявке	income	Системная категория: Оплата по заявке	#6c757d	1	1	999	2026-09-08 20:39:09.232202
2	Себестоимость (разовая)	expense	Системная категория: Себестоимость (разовая)	#6c757d	1	1	999	2026-09-08 20:39:09.278881
3	Предоплата	income	Системная категория: Предоплата	#6c757d	1	1	999	2026-09-14 00:55:04.222557
4	Возврат по заявке	expense	Системная категория: Возврат по заявке	#6c757d	1	1	999	2026-09-14 01:00:04.801769
5	Выплата зарплаты	expense	Системная категория: Выплата зарплаты	#6c757d	1	1	999	2026-09-14 01:15:31.380712
\.


--
-- Data for Name: user_role_history; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_role_history (id, user_id, changed_by, changed_by_username, old_role, new_role, old_permission_ids, new_permission_ids, change_type, comment, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, password_hash, role, created_at, last_login, is_active, display_name, branch_id) FROM stdin;
9	manager@manager.ru	scrypt:32768:8:1$0VLlWVyDrKeltFa3$ba8291de4d098309b3edc26df32eb133becc54bc3e1ba95a8b04b1a5157399bc60e354128c30de5a65be0e1e944c031407b38890261d8bca29018e09f4cffa04	manager	2026-04-07 20:10:55.11334	\N	0	Manager	\N
14	admin@admin.ru	scrypt:32768:8:1$evzVS3mOhq2OQZFM$05ebade82f1c5aa4c8770eaa6675c450f840b861be1f2ce795ebdee024a2055d28ce9cd0bd7c7f8ff48f5282213d48ebcf324b7dd0b516d819787b8590e58c8c	admin	2026-09-10 16:59:47.023354	2026-09-11 09:37:30.179094	1	Admin	\N
12	master@master.ru	scrypt:32768:8:1$Au9A6eVblB6B3bgG$74b7db96c8dcf9d1bbb7b908be6a56ad5ba99a122a8126ff69df12d6991fa2bdcd8362f305bd0bbe4be1a55b8e349f19ea1f749d848d695e658afdcd9a011e9a	master_6	2026-09-07 14:27:15.10084	2026-09-28 10:06:40.328447	1	Михаил	\N
8	ProfiService	scrypt:32768:8:1$o7dzlfnteWknGJyK$53998f17e2bf9ed5b9115cbe8cb3250740c8b13998fbf778820451cd9f2ed16ee70bdb23b4607a298641ebb5b0be82d812357b6f57517fdd038fa4421bee90d7	admin	2026-04-07 20:10:55.11334	2026-09-28 10:12:03.7463	1	Admin	\N
13	master0@master.ru	scrypt:32768:8:1$n0m77lfiWxpMe6Y9$ff98ec86667f1f1644de25d4e3034d0fbaaddc7dd53e6589c012a3dc28b56707cf9cd868e9cd55d7b4649ef6448da6d60cd111a38ab63152826c137272dfdfa4	master_7	2026-09-08 18:48:08.130856	\N	1	Артём	\N
10	forsale001@mail.ru	scrypt:32768:8:1$D8pYLCV3AZcO2JK1$a351f7d42f91323dd48123dfbd78378069c2d5517ef37c01faa46737075768079dd92b6a09dbcf87bac0e8a720b9e24ab510a8cdc675c632042347e5322ed68f	master	2026-04-07 20:10:55.11334	2026-09-20 21:17:53.831487	1	Виталий	\N
\.


--
-- Data for Name: warehouse_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.warehouse_logs (id, operation_type, part_id, part_name, part_number, user_id, username, quantity, old_value, new_value, notes, ip_address, created_at, category_id) FROM stdin;
\.


--
-- Name: action_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.action_logs_id_seq', 1754, true);


--
-- Name: appearance_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.appearance_tags_id_seq', 20, true);


--
-- Name: branches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.branches_id_seq', 2, true);


--
-- Name: cash_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cash_transactions_id_seq', 41, true);


--
-- Name: comment_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comment_attachments_id_seq', 1, false);


--
-- Name: customer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.customer_tokens_id_seq', 1, false);


--
-- Name: customer_wallet_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.customer_wallet_transactions_id_seq', 1, false);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.customers_id_seq', 28, true);


--
-- Name: demo_visitor_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.demo_visitor_events_id_seq', 1, false);


--
-- Name: device_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.device_brands_id_seq', 321, true);


--
-- Name: device_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.device_types_id_seq', 63, true);


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.devices_id_seq', 28, true);


--
-- Name: diagnostics_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.diagnostics_templates_id_seq', 17, true);


--
-- Name: general_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.general_settings_id_seq', 1, true);


--
-- Name: inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.inventory_id_seq', 1, false);


--
-- Name: inventory_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.inventory_items_id_seq', 1, false);


--
-- Name: invoice_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.invoice_items_id_seq', 1, false);


--
-- Name: invoice_sequences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.invoice_sequences_id_seq', 1, false);


--
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.invoices_id_seq', 1, false);


--
-- Name: managers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.managers_id_seq', 7, true);


--
-- Name: masters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.masters_id_seq', 7, true);


--
-- Name: notification_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notification_preferences_id_seq', 7, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.notifications_id_seq', 352, true);


--
-- Name: order_appearance_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_appearance_tags_id_seq', 132, true);


--
-- Name: order_client_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_client_files_id_seq', 1, false);


--
-- Name: order_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_comments_id_seq', 2, true);


--
-- Name: order_customer_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_customer_emails_id_seq', 1, false);


--
-- Name: order_diagnostics_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_diagnostics_history_id_seq', 26, true);


--
-- Name: order_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_models_id_seq', 239, true);


--
-- Name: order_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_parts_id_seq', 1, false);


--
-- Name: order_pins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_pins_id_seq', 1, false);


--
-- Name: order_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_services_id_seq', 27, true);


--
-- Name: order_status_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_status_history_id_seq', 135, true);


--
-- Name: order_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_statuses_id_seq', 14, true);


--
-- Name: order_symptoms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_symptoms_id_seq', 43, true);


--
-- Name: order_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_templates_id_seq', 1, false);


--
-- Name: order_visibility_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_visibility_history_id_seq', 1, false);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 25, true);


--
-- Name: part_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.part_categories_id_seq', 1, false);


--
-- Name: parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.parts_id_seq', 1, false);


--
-- Name: payment_receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payment_receipts_id_seq', 2, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payments_id_seq', 24, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.permissions_id_seq', 23, true);


--
-- Name: print_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.print_templates_id_seq', 22, true);


--
-- Name: purchase_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.purchase_items_id_seq', 1, false);


--
-- Name: purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.purchases_id_seq', 1, false);


--
-- Name: salary_accruals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.salary_accruals_id_seq', 23, true);


--
-- Name: salary_bonuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.salary_bonuses_id_seq', 1, false);


--
-- Name: salary_fines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.salary_fines_id_seq', 1, false);


--
-- Name: salary_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.salary_payments_id_seq', 5, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: shop_sale_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shop_sale_items_id_seq', 1, false);


--
-- Name: shop_sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shop_sales_id_seq', 1, false);


--
-- Name: staff_chat_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.staff_chat_attachments_id_seq', 1, false);


--
-- Name: staff_chat_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.staff_chat_messages_id_seq', 2, true);


--
-- Name: staff_chat_reactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.staff_chat_reactions_id_seq', 1, false);


--
-- Name: staff_chat_read_cursors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.staff_chat_read_cursors_id_seq', 10, true);


--
-- Name: staff_chat_web_push_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.staff_chat_web_push_subscriptions_id_seq', 1, false);


--
-- Name: stock_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stock_movements_id_seq', 1, false);


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 1, false);


--
-- Name: symptoms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.symptoms_id_seq', 21, true);


--
-- Name: system_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.system_settings_id_seq', 469, true);


--
-- Name: task_checklists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.task_checklists_id_seq', 1, false);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tasks_id_seq', 1, false);


--
-- Name: transaction_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transaction_categories_id_seq', 5, true);


--
-- Name: user_role_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.user_role_history_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: warehouse_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.warehouse_logs_id_seq', 1, false);


--
-- Name: action_logs action_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.action_logs
    ADD CONSTRAINT action_logs_pkey PRIMARY KEY (id);


--
-- Name: appearance_tags appearance_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appearance_tags
    ADD CONSTRAINT appearance_tags_pkey PRIMARY KEY (id);


--
-- Name: branches branches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branches
    ADD CONSTRAINT branches_pkey PRIMARY KEY (id);


--
-- Name: cash_transactions cash_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cash_transactions
    ADD CONSTRAINT cash_transactions_pkey PRIMARY KEY (id);


--
-- Name: comment_attachments comment_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comment_attachments
    ADD CONSTRAINT comment_attachments_pkey PRIMARY KEY (id);


--
-- Name: customer_tokens customer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_tokens
    ADD CONSTRAINT customer_tokens_pkey PRIMARY KEY (id);


--
-- Name: customer_wallet_transactions customer_wallet_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_wallet_transactions
    ADD CONSTRAINT customer_wallet_transactions_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: demo_visitor_events demo_visitor_events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.demo_visitor_events
    ADD CONSTRAINT demo_visitor_events_pkey PRIMARY KEY (id);


--
-- Name: device_brands device_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.device_brands
    ADD CONSTRAINT device_brands_pkey PRIMARY KEY (id);


--
-- Name: device_types device_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.device_types
    ADD CONSTRAINT device_types_pkey PRIMARY KEY (id);


--
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: diagnostics_templates diagnostics_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnostics_templates
    ADD CONSTRAINT diagnostics_templates_pkey PRIMARY KEY (id);


--
-- Name: general_settings general_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.general_settings
    ADD CONSTRAINT general_settings_pkey PRIMARY KEY (id);


--
-- Name: inventory_items inventory_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_items
    ADD CONSTRAINT inventory_items_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);


--
-- Name: invoice_items invoice_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_pkey PRIMARY KEY (id);


--
-- Name: invoice_sequences invoice_sequences_doc_type_year_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_sequences
    ADD CONSTRAINT invoice_sequences_doc_type_year_key UNIQUE (doc_type, year);


--
-- Name: invoice_sequences invoice_sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_sequences
    ADD CONSTRAINT invoice_sequences_pkey PRIMARY KEY (id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- Name: managers managers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_pkey PRIMARY KEY (id);


--
-- Name: masters masters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.masters
    ADD CONSTRAINT masters_pkey PRIMARY KEY (id);


--
-- Name: notification_preferences notification_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_preferences
    ADD CONSTRAINT notification_preferences_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: order_appearance_tags order_appearance_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_appearance_tags
    ADD CONSTRAINT order_appearance_tags_pkey PRIMARY KEY (id);


--
-- Name: order_client_files order_client_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_client_files
    ADD CONSTRAINT order_client_files_pkey PRIMARY KEY (id);


--
-- Name: order_comments order_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_comments
    ADD CONSTRAINT order_comments_pkey PRIMARY KEY (id);


--
-- Name: order_customer_emails order_customer_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_customer_emails
    ADD CONSTRAINT order_customer_emails_pkey PRIMARY KEY (id);


--
-- Name: order_diagnostics_history order_diagnostics_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_diagnostics_history
    ADD CONSTRAINT order_diagnostics_history_pkey PRIMARY KEY (id);


--
-- Name: order_models order_models_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_models
    ADD CONSTRAINT order_models_pkey PRIMARY KEY (id);


--
-- Name: order_parts order_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_parts
    ADD CONSTRAINT order_parts_pkey PRIMARY KEY (id);


--
-- Name: order_pins order_pins_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_pins
    ADD CONSTRAINT order_pins_pkey PRIMARY KEY (id);


--
-- Name: order_services order_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_services
    ADD CONSTRAINT order_services_pkey PRIMARY KEY (id);


--
-- Name: order_status_history order_status_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_status_history
    ADD CONSTRAINT order_status_history_pkey PRIMARY KEY (id);


--
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (id);


--
-- Name: order_symptoms order_symptoms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_symptoms
    ADD CONSTRAINT order_symptoms_pkey PRIMARY KEY (id);


--
-- Name: order_templates order_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_templates
    ADD CONSTRAINT order_templates_pkey PRIMARY KEY (id);


--
-- Name: order_visibility_history order_visibility_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_visibility_history
    ADD CONSTRAINT order_visibility_history_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: part_categories part_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.part_categories
    ADD CONSTRAINT part_categories_pkey PRIMARY KEY (id);


--
-- Name: parts parts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (id);


--
-- Name: payment_receipts payment_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_receipts
    ADD CONSTRAINT payment_receipts_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: print_templates print_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.print_templates
    ADD CONSTRAINT print_templates_pkey PRIMARY KEY (id);


--
-- Name: purchase_items purchase_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_items
    ADD CONSTRAINT purchase_items_pkey PRIMARY KEY (id);


--
-- Name: purchases purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (id);


--
-- Name: role_permissions role_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (role, permission_id);


--
-- Name: salary_accruals salary_accruals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_accruals
    ADD CONSTRAINT salary_accruals_pkey PRIMARY KEY (id);


--
-- Name: salary_bonuses salary_bonuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_bonuses
    ADD CONSTRAINT salary_bonuses_pkey PRIMARY KEY (id);


--
-- Name: salary_fines salary_fines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_fines
    ADD CONSTRAINT salary_fines_pkey PRIMARY KEY (id);


--
-- Name: salary_payments salary_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salary_payments
    ADD CONSTRAINT salary_payments_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pg schema_migrations_pg_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations_pg
    ADD CONSTRAINT schema_migrations_pg_pkey PRIMARY KEY (version);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: shop_sale_items shop_sale_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_sale_items
    ADD CONSTRAINT shop_sale_items_pkey PRIMARY KEY (id);


--
-- Name: shop_sales shop_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shop_sales
    ADD CONSTRAINT shop_sales_pkey PRIMARY KEY (id);


--
-- Name: staff_chat_attachments staff_chat_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_attachments
    ADD CONSTRAINT staff_chat_attachments_pkey PRIMARY KEY (id);


--
-- Name: staff_chat_messages staff_chat_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_messages
    ADD CONSTRAINT staff_chat_messages_pkey PRIMARY KEY (id);


--
-- Name: staff_chat_reactions staff_chat_reactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_reactions
    ADD CONSTRAINT staff_chat_reactions_pkey PRIMARY KEY (id);


--
-- Name: staff_chat_read_cursors staff_chat_read_cursors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_read_cursors
    ADD CONSTRAINT staff_chat_read_cursors_pkey PRIMARY KEY (id);


--
-- Name: staff_chat_web_push_subscriptions staff_chat_web_push_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_web_push_subscriptions
    ADD CONSTRAINT staff_chat_web_push_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: stock_movements stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: symptoms symptoms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.symptoms
    ADD CONSTRAINT symptoms_pkey PRIMARY KEY (id);


--
-- Name: system_settings system_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_settings
    ADD CONSTRAINT system_settings_pkey PRIMARY KEY (id);


--
-- Name: task_checklists task_checklists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.task_checklists
    ADD CONSTRAINT task_checklists_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: transaction_categories transaction_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transaction_categories
    ADD CONSTRAINT transaction_categories_pkey PRIMARY KEY (id);


--
-- Name: order_pins uq_order_pins_order_user; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_pins
    ADD CONSTRAINT uq_order_pins_order_user UNIQUE (order_id, user_id);


--
-- Name: user_role_history user_role_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_role_history
    ADD CONSTRAINT user_role_history_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: warehouse_logs warehouse_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.warehouse_logs
    ADD CONSTRAINT warehouse_logs_pkey PRIMARY KEY (id);


--
-- Name: action_logs_idx_action_logs_action_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_logs_idx_action_logs_action_type_pg ON public.action_logs USING btree (action_type);


--
-- Name: action_logs_idx_action_logs_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_logs_idx_action_logs_created_at_pg ON public.action_logs USING btree (created_at);


--
-- Name: action_logs_idx_action_logs_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_logs_idx_action_logs_created_pg ON public.action_logs USING btree (created_at);


--
-- Name: action_logs_idx_action_logs_entity_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_logs_idx_action_logs_entity_pg ON public.action_logs USING btree (entity_type, entity_id);


--
-- Name: action_logs_idx_action_logs_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX action_logs_idx_action_logs_user_id_pg ON public.action_logs USING btree (user_id);


--
-- Name: appearance_tags_idx_appearance_tags_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX appearance_tags_idx_appearance_tags_name_pg ON public.appearance_tags USING btree (name);


--
-- Name: appearance_tags_idx_appearance_tags_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX appearance_tags_idx_appearance_tags_sort_order_pg ON public.appearance_tags USING btree (sort_order);


--
-- Name: appearance_tags_sqlite_autoindex_appearance_tags_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX appearance_tags_sqlite_autoindex_appearance_tags_1_pg ON public.appearance_tags USING btree (name);


--
-- Name: cash_transactions_idx_cash_transactions_category_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_category_pg ON public.cash_transactions USING btree (category_id);


--
-- Name: cash_transactions_idx_cash_transactions_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_date_pg ON public.cash_transactions USING btree (transaction_date);


--
-- Name: cash_transactions_idx_cash_transactions_date_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_date_type_pg ON public.cash_transactions USING btree (transaction_date, transaction_type);


--
-- Name: cash_transactions_idx_cash_transactions_not_cancelled_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_not_cancelled_pg ON public.cash_transactions USING btree (is_cancelled);


--
-- Name: cash_transactions_idx_cash_transactions_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_order_pg ON public.cash_transactions USING btree (order_id);


--
-- Name: cash_transactions_idx_cash_transactions_payment_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_payment_id_pg ON public.cash_transactions USING btree (payment_id);


--
-- Name: cash_transactions_idx_cash_transactions_shop_sale_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_shop_sale_id_pg ON public.cash_transactions USING btree (shop_sale_id);


--
-- Name: cash_transactions_idx_cash_transactions_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cash_transactions_idx_cash_transactions_type_pg ON public.cash_transactions USING btree (transaction_type);


--
-- Name: comment_attachments_idx_comment_attachments_comment_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX comment_attachments_idx_comment_attachments_comment_id_pg ON public.comment_attachments USING btree (comment_id);


--
-- Name: customer_tokens_idx_customer_tokens_customer_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_tokens_idx_customer_tokens_customer_id_pg ON public.customer_tokens USING btree (customer_id);


--
-- Name: customer_tokens_idx_customer_tokens_expires_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_tokens_idx_customer_tokens_expires_at_pg ON public.customer_tokens USING btree (expires_at);


--
-- Name: customer_tokens_idx_customer_tokens_token_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_tokens_idx_customer_tokens_token_pg ON public.customer_tokens USING btree (token);


--
-- Name: customer_tokens_sqlite_autoindex_customer_tokens_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX customer_tokens_sqlite_autoindex_customer_tokens_1_pg ON public.customer_tokens USING btree (token);


--
-- Name: customer_wallet_transactions_idx_wallet_tx_customer_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_wallet_transactions_idx_wallet_tx_customer_id_pg ON public.customer_wallet_transactions USING btree (customer_id);


--
-- Name: customer_wallet_transactions_idx_wallet_tx_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_wallet_transactions_idx_wallet_tx_order_id_pg ON public.customer_wallet_transactions USING btree (order_id);


--
-- Name: customer_wallet_transactions_idx_wallet_tx_payment_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customer_wallet_transactions_idx_wallet_tx_payment_id_pg ON public.customer_wallet_transactions USING btree (payment_id);


--
-- Name: customers_idx_customers_email_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customers_idx_customers_email_pg ON public.customers USING btree (email);


--
-- Name: customers_idx_customers_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customers_idx_customers_name_pg ON public.customers USING btree (name);


--
-- Name: customers_idx_customers_name_phone_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customers_idx_customers_name_phone_pg ON public.customers USING btree (name, phone);


--
-- Name: customers_idx_customers_phone_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX customers_idx_customers_phone_pg ON public.customers USING btree (phone);


--
-- Name: customers_sqlite_autoindex_customers_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX customers_sqlite_autoindex_customers_1_pg ON public.customers USING btree (phone);


--
-- Name: device_brands_idx_device_brands_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX device_brands_idx_device_brands_name_pg ON public.device_brands USING btree (name);


--
-- Name: device_brands_idx_device_brands_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX device_brands_idx_device_brands_sort_order_pg ON public.device_brands USING btree (sort_order);


--
-- Name: device_brands_sqlite_autoindex_device_brands_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX device_brands_sqlite_autoindex_device_brands_1_pg ON public.device_brands USING btree (name);


--
-- Name: device_types_idx_device_types_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX device_types_idx_device_types_name_pg ON public.device_types USING btree (name);


--
-- Name: device_types_idx_device_types_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX device_types_idx_device_types_sort_order_pg ON public.device_types USING btree (sort_order);


--
-- Name: device_types_sqlite_autoindex_device_types_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX device_types_sqlite_autoindex_device_types_1_pg ON public.device_types USING btree (name);


--
-- Name: devices_idx_devices_customer_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_customer_id_pg ON public.devices USING btree (customer_id);


--
-- Name: devices_idx_devices_customer_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_customer_pg ON public.devices USING btree (customer_id);


--
-- Name: devices_idx_devices_device_brand_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_device_brand_id_pg ON public.devices USING btree (device_brand_id);


--
-- Name: devices_idx_devices_device_type_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_device_type_id_pg ON public.devices USING btree (device_type_id);


--
-- Name: devices_idx_devices_serial_number_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_serial_number_pg ON public.devices USING btree (serial_number);


--
-- Name: devices_idx_devices_serial_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX devices_idx_devices_serial_pg ON public.devices USING btree (serial_number);


--
-- Name: idx_cash_txn_date_transaction_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cash_txn_date_transaction_date ON public.cash_transactions USING btree (date(transaction_date));


--
-- Name: idx_cash_txn_date_type_method; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cash_txn_date_type_method ON public.cash_transactions USING btree (transaction_date, transaction_type, payment_method);


--
-- Name: idx_cash_txn_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cash_txn_order_id ON public.cash_transactions USING btree (order_id);


--
-- Name: idx_cash_txn_shop_sale_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cash_txn_shop_sale_id ON public.cash_transactions USING btree (shop_sale_id);


--
-- Name: idx_customers_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_created_at ON public.customers USING btree (created_at);


--
-- Name: idx_customers_fts_search; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_fts_search ON public.customers USING gin (to_tsvector('simple'::regconfig, ((((COALESCE(name, ''::text) || ' '::text) || COALESCE(phone, ''::text)) || ' '::text) || COALESCE(email, ''::text))));


--
-- Name: idx_customers_phone; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_phone ON public.customers USING btree (phone);


--
-- Name: idx_demo_visitor_events_client_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_demo_visitor_events_client_created ON public.demo_visitor_events USING btree (client_instance_id, created_at DESC);


--
-- Name: idx_demo_visitor_events_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_demo_visitor_events_created ON public.demo_visitor_events USING btree (created_at DESC);


--
-- Name: idx_demo_visitor_events_type_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_demo_visitor_events_type_created ON public.demo_visitor_events USING btree (event_type, created_at DESC);


--
-- Name: idx_demo_visitor_events_user_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_demo_visitor_events_user_created ON public.demo_visitor_events USING btree (user_id, created_at DESC);


--
-- Name: idx_diagnostics_templates_device; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_diagnostics_templates_device ON public.diagnostics_templates USING btree (device_type_id, device_brand_id, model_id);


--
-- Name: idx_diagnostics_templates_sort; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_diagnostics_templates_sort ON public.diagnostics_templates USING btree (sort_order, id);


--
-- Name: idx_invoice_items_invoice; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoice_items_invoice ON public.invoice_items USING btree (invoice_id);


--
-- Name: idx_invoices_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoices_customer ON public.invoices USING btree (customer_id);


--
-- Name: idx_invoices_issued; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoices_issued ON public.invoices USING btree (issued_at DESC);


--
-- Name: idx_invoices_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoices_order ON public.invoices USING btree (order_id);


--
-- Name: idx_invoices_shop_sale_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoices_shop_sale_id ON public.invoices USING btree (shop_sale_id);


--
-- Name: idx_invoices_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_invoices_status ON public.invoices USING btree (status);


--
-- Name: idx_order_client_files_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_client_files_order_id ON public.order_client_files USING btree (order_id);


--
-- Name: idx_order_customer_emails_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_customer_emails_order ON public.order_customer_emails USING btree (order_id, created_at DESC);


--
-- Name: idx_order_diagnostics_history_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_diagnostics_history_order_id ON public.order_diagnostics_history USING btree (order_id);


--
-- Name: idx_order_models_type_brand; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_models_type_brand ON public.order_models USING btree (device_type_id, device_brand_id);


--
-- Name: idx_order_parts_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_parts_date_created_at ON public.order_parts USING btree (date(created_at));


--
-- Name: idx_order_parts_order_id_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_parts_order_id_created_at ON public.order_parts USING btree (order_id, created_at);


--
-- Name: idx_order_pins_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_pins_order ON public.order_pins USING btree (order_id);


--
-- Name: idx_order_pins_user_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_pins_user_created ON public.order_pins USING btree (user_id, created_at DESC);


--
-- Name: idx_order_services_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_services_date_created_at ON public.order_services USING btree (date(created_at));


--
-- Name: idx_order_services_order_id_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_services_order_id_created_at ON public.order_services USING btree (order_id, created_at);


--
-- Name: idx_order_status_history_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_status_history_created_at ON public.order_status_history USING btree (created_at);


--
-- Name: idx_order_status_history_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_status_history_date_created_at ON public.order_status_history USING btree (date(created_at));


--
-- Name: idx_order_status_history_order_status_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_status_history_order_status_time ON public.order_status_history USING btree (order_id, new_status_id, created_at);


--
-- Name: idx_orders_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_created_at ON public.orders USING btree (created_at);


--
-- Name: idx_orders_created_at_visible; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_created_at_visible ON public.orders USING btree (created_at) WHERE ((hidden = 0) OR (hidden IS NULL));


--
-- Name: idx_orders_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_customer_id ON public.orders USING btree (customer_id);


--
-- Name: idx_orders_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_date_created_at ON public.orders USING btree (date(created_at));


--
-- Name: idx_orders_date_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_date_updated_at ON public.orders USING btree (date(updated_at));


--
-- Name: idx_orders_fts_search; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_fts_search ON public.orders USING gin (to_tsvector('simple'::regconfig, ((((((COALESCE(order_id, ''::text) || ' '::text) || COALESCE(comment, ''::text)) || ' '::text) || COALESCE(symptom_tags, ''::text)) || ' '::text) || COALESCE(appearance, ''::text))));


--
-- Name: idx_orders_hidden; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_hidden ON public.orders USING btree (hidden);


--
-- Name: idx_orders_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_status_id ON public.orders USING btree (status_id);


--
-- Name: idx_orders_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_updated_at ON public.orders USING btree (updated_at);


--
-- Name: idx_parts_fts_search; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_parts_fts_search ON public.parts USING gin (to_tsvector('simple'::regconfig, ((((COALESCE(name, ''::text) || ' '::text) || COALESCE(part_number, ''::text)) || ' '::text) || COALESCE(description, ''::text))));


--
-- Name: idx_payments_date_payment_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payments_date_payment_date ON public.payments USING btree (date(payment_date));


--
-- Name: idx_payments_invoice_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payments_invoice_id ON public.payments USING btree (invoice_id);


--
-- Name: idx_payments_order_id_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payments_order_id_date ON public.payments USING btree (order_id, payment_date);


--
-- Name: idx_shop_sales_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shop_sales_created_at ON public.shop_sales USING btree (created_at);


--
-- Name: idx_shop_sales_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shop_sales_date_created_at ON public.shop_sales USING btree (date(created_at));


--
-- Name: idx_shop_sales_date_sale_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shop_sales_date_sale_date ON public.shop_sales USING btree (date(sale_date));


--
-- Name: idx_shop_sales_sale_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shop_sales_sale_date ON public.shop_sales USING btree (sale_date);


--
-- Name: idx_staff_chat_attachments_message; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_attachments_message ON public.staff_chat_attachments USING btree (message_id);


--
-- Name: idx_staff_chat_messages_room_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_messages_room_created ON public.staff_chat_messages USING btree (room_key, created_at DESC);


--
-- Name: idx_staff_chat_messages_user_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_messages_user_created ON public.staff_chat_messages USING btree (user_id, created_at DESC);


--
-- Name: idx_staff_chat_reactions_message; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_reactions_message ON public.staff_chat_reactions USING btree (message_id);


--
-- Name: idx_staff_chat_reactions_message_emoji; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_reactions_message_emoji ON public.staff_chat_reactions USING btree (message_id, emoji);


--
-- Name: idx_staff_chat_read_cursors_room; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_read_cursors_room ON public.staff_chat_read_cursors USING btree (room_key);


--
-- Name: idx_staff_chat_web_push_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_staff_chat_web_push_user ON public.staff_chat_web_push_subscriptions USING btree (user_id);


--
-- Name: idx_stock_movements_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_stock_movements_created_at ON public.stock_movements USING btree (created_at);


--
-- Name: idx_stock_movements_date_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_stock_movements_date_created_at ON public.stock_movements USING btree (date(created_at));


--
-- Name: idx_transaction_categories_type_sort; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_transaction_categories_type_sort ON public.transaction_categories USING btree (type, sort_order);


--
-- Name: inventory_idx_inventory_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX inventory_idx_inventory_date_pg ON public.inventory USING btree (inventory_date);


--
-- Name: inventory_idx_inventory_status_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX inventory_idx_inventory_status_pg ON public.inventory USING btree (status);


--
-- Name: inventory_items_idx_inventory_items_inventory_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX inventory_items_idx_inventory_items_inventory_id_pg ON public.inventory_items USING btree (inventory_id);


--
-- Name: inventory_items_idx_inventory_items_part_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX inventory_items_idx_inventory_items_part_id_pg ON public.inventory_items USING btree (part_id);


--
-- Name: managers_idx_managers_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX managers_idx_managers_user_id_pg ON public.managers USING btree (user_id);


--
-- Name: managers_sqlite_autoindex_managers_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX managers_sqlite_autoindex_managers_1_pg ON public.managers USING btree (name);


--
-- Name: masters_idx_masters_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX masters_idx_masters_user_id_pg ON public.masters USING btree (user_id);


--
-- Name: masters_sqlite_autoindex_masters_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX masters_sqlite_autoindex_masters_1_pg ON public.masters USING btree (name);


--
-- Name: notification_preferences_idx_notification_preferences_user_id_p; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notification_preferences_idx_notification_preferences_user_id_p ON public.notification_preferences USING btree (user_id);


--
-- Name: notification_preferences_sqlite_autoindex_notification_preferen; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX notification_preferences_sqlite_autoindex_notification_preferen ON public.notification_preferences USING btree (user_id, notification_type);


--
-- Name: notifications_idx_notifications_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notifications_idx_notifications_created_at_pg ON public.notifications USING btree (created_at);


--
-- Name: notifications_idx_notifications_entity_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notifications_idx_notifications_entity_pg ON public.notifications USING btree (entity_type, entity_id);


--
-- Name: notifications_idx_notifications_read_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notifications_idx_notifications_read_at_pg ON public.notifications USING btree (read_at);


--
-- Name: notifications_idx_notifications_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX notifications_idx_notifications_user_id_pg ON public.notifications USING btree (user_id);


--
-- Name: order_appearance_tags_idx_order_appearance_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_appearance_tags_idx_order_appearance_order_id_pg ON public.order_appearance_tags USING btree (order_id);


--
-- Name: order_appearance_tags_idx_order_appearance_tag_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_appearance_tags_idx_order_appearance_tag_id_pg ON public.order_appearance_tags USING btree (appearance_tag_id);


--
-- Name: order_appearance_tags_sqlite_autoindex_order_appearance_tags_1_; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX order_appearance_tags_sqlite_autoindex_order_appearance_tags_1_ ON public.order_appearance_tags USING btree (order_id, appearance_tag_id);


--
-- Name: order_comments_idx_order_comments_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_created_at_pg ON public.order_comments USING btree (created_at);


--
-- Name: order_comments_idx_order_comments_new_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_new_created_at_pg ON public.order_comments USING btree (created_at);


--
-- Name: order_comments_idx_order_comments_new_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_new_order_id_pg ON public.order_comments USING btree (order_id);


--
-- Name: order_comments_idx_order_comments_order_created_desc_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_order_created_desc_pg ON public.order_comments USING btree (order_id, created_at);


--
-- Name: order_comments_idx_order_comments_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_order_id_pg ON public.order_comments USING btree (order_id);


--
-- Name: order_comments_idx_order_comments_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_comments_idx_order_comments_user_id_pg ON public.order_comments USING btree (user_id);


--
-- Name: order_models_idx_order_models_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_models_idx_order_models_name_pg ON public.order_models USING btree (name);


--
-- Name: order_models_sqlite_autoindex_order_models_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX order_models_sqlite_autoindex_order_models_1_pg ON public.order_models USING btree (name);


--
-- Name: order_parts_idx_order_parts_order_id_alt_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_parts_idx_order_parts_order_id_alt_pg ON public.order_parts USING btree (order_id);


--
-- Name: order_parts_idx_order_parts_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_parts_idx_order_parts_order_id_pg ON public.order_parts USING btree (order_id);


--
-- Name: order_parts_idx_order_parts_part_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_parts_idx_order_parts_part_id_pg ON public.order_parts USING btree (part_id);


--
-- Name: order_services_idx_order_services_order_id_alt_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_services_idx_order_services_order_id_alt_pg ON public.order_services USING btree (order_id);


--
-- Name: order_services_idx_order_services_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_services_idx_order_services_order_id_pg ON public.order_services USING btree (order_id);


--
-- Name: order_services_idx_order_services_service_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_services_idx_order_services_service_id_pg ON public.order_services USING btree (service_id);


--
-- Name: order_status_history_idx_order_status_history_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_status_history_idx_order_status_history_created_at_pg ON public.order_status_history USING btree (created_at);


--
-- Name: order_status_history_idx_order_status_history_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_status_history_idx_order_status_history_order_id_pg ON public.order_status_history USING btree (order_id);


--
-- Name: order_statuses_idx_order_statuses_code_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_statuses_idx_order_statuses_code_pg ON public.order_statuses USING btree (code);


--
-- Name: order_statuses_idx_order_statuses_is_default_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_statuses_idx_order_statuses_is_default_pg ON public.order_statuses USING btree (is_default);


--
-- Name: order_statuses_idx_order_statuses_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_statuses_idx_order_statuses_sort_order_pg ON public.order_statuses USING btree (sort_order);


--
-- Name: order_statuses_sqlite_autoindex_order_statuses_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX order_statuses_sqlite_autoindex_order_statuses_1_pg ON public.order_statuses USING btree (code);


--
-- Name: order_symptoms_idx_order_symptoms_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_symptoms_idx_order_symptoms_order_id_pg ON public.order_symptoms USING btree (order_id);


--
-- Name: order_symptoms_idx_order_symptoms_symptom_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_symptoms_idx_order_symptoms_symptom_id_pg ON public.order_symptoms USING btree (symptom_id);


--
-- Name: order_symptoms_sqlite_autoindex_order_symptoms_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX order_symptoms_sqlite_autoindex_order_symptoms_1_pg ON public.order_symptoms USING btree (order_id, symptom_id);


--
-- Name: order_templates_idx_order_templates_created_by_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_templates_idx_order_templates_created_by_pg ON public.order_templates USING btree (created_by);


--
-- Name: order_templates_idx_order_templates_is_public_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_templates_idx_order_templates_is_public_pg ON public.order_templates USING btree (is_public);


--
-- Name: order_visibility_history_idx_order_visibility_history_changed_a; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_visibility_history_idx_order_visibility_history_changed_a ON public.order_visibility_history USING btree (changed_at);


--
-- Name: order_visibility_history_idx_order_visibility_history_order_id_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX order_visibility_history_idx_order_visibility_history_order_id_ ON public.order_visibility_history USING btree (order_id);


--
-- Name: orders_idx_orders_created_at_desc_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_created_at_desc_pg ON public.orders USING btree (created_at);


--
-- Name: orders_idx_orders_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_created_at_pg ON public.orders USING btree (created_at);


--
-- Name: orders_idx_orders_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_created_pg ON public.orders USING btree (created_at);


--
-- Name: orders_idx_orders_customer_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_customer_created_pg ON public.orders USING btree (customer_id, created_at);


--
-- Name: orders_idx_orders_customer_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_customer_id_pg ON public.orders USING btree (customer_id);


--
-- Name: orders_idx_orders_customer_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_customer_pg ON public.orders USING btree (customer_id);


--
-- Name: orders_idx_orders_device_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_device_id_pg ON public.orders USING btree (device_id);


--
-- Name: orders_idx_orders_device_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_device_pg ON public.orders USING btree (device_id);


--
-- Name: orders_idx_orders_hidden_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_hidden_created_at_pg ON public.orders USING btree (hidden, created_at);


--
-- Name: orders_idx_orders_hidden_deleted_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_hidden_deleted_pg ON public.orders USING btree (hidden, is_deleted);


--
-- Name: orders_idx_orders_hidden_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_hidden_pg ON public.orders USING btree (hidden);


--
-- Name: orders_idx_orders_is_deleted_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_is_deleted_pg ON public.orders USING btree (is_deleted);


--
-- Name: orders_idx_orders_manager_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_manager_created_pg ON public.orders USING btree (manager_id, created_at);


--
-- Name: orders_idx_orders_manager_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_manager_id_pg ON public.orders USING btree (manager_id);


--
-- Name: orders_idx_orders_master_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_master_id_pg ON public.orders USING btree (master_id);


--
-- Name: orders_idx_orders_master_status_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_master_status_pg ON public.orders USING btree (master_id, status_id);


--
-- Name: orders_idx_orders_model_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_model_id_pg ON public.orders USING btree (model_id);


--
-- Name: orders_idx_orders_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_order_id_pg ON public.orders USING btree (order_id);


--
-- Name: orders_idx_orders_prepayment_cents_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_prepayment_cents_pg ON public.orders USING btree (prepayment_cents);


--
-- Name: orders_idx_orders_status_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_status_created_at_pg ON public.orders USING btree (status_id, created_at);


--
-- Name: orders_idx_orders_status_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_status_id_pg ON public.orders USING btree (status_id);


--
-- Name: orders_idx_orders_status_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_status_pg ON public.orders USING btree (status);


--
-- Name: orders_idx_orders_updated_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX orders_idx_orders_updated_at_pg ON public.orders USING btree (updated_at);


--
-- Name: orders_sqlite_autoindex_orders_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX orders_sqlite_autoindex_orders_1_pg ON public.orders USING btree (order_id);


--
-- Name: part_categories_idx_part_categories_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX part_categories_idx_part_categories_name_pg ON public.part_categories USING btree (name);


--
-- Name: part_categories_idx_part_categories_parent_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX part_categories_idx_part_categories_parent_id_pg ON public.part_categories USING btree (parent_id);


--
-- Name: part_categories_sqlite_autoindex_part_categories_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX part_categories_sqlite_autoindex_part_categories_1_pg ON public.part_categories USING btree (name);


--
-- Name: part_categories_ux_part_categories_name_parent_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX part_categories_ux_part_categories_name_parent_pg ON public.part_categories USING btree (name);


--
-- Name: parts_idx_parts_category_deleted_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_category_deleted_pg ON public.parts USING btree (category, is_deleted);


--
-- Name: parts_idx_parts_category_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_category_id_pg ON public.parts USING btree (category_id);


--
-- Name: parts_idx_parts_category_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_category_pg ON public.parts USING btree (category);


--
-- Name: parts_idx_parts_category_stock_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_category_stock_pg ON public.parts USING btree (category, stock_quantity);


--
-- Name: parts_idx_parts_is_deleted_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_is_deleted_pg ON public.parts USING btree (is_deleted);


--
-- Name: parts_idx_parts_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_name_pg ON public.parts USING btree (name);


--
-- Name: parts_idx_parts_part_number_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_part_number_pg ON public.parts USING btree (part_number);


--
-- Name: parts_idx_parts_stock_quantity_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_stock_quantity_pg ON public.parts USING btree (stock_quantity);


--
-- Name: parts_idx_parts_unit_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX parts_idx_parts_unit_pg ON public.parts USING btree (unit);


--
-- Name: parts_ux_parts_name_part_number_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX parts_ux_parts_name_part_number_pg ON public.parts USING btree (name, part_number);


--
-- Name: payment_receipts_idx_payment_receipts_payment_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payment_receipts_idx_payment_receipts_payment_id_pg ON public.payment_receipts USING btree (payment_id);


--
-- Name: payments_idx_payments_not_cancelled_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_not_cancelled_pg ON public.payments USING btree (is_cancelled);


--
-- Name: payments_idx_payments_order_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_order_created_pg ON public.payments USING btree (order_id, created_at);


--
-- Name: payments_idx_payments_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_order_id_pg ON public.payments USING btree (order_id);


--
-- Name: payments_idx_payments_payment_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_payment_date_pg ON public.payments USING btree (payment_date);


--
-- Name: payments_idx_payments_payment_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_payment_type_pg ON public.payments USING btree (payment_type);


--
-- Name: payments_idx_payments_status_created_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX payments_idx_payments_status_created_pg ON public.payments USING btree (status, created_at);


--
-- Name: payments_ux_payments_idempotency_key_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payments_ux_payments_idempotency_key_pg ON public.payments USING btree (idempotency_key);


--
-- Name: permissions_idx_permissions_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX permissions_idx_permissions_name_pg ON public.permissions USING btree (name);


--
-- Name: permissions_sqlite_autoindex_permissions_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX permissions_sqlite_autoindex_permissions_1_pg ON public.permissions USING btree (name);


--
-- Name: print_templates_idx_print_templates_template_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX print_templates_idx_print_templates_template_type_pg ON public.print_templates USING btree (template_type);


--
-- Name: purchase_items_idx_purchase_items_part_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchase_items_idx_purchase_items_part_id_pg ON public.purchase_items USING btree (part_id);


--
-- Name: purchase_items_idx_purchase_items_purchase_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchase_items_idx_purchase_items_purchase_id_pg ON public.purchase_items USING btree (purchase_id);


--
-- Name: purchases_idx_purchases_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchases_idx_purchases_created_at_pg ON public.purchases USING btree (created_at);


--
-- Name: purchases_idx_purchases_purchase_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchases_idx_purchases_purchase_date_pg ON public.purchases USING btree (purchase_date);


--
-- Name: purchases_idx_purchases_status_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchases_idx_purchases_status_pg ON public.purchases USING btree (status);


--
-- Name: purchases_idx_purchases_supplier_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchases_idx_purchases_supplier_id_pg ON public.purchases USING btree (supplier_id);


--
-- Name: role_permissions_idx_role_permissions_permission_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX role_permissions_idx_role_permissions_permission_pg ON public.role_permissions USING btree (permission_id);


--
-- Name: role_permissions_idx_role_permissions_role_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX role_permissions_idx_role_permissions_role_pg ON public.role_permissions USING btree (role);


--
-- Name: role_permissions_sqlite_autoindex_role_permissions_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX role_permissions_sqlite_autoindex_role_permissions_1_pg ON public.role_permissions USING btree (role, permission_id);


--
-- Name: salary_accruals_idx_salary_accruals_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_accruals_idx_salary_accruals_created_at_pg ON public.salary_accruals USING btree (created_at);


--
-- Name: salary_accruals_idx_salary_accruals_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_accruals_idx_salary_accruals_order_id_pg ON public.salary_accruals USING btree (order_id);


--
-- Name: salary_accruals_idx_salary_accruals_role_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_accruals_idx_salary_accruals_role_pg ON public.salary_accruals USING btree (role);


--
-- Name: salary_accruals_idx_salary_accruals_shop_sale_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_accruals_idx_salary_accruals_shop_sale_id_pg ON public.salary_accruals USING btree (shop_sale_id);


--
-- Name: salary_accruals_idx_salary_accruals_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_accruals_idx_salary_accruals_user_id_pg ON public.salary_accruals USING btree (user_id);


--
-- Name: salary_bonuses_idx_salary_bonuses_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_bonuses_idx_salary_bonuses_date_pg ON public.salary_bonuses USING btree (bonus_date);


--
-- Name: salary_bonuses_idx_salary_bonuses_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_bonuses_idx_salary_bonuses_order_id_pg ON public.salary_bonuses USING btree (order_id);


--
-- Name: salary_bonuses_idx_salary_bonuses_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_bonuses_idx_salary_bonuses_user_id_pg ON public.salary_bonuses USING btree (user_id, role);


--
-- Name: salary_fines_idx_salary_fines_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_fines_idx_salary_fines_date_pg ON public.salary_fines USING btree (fine_date);


--
-- Name: salary_fines_idx_salary_fines_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_fines_idx_salary_fines_order_id_pg ON public.salary_fines USING btree (order_id);


--
-- Name: salary_fines_idx_salary_fines_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_fines_idx_salary_fines_user_id_pg ON public.salary_fines USING btree (user_id, role);


--
-- Name: salary_payments_idx_salary_payments_cash_transaction_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_payments_idx_salary_payments_cash_transaction_id_pg ON public.salary_payments USING btree (cash_transaction_id);


--
-- Name: salary_payments_idx_salary_payments_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_payments_idx_salary_payments_date_pg ON public.salary_payments USING btree (payment_date);


--
-- Name: salary_payments_idx_salary_payments_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX salary_payments_idx_salary_payments_user_id_pg ON public.salary_payments USING btree (user_id, role);


--
-- Name: services_idx_services_is_default_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_idx_services_is_default_pg ON public.services USING btree (is_default);


--
-- Name: services_idx_services_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX services_idx_services_sort_order_pg ON public.services USING btree (sort_order);


--
-- Name: services_ux_services_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX services_ux_services_name_pg ON public.services USING btree (name);


--
-- Name: shop_sale_items_idx_shop_sale_items_sale_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX shop_sale_items_idx_shop_sale_items_sale_pg ON public.shop_sale_items USING btree (shop_sale_id);


--
-- Name: shop_sales_idx_shop_sales_customer_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX shop_sales_idx_shop_sales_customer_pg ON public.shop_sales USING btree (customer_id);


--
-- Name: shop_sales_idx_shop_sales_date_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX shop_sales_idx_shop_sales_date_pg ON public.shop_sales USING btree (sale_date);


--
-- Name: stock_movements_idx_stock_movements_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_movements_idx_stock_movements_created_at_pg ON public.stock_movements USING btree (created_at);


--
-- Name: stock_movements_idx_stock_movements_date_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_movements_idx_stock_movements_date_type_pg ON public.stock_movements USING btree (created_at, movement_type);


--
-- Name: stock_movements_idx_stock_movements_movement_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_movements_idx_stock_movements_movement_type_pg ON public.stock_movements USING btree (movement_type);


--
-- Name: stock_movements_idx_stock_movements_part_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_movements_idx_stock_movements_part_id_pg ON public.stock_movements USING btree (part_id);


--
-- Name: stock_movements_idx_stock_movements_reference_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_movements_idx_stock_movements_reference_pg ON public.stock_movements USING btree (reference_type, reference_id);


--
-- Name: suppliers_idx_suppliers_is_active_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX suppliers_idx_suppliers_is_active_pg ON public.suppliers USING btree (is_active);


--
-- Name: suppliers_idx_suppliers_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX suppliers_idx_suppliers_name_pg ON public.suppliers USING btree (name);


--
-- Name: suppliers_sqlite_autoindex_suppliers_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX suppliers_sqlite_autoindex_suppliers_1_pg ON public.suppliers USING btree (name);


--
-- Name: symptoms_idx_symptoms_name_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX symptoms_idx_symptoms_name_pg ON public.symptoms USING btree (name);


--
-- Name: symptoms_idx_symptoms_sort_order_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX symptoms_idx_symptoms_sort_order_pg ON public.symptoms USING btree (sort_order);


--
-- Name: symptoms_sqlite_autoindex_symptoms_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX symptoms_sqlite_autoindex_symptoms_1_pg ON public.symptoms USING btree (name);


--
-- Name: system_settings_idx_system_settings_key_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX system_settings_idx_system_settings_key_pg ON public.system_settings USING btree (key);


--
-- Name: system_settings_sqlite_autoindex_system_settings_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX system_settings_sqlite_autoindex_system_settings_1_pg ON public.system_settings USING btree (key);


--
-- Name: task_checklists_idx_task_checklists_task_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX task_checklists_idx_task_checklists_task_id_pg ON public.task_checklists USING btree (task_id);


--
-- Name: tasks_idx_tasks_assigned_to_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tasks_idx_tasks_assigned_to_pg ON public.tasks USING btree (assigned_to);


--
-- Name: tasks_idx_tasks_created_by_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tasks_idx_tasks_created_by_pg ON public.tasks USING btree (created_by);


--
-- Name: tasks_idx_tasks_deadline_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tasks_idx_tasks_deadline_pg ON public.tasks USING btree (deadline);


--
-- Name: tasks_idx_tasks_order_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tasks_idx_tasks_order_id_pg ON public.tasks USING btree (order_id);


--
-- Name: tasks_idx_tasks_status_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tasks_idx_tasks_status_pg ON public.tasks USING btree (status);


--
-- Name: transaction_categories_ux_transaction_categories_name_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX transaction_categories_ux_transaction_categories_name_type_pg ON public.transaction_categories USING btree (name, type);


--
-- Name: uq_print_templates_branch_type; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_print_templates_branch_type ON public.print_templates USING btree (template_type, branch_id) WHERE (branch_id IS NOT NULL);


--
-- Name: uq_print_templates_global_type; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_print_templates_global_type ON public.print_templates USING btree (template_type) WHERE (branch_id IS NULL);


--
-- Name: uq_staff_chat_reactions_actor; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_staff_chat_reactions_actor ON public.staff_chat_reactions USING btree (message_id, user_id, actor_display_name, client_instance_id, emoji);


--
-- Name: uq_staff_chat_read_cursors_actor; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_staff_chat_read_cursors_actor ON public.staff_chat_read_cursors USING btree (room_key, user_id, actor_display_name, client_instance_id);


--
-- Name: uq_staff_chat_web_push_user_endpoint; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uq_staff_chat_web_push_user_endpoint ON public.staff_chat_web_push_subscriptions USING btree (user_id, endpoint);


--
-- Name: user_role_history_idx_user_role_history_changed_by_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_role_history_idx_user_role_history_changed_by_pg ON public.user_role_history USING btree (changed_by);


--
-- Name: user_role_history_idx_user_role_history_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_role_history_idx_user_role_history_created_at_pg ON public.user_role_history USING btree (created_at);


--
-- Name: user_role_history_idx_user_role_history_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_role_history_idx_user_role_history_user_id_pg ON public.user_role_history USING btree (user_id);


--
-- Name: users_idx_users_is_active_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_idx_users_is_active_pg ON public.users USING btree (is_active);


--
-- Name: users_idx_users_role_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_idx_users_role_pg ON public.users USING btree (role);


--
-- Name: users_idx_users_username_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX users_idx_users_username_pg ON public.users USING btree (username);


--
-- Name: users_sqlite_autoindex_users_1_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_sqlite_autoindex_users_1_pg ON public.users USING btree (username);


--
-- Name: ux_salary_accruals_business_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ux_salary_accruals_business_key ON public.salary_accruals USING btree (order_id, user_id, role, rule_type, rule_value, calculated_from, COALESCE(calculated_from_id, ('-1'::integer)::bigint), amount_cents, base_amount_cents, profit_cents, COALESCE(vat_included, (0)::bigint));


--
-- Name: warehouse_logs_idx_warehouse_logs_category_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX warehouse_logs_idx_warehouse_logs_category_id_pg ON public.warehouse_logs USING btree (category_id);


--
-- Name: warehouse_logs_idx_warehouse_logs_created_at_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX warehouse_logs_idx_warehouse_logs_created_at_pg ON public.warehouse_logs USING btree (created_at);


--
-- Name: warehouse_logs_idx_warehouse_logs_operation_type_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX warehouse_logs_idx_warehouse_logs_operation_type_pg ON public.warehouse_logs USING btree (operation_type);


--
-- Name: warehouse_logs_idx_warehouse_logs_part_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX warehouse_logs_idx_warehouse_logs_part_id_pg ON public.warehouse_logs USING btree (part_id);


--
-- Name: warehouse_logs_idx_warehouse_logs_user_id_pg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX warehouse_logs_idx_warehouse_logs_user_id_pg ON public.warehouse_logs USING btree (user_id);


--
-- Name: diagnostics_templates diagnostics_templates_device_brand_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnostics_templates
    ADD CONSTRAINT diagnostics_templates_device_brand_id_fkey FOREIGN KEY (device_brand_id) REFERENCES public.device_brands(id) ON DELETE SET NULL;


--
-- Name: diagnostics_templates diagnostics_templates_device_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnostics_templates
    ADD CONSTRAINT diagnostics_templates_device_type_id_fkey FOREIGN KEY (device_type_id) REFERENCES public.device_types(id) ON DELETE SET NULL;


--
-- Name: diagnostics_templates diagnostics_templates_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diagnostics_templates
    ADD CONSTRAINT diagnostics_templates_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.order_models(id) ON DELETE SET NULL;


--
-- Name: invoice_items invoice_items_invoice_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_invoice_id_fkey FOREIGN KEY (invoice_id) REFERENCES public.invoices(id) ON DELETE CASCADE;


--
-- Name: invoices invoices_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: invoices invoices_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: invoices invoices_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- Name: invoices invoices_paid_by_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_paid_by_user_id_fkey FOREIGN KEY (paid_by_user_id) REFERENCES public.users(id);


--
-- Name: invoices invoices_payment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payments(id);


--
-- Name: managers managers_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branches(id);


--
-- Name: masters masters_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.masters
    ADD CONSTRAINT masters_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branches(id);


--
-- Name: order_client_files order_client_files_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_client_files
    ADD CONSTRAINT order_client_files_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_customer_emails order_customer_emails_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_customer_emails
    ADD CONSTRAINT order_customer_emails_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE SET NULL;


--
-- Name: order_customer_emails order_customer_emails_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_customer_emails
    ADD CONSTRAINT order_customer_emails_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_diagnostics_history order_diagnostics_history_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_diagnostics_history
    ADD CONSTRAINT order_diagnostics_history_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_pins order_pins_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_pins
    ADD CONSTRAINT order_pins_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_pins order_pins_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_pins
    ADD CONSTRAINT order_pins_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: orders orders_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branches(id);


--
-- Name: print_templates print_templates_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.print_templates
    ADD CONSTRAINT print_templates_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branches(id) ON DELETE SET NULL;


--
-- Name: staff_chat_attachments staff_chat_attachments_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_attachments
    ADD CONSTRAINT staff_chat_attachments_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.staff_chat_messages(id) ON DELETE CASCADE;


--
-- Name: staff_chat_messages staff_chat_messages_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_messages
    ADD CONSTRAINT staff_chat_messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: staff_chat_reactions staff_chat_reactions_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_reactions
    ADD CONSTRAINT staff_chat_reactions_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.staff_chat_messages(id) ON DELETE CASCADE;


--
-- Name: staff_chat_reactions staff_chat_reactions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_reactions
    ADD CONSTRAINT staff_chat_reactions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: staff_chat_read_cursors staff_chat_read_cursors_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_read_cursors
    ADD CONSTRAINT staff_chat_read_cursors_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: staff_chat_web_push_subscriptions staff_chat_web_push_subscriptions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.staff_chat_web_push_subscriptions
    ADD CONSTRAINT staff_chat_web_push_subscriptions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users users_branch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branches(id);


--
-- PostgreSQL database dump complete
--


