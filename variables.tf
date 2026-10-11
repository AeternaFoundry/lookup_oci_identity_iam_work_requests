variable "identity_iam_work_requests_lookup" {
  description = <<EOT
Map of identity_iam_work_requests_lookup, attributes below
Required:
    - compartment_id
Optional:
    - resource_identifier
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    resource_identifier = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

