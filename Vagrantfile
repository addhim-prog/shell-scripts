# Vagrant configuration for a single VM
Vagrant.configure("2") do |config|
  # Base box image to use for the VM
  config.vm.box = "ubuntu/jammy64"
  # منع إعادة توليد مفاتيح الـ SSH لتسريع الـ Boot
  config.ssh.insert_key = false

  # Share the local ./scripts folder into the VM at /opt/scripts
  config.vm.synced_folder "./scripts", "/opt/scripts"

  # Enable a public network interface for external access
  # config.vm.network "public_network"
  # Create a private network with a fixed IP address
  config.vm.network "private_network", ip: "192.168.56.17"

  # Provider-specific settings for VirtualBox
  config.vm.provider "virtualbox" do |vb|
    # Allocate 1GB RAM to the VM
    vb.memory = "2048"
    # Set the VM to use 2 CPU cores
    vb.cpus = 2
  end
end
