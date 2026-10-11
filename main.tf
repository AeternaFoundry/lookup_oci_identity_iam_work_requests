data "oci_identity_iam_work_requests" "identity_iam_work_requests_lookup" {
  for_each = var.identity_iam_work_requests_lookup

  compartment_id      = each.value.compartment_id
  resource_identifier = each.value.resource_identifier

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

