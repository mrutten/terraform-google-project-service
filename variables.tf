variable "project_id" {
  description = "The GCP project you want to enable APIs on."
  type        = string
}

variable "services" {
  description = "The list of apis to activate within the project."
  type        = list(string)
  default     = []
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed."
  type        = bool
  default     = true
}

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed."
  type        = bool
  default     = true
}
