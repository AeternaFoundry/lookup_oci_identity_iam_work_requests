output "identity_iam_work_requests_lookup_id" {
  description = "Map of id values across all identity_iam_work_requests_lookup, keyed the same as var.identity_iam_work_requests_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_iam_work_requests.identity_iam_work_requests_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_iam_work_requests_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_iam_work_requests_lookup, keyed the same as var.identity_iam_work_requests_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_iam_work_requests.identity_iam_work_requests_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_iam_work_requests_lookup_filter" {
  description = "Map of filter values across all identity_iam_work_requests_lookup, keyed the same as var.identity_iam_work_requests_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_iam_work_requests.identity_iam_work_requests_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_iam_work_requests_lookup_iam_work_requests" {
  description = "Map of iam_work_requests values across all identity_iam_work_requests_lookup, keyed the same as var.identity_iam_work_requests_lookup except keys with no iam_work_requests are omitted"
  value       = { for k, v in data.oci_identity_iam_work_requests.identity_iam_work_requests_lookup : k => v.iam_work_requests if v.iam_work_requests != null && length(v.iam_work_requests) > 0 }
}
output "identity_iam_work_requests_lookup_resource_identifier" {
  description = "Map of resource_identifier values across all identity_iam_work_requests_lookup, keyed the same as var.identity_iam_work_requests_lookup except keys with no resource_identifier are omitted"
  value       = { for k, v in data.oci_identity_iam_work_requests.identity_iam_work_requests_lookup : k => v.resource_identifier if v.resource_identifier != null && length(v.resource_identifier) > 0 }
}

