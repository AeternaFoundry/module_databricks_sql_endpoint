variable "sql_endpoints" {
  description = <<EOT
Map of sql_endpoints, attributes below
Required:
    - cluster_size
    - name
Optional:
    - auto_stop_mins
    - data_source_id
    - enable_photon
    - enable_serverless_compute
    - instance_profile_arn
    - max_num_clusters
    - min_num_clusters
    - no_wait
    - spot_instance_policy
    - warehouse_type
    - channel (block):
        - dbsql_version (optional)
        - name (optional)
    - provider_config (block):
        - workspace_id (optional)
    - tags (block):
        - custom_tags (optional, block):
            - key (required)
            - value (required)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    cluster_size              = string
    name                      = string
    auto_stop_mins            = optional(number)
    data_source_id            = optional(string)
    enable_photon             = optional(bool)
    enable_serverless_compute = optional(bool)
    instance_profile_arn      = optional(string)
    max_num_clusters          = optional(number)
    min_num_clusters          = optional(number)
    no_wait                   = optional(bool)
    spot_instance_policy      = optional(string)
    warehouse_type            = optional(string)
    channel = optional(object({
      dbsql_version = optional(string)
      name          = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    tags = optional(object({
      custom_tags = optional(list(object({
        key   = string
        value = string
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

