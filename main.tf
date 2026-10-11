data "aws_lb_hosted_zone_id" "lb_hosted_zone_id_lookup" {
  for_each = var.lb_hosted_zone_id_lookup

  load_balancer_type = each.value.load_balancer_type
  region             = each.value.region
}

