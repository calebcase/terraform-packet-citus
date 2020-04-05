variable "project_name" {
  description = "The Packet project name to use."
  type        = string
  default     = "citus"
}

variable "facility" {
  description = "The Packet facility to deploy to."
  type        = string
  default     = "sjc1"
}

variable "billing_cycle" {
  description = "The Packet billing Cycle type to use."
  type        = string
  default     = "hourly"
}

variable "coordinator_device_plan" {
  description = "The Packet plan to use for the coordinator host."
  type        = string
  default     = "t3.small.x86"
}

variable "worker_device_plan" {
  description = "The Packet plan to use for the worker hosts."
  type        = string
  default     = "t3.small.x86"
}

variable "workers" {
  description = "Worker hostnames."
  type        = set(string)
  default = [
    "1.worker",
    "2.worker",
    "3.worker",
  ]
}
