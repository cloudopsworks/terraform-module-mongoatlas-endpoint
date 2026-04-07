##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

output "endpoint_privatelink_id" {
  value = mongodbatlas_privatelink_endpoint.this.private_link_id
}

output "endpoint_privatelink_service_name" {
  value = mongodbatlas_privatelink_endpoint.this.endpoint_service_name
}

output "endpoint_status" {
  value = mongodbatlas_privatelink_endpoint.this.status
}
