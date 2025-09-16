# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # VARIABILI
  BASE_INT_NETWORK = "10.10.20"
  BASE_HOST_ONLY_NETWORK = "192.168.56"
  BOX_IMAGE = "ubuntu/jammy64"
  NOME_WEB = "web.m340"
  NOME_DB = "db.m340"
  
  # WEB
  config.vm.define NOME_WEB do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.hostname = NOME_WEB 
    
    # VIRTUALBOX SETTINGS
    subconfig.vm.provider "virtualbox" do |vb|
      vb.name = NOME_WEB
      vb.memory = "2048"  
      vb.cpus = 2  
    end
    
    # RETI
    subconfig.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.10", virtualbox__intnet: "m340-intnet"
    subconfig.vm.network "private_network", ip: "#{BASE_HOST_ONLY_NETWORK}.10"
    
    # SYNCED FOLDER
    subconfig.vm.synced_folder "condivisa", "/var/www/html"
    
    # HOSTNAME E SERVIZI
    subconfig.vm.provision "shell", path: "VM_WEB.sh"
  end
  
  # DB
  config.vm.define NOME_DB do |subconfig|
    subconfig.vm.box = BOX_IMAGE
    subconfig.vm.hostname = NOME_DB 
    
    # VIRTUALBOX SETTINGS
    subconfig.vm.provider "virtualbox" do |vb|
      vb.name = NOME_DB
      vb.memory = "2048"  
      vb.cpus = 2  
    end
    
    # RETI
    subconfig.vm.network "private_network", ip: "#{BASE_INT_NETWORK}.11", virtualbox__intnet: "m340-intnet"
    
    # HOSTNAME E SERVIZIO
    subconfig.vm.provision "shell", path: "VM_DB.sh"

  end  

end  