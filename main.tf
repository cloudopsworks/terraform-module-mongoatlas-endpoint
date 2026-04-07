##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

data "mongodbatlas_project" "this" {
  count = var.project_name != "" ? 1 : 0
  name  = var.project_name
}

data "mongodbatlas_network_container" "this" {
  container_id = var.atlas_container_id
  project_id   = var.project_id != "" ? var.project_id : data.mongodbatlas_project.this[0].project_id
}

resource "mongodbatlas_privatelink_endpoint" "this" {
  project_id    = var.project_id != "" ? var.project_id : data.mongodbatlas_project.this[0].project_id
  provider_name = data.mongodbatlas_network_container.this.provider_name
  region        = data.mongodbatlas_network_container.this.region_name
}
