resource "databricks_sql_endpoint" "sql_endpoints" {
  for_each = var.sql_endpoints

  cluster_size              = each.value.cluster_size
  name                      = each.value.name
  auto_stop_mins            = each.value.auto_stop_mins
  data_source_id            = each.value.data_source_id
  enable_photon             = each.value.enable_photon
  enable_serverless_compute = each.value.enable_serverless_compute
  instance_profile_arn      = each.value.instance_profile_arn
  max_num_clusters          = each.value.max_num_clusters
  min_num_clusters          = each.value.min_num_clusters
  no_wait                   = each.value.no_wait
  spot_instance_policy      = each.value.spot_instance_policy
  warehouse_type            = each.value.warehouse_type

  dynamic "channel" {
    for_each = each.value.channel != null ? [each.value.channel] : []
    content {
      dbsql_version = channel.value.dbsql_version
      name          = channel.value.name
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? [each.value.tags] : []
    content {
      dynamic "custom_tags" {
        for_each = tags.value.custom_tags != null ? tags.value.custom_tags : []
        content {
          key   = custom_tags.value.key
          value = custom_tags.value.value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

