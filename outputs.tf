output "sql_endpoints_id" {
  description = "Map of id values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no id are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_endpoints_auto_stop_mins" {
  description = "Map of auto_stop_mins values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no auto_stop_mins are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.auto_stop_mins if v.auto_stop_mins != null }
}
output "sql_endpoints_channel" {
  description = "Map of channel values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no channel are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => one(v.channel) if v.channel != null && length(v.channel) > 0 }
}
output "sql_endpoints_cluster_size" {
  description = "Map of cluster_size values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no cluster_size are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.cluster_size if v.cluster_size != null && length(v.cluster_size) > 0 }
}
output "sql_endpoints_creator_name" {
  description = "Map of creator_name values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no creator_name are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.creator_name if v.creator_name != null && length(v.creator_name) > 0 }
}
output "sql_endpoints_data_source_id" {
  description = "Map of data_source_id values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no data_source_id are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.data_source_id if v.data_source_id != null && length(v.data_source_id) > 0 }
}
output "sql_endpoints_enable_photon" {
  description = "Map of enable_photon values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no enable_photon are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.enable_photon if v.enable_photon != null }
}
output "sql_endpoints_enable_serverless_compute" {
  description = "Map of enable_serverless_compute values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no enable_serverless_compute are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.enable_serverless_compute if v.enable_serverless_compute != null }
}
output "sql_endpoints_health" {
  description = "Map of health values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no health are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.health if v.health != null && length(v.health) > 0 }
}
output "sql_endpoints_instance_profile_arn" {
  description = "Map of instance_profile_arn values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no instance_profile_arn are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.instance_profile_arn if v.instance_profile_arn != null && length(v.instance_profile_arn) > 0 }
}
output "sql_endpoints_jdbc_url" {
  description = "Map of jdbc_url values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no jdbc_url are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.jdbc_url if v.jdbc_url != null && length(v.jdbc_url) > 0 }
}
output "sql_endpoints_max_num_clusters" {
  description = "Map of max_num_clusters values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no max_num_clusters are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.max_num_clusters if v.max_num_clusters != null }
}
output "sql_endpoints_min_num_clusters" {
  description = "Map of min_num_clusters values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no min_num_clusters are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.min_num_clusters if v.min_num_clusters != null }
}
output "sql_endpoints_name" {
  description = "Map of name values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no name are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_endpoints_no_wait" {
  description = "Map of no_wait values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no no_wait are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.no_wait if v.no_wait != null }
}
output "sql_endpoints_num_active_sessions" {
  description = "Map of num_active_sessions values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no num_active_sessions are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.num_active_sessions if v.num_active_sessions != null }
}
output "sql_endpoints_num_clusters" {
  description = "Map of num_clusters values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no num_clusters are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.num_clusters if v.num_clusters != null }
}
output "sql_endpoints_odbc_params" {
  description = "Map of odbc_params values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no odbc_params are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.odbc_params if v.odbc_params != null && length(v.odbc_params) > 0 }
}
output "sql_endpoints_provider_config" {
  description = "Map of provider_config values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_endpoints_spot_instance_policy" {
  description = "Map of spot_instance_policy values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no spot_instance_policy are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.spot_instance_policy if v.spot_instance_policy != null && length(v.spot_instance_policy) > 0 }
}
output "sql_endpoints_state" {
  description = "Map of state values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no state are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}
output "sql_endpoints_tags" {
  description = "Map of tags values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no tags are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => one(v.tags) if v.tags != null && length(v.tags) > 0 }
}
output "sql_endpoints_warehouse_type" {
  description = "Map of warehouse_type values across all sql_endpoints, keyed the same as var.sql_endpoints except keys with no warehouse_type are omitted"
  value       = { for k, v in databricks_sql_endpoint.sql_endpoints : k => v.warehouse_type if v.warehouse_type != null && length(v.warehouse_type) > 0 }
}

