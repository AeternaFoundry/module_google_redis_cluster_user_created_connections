output "redis_cluster_user_created_connections_id" {
  description = "Map of id values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no id are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redis_cluster_user_created_connections_cluster_endpoints" {
  description = "Map of cluster_endpoints values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no cluster_endpoints are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.cluster_endpoints if v.cluster_endpoints != null && length(v.cluster_endpoints) > 0 }
}
output "redis_cluster_user_created_connections_deletion_policy" {
  description = "Map of deletion_policy values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no deletion_policy are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "redis_cluster_user_created_connections_name" {
  description = "Map of name values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no name are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "redis_cluster_user_created_connections_project" {
  description = "Map of project values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no project are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.project if v.project != null && length(v.project) > 0 }
}
output "redis_cluster_user_created_connections_region" {
  description = "Map of region values across all redis_cluster_user_created_connections, keyed the same as var.redis_cluster_user_created_connections except keys with no region are omitted"
  value       = { for k, v in google_redis_cluster_user_created_connections.redis_cluster_user_created_connections : k => v.region if v.region != null && length(v.region) > 0 }
}

