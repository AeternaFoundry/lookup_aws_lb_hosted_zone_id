output "lb_hosted_zone_id_lookup_id" {
  description = "Map of id values across all lb_hosted_zone_id_lookup, keyed the same as var.lb_hosted_zone_id_lookup"
  value       = { for k, v in data.aws_lb_hosted_zone_id.lb_hosted_zone_id_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_hosted_zone_id_lookup_load_balancer_type" {
  description = "Map of load_balancer_type values across all lb_hosted_zone_id_lookup, keyed the same as var.lb_hosted_zone_id_lookup"
  value       = { for k, v in data.aws_lb_hosted_zone_id.lb_hosted_zone_id_lookup : k => v.load_balancer_type if v.load_balancer_type != null && length(v.load_balancer_type) > 0 }
}
output "lb_hosted_zone_id_lookup_region" {
  description = "Map of region values across all lb_hosted_zone_id_lookup, keyed the same as var.lb_hosted_zone_id_lookup"
  value       = { for k, v in data.aws_lb_hosted_zone_id.lb_hosted_zone_id_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

