# Create a Null Resource and Provisioner
resource "null_resource" "null_copy_ssh_key_to_bastion" {
  depends_on = [
    azurerm_linux_virtual_machine.bastion_host_linuxvm
  ]
  # Connection Block for provisioners to connect to azure VM instance
  connection {
    type = "ssh"
    host = azurerm_linux_virtual_machine.bastion_host_linuxvm.public_ip_address
    user = azurerm_linux_virtual_machine.bastion_host_linuxvm.admin_username
    #    private_key = file("${path.module}/ssh-keys/terraform-azure.pem")
    private_key = file("~/git/ssh-keys/terraform-azure.pem")
  }

  ## File provisioner: copies the terraform-key.pem file into /tmp/terraform-key.pem
  provisioner "file" {
    source = "~/git/ssh-keys/terraform-azure.pem"
    destination = "/tmp/terraform-azure.pem"
    #on_failure = continue
  }

  ## Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions 
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 0400 /tmp/terraform-azure.pem"
    ]
    
  }

}

# Creation Time Provisioners - By default they are created during resource creations (terraform apply)
# Destory Time Provisioners - Will be executed during "terraform destroy" command (when = destroy)
