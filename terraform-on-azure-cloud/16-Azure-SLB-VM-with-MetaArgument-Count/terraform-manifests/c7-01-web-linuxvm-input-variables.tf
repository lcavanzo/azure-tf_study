# Linux VM Input variables placeholder file 

# Web Linux Vm Instance Count
variable "web_linuxvm_instance_count" {
  description = "Web Linux VM Instance Count"
  type = number
  default = 1
}

# Web LB Inbound NAT Port for All VMs
variable "lb_inbound_nat_ports" {
  description = "Web LB Inbound NAT Ports Lists"
  type = list(string)
  default = [ "1022", "2022", "3022", "4022", "5022" ]
}
