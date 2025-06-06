variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "Alta3ResearchWebService"
}

variable "internal_port" {
  description = "Value of the internal port"
  type        = number
  default     = 9876
}

variable "external_port" {
  description = "Value of the external port"
  type        = number
  default     = 5432
}
