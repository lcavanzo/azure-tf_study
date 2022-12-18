# Web Linux Vm Instance Count
variable "web_linuxvm_instance_count" {
  description = "Web Linux VM Instance Count"
  type = map(string)
  default = {
    "vm1" = "1022"
    "vm2" = "2022"
  }
}
