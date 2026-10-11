variable "redis_cluster_user_created_connections" {
  description = <<EOT
Map of redis_cluster_user_created_connections, attributes below
Required:
    - name
    - region
Optional:
    - deletion_policy
    - project
    - cluster_endpoints (block):
        - connections (optional, block):
            - psc_connection (optional, block):
                - address (required)
                - forwarding_rule (required)
                - network (required)
                - project_id (optional)
                - psc_connection_id (required)
                - service_attachment (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    region          = string
    deletion_policy = optional(string)
    project         = optional(string)
    cluster_endpoints = optional(list(object({
      connections = optional(list(object({
        psc_connection = optional(object({
          address            = string
          forwarding_rule    = string
          network            = string
          project_id         = optional(string)
          psc_connection_id  = string
          service_attachment = string
        }))
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

