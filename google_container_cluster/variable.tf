variable "name" {
  type = string
  description = "Provide the name of the cluster"
}

variable "location" {
  type = string
  description = "Location where cluster will create"
}

variable "node_locations" {
  type = list(string)
  description = "Zones where nodes will create"  
}

variable "network" {
  type = string
  description = "VPC network of cluster"
}

variable "subnetwork" {
  type = string
  description = "Subnet in which cluster will create"
}

variable "deletion_protection" {
  type = bool
  default = false
  description = " "
}

variable "remove_default_node_pool" {
  type = bool
  default = false
  description = " "  
}

variable "enable_private_nodes" {
  type = bool
  default = false
  description = " "
}

variable "master_ipv4_cidr_block" {
  type = string
  description = "master Ip used by the control plane component"
}
/*
variable "cidr_blocks" {
  type = map(object({
    cidr_block   = string
    display_name = string
  }))
  description = "List of subnet range authorized to access master"
}
*/

variable "cidr_blocks" {
  type = list(object({
    cidr_block = string
    display_name = string
  }))
  description = "Authorized IP range"
}

variable "node_pool_name" {
  type = string
  description = "Node pool name"
}

variable "initial_node_count" {
  type = number
  default = 3
  description = "Number of nodes created while creating node pool"
}

variable "machine_type" {
  type = string
  description = "Machine type of the nodes while creation"
}

variable "disk_type" {
  type = string
  description = "Disk type name"
}

variable "disk_size_gb" {
  type = number
  description = "The size of disk in GB"
}

variable "timeouts_create" {
  type = string
  description = "maximum time while creation in minutes"
}

variable "timeouts_update" {
  type = string
  description = "maximum time while updation in minutes"
}


