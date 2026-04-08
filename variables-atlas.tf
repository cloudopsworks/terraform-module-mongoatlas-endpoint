##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

variable "project_id" {
  description = "(Optional) The ID of the MongoDB Atlas project. Mutually exclusive with project_name; provide one or the other."
  type        = string
  default     = ""
  nullable    = true
}

variable "project_name" {
  description = "(Optional) The name of the MongoDB Atlas project. Used to resolve the project_id when project_id is not provided. Mutually exclusive with project_id."
  type        = string
  default     = ""
  nullable    = true
}

variable "atlas_container_id" {
  description = "(Required) The ID of the MongoDB Atlas network container. Used to determine the cloud provider and region for the PrivateLink endpoint."
  type        = string
}
