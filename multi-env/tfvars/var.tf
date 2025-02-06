variable "instances" {
  default = ["mysql","frontend","backend"]
}

variable "domain_name" {
  default = "kommanuthala.store"
}

variable "project" {
  default = "expense"
}

variable "env" {
  
}

variable "common_tags" {
  type = map
  default = {
    project ="expense"
  }
}