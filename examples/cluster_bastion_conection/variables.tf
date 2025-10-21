variable "upcloud_username" {
  description = "The username for the UpCloud account."
  type        = string
}

variable "upcloud_password" {
  description = "The password for the UpCloud account."
  type        = string
  sensitive = true
}

variable "customer" {
  description = "The name of the customer."
  type        = string
}

variable "zone" {
  description = "The UpCloud zone to deploy resources in."
  type        = string
}
