variable "lb_hosted_zone_id_lookup" {
  description = <<EOT
Map of lb_hosted_zone_id_lookup, attributes below
Optional:
    - load_balancer_type
    - region
EOT

  type = map(object({
    load_balancer_type = optional(string)
    region             = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

