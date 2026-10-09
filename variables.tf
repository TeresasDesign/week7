variable "project_network" {
  type        = string
  description = "The name of the external or project network in cPouta"
  default     = "public"
}

variable "name_prefix" {
  type        = string
  description = "Prefix applied to all created resource names"
  validation {
    condition     = length(var.name_prefix) > 0
    error_message = "The name_prefix variable must not be empty."
  }
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to your local SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "CIDR block allowed to SSH into the instance"
  default     = "0.0.0.0/0"
}

variable "image_name" {
  type        = string
  description = "Name of the OS image in cPouta"
  default     = "Rocky-9"
}

variable "flavor_name" {
  type        = string
  description = "Flavor size for the virtual machine"
  default     = "standard.small"
}

variable "student_name" {
  type        = string
  description = "Your name to display on the web page"
}

variable "page_message" {
  type        = string
  description = "Custom message to display on the web page"
}