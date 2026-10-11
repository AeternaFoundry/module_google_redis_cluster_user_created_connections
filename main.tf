resource "google_redis_cluster_user_created_connections" "redis_cluster_user_created_connections" {
  for_each = var.redis_cluster_user_created_connections

  name            = each.value.name
  region          = each.value.region
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "cluster_endpoints" {
    for_each = each.value.cluster_endpoints != null ? each.value.cluster_endpoints : []
    content {
      dynamic "connections" {
        for_each = cluster_endpoints.value.connections != null ? cluster_endpoints.value.connections : []
        content {
          dynamic "psc_connection" {
            for_each = connections.value.psc_connection != null ? [connections.value.psc_connection] : []
            content {
              address            = psc_connection.value.address
              forwarding_rule    = psc_connection.value.forwarding_rule
              network            = psc_connection.value.network
              project_id         = psc_connection.value.project_id
              psc_connection_id  = psc_connection.value.psc_connection_id
              service_attachment = psc_connection.value.service_attachment
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

