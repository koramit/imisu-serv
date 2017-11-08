Vagrant.configure("2") do |config|
  # Use ubuntu 16.04 as base OS.
  config.vm.box = "ubuntu/xenial64"
  
  config.vm.network "forwarded_port", guest: 80, host: 8000, auto_correct: true

  # Allow local access only via specific ip.
  config.vm.network "private_network", ip: "192.168.11.11"

  config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

  # VM hardware
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    vb.cpus = "1"
    vb.name = "imisu-serv"
  end

  # provision
  config.vm.provision "shell" do |s|
     s.path = "provision.sh"
  end
end
