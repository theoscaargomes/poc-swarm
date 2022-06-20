Vagrant.configure("2") do |config|
#instancia01
  config.vm.define "srvswarm1", primary: true do |srvswarm1|
    srvswarm1.vm.box = "ubuntu/xenial64"
    srvswarm1.vm.hostname = 'srvswarm1'
    srvswarm1.vm.box_url = "ubuntu/xenial64"
    srvswarm1.vm.network :private_network, ip: "192.168.56.10"
    srvswarm1.vm.network :forwarded_port, guest: 22, host: 10122, id: "ssh"
    config.vm.provision "shell", inline: "sudo apt update -y && sudo apt install docker.io -y && sudo apt install nginx -y && apt install -y keepalived"
    srvswarm1.vm.provision "shell", path: "scripts/svrswarm1.sh"
    srvswarm1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 756]
      v.customize ["modifyvm", :id, "--name", "srvswarm1"]
    end
  end
#instancia02
  config.vm.define "srvswarm2" do |srvswarm2|
    srvswarm2.vm.box = "ubuntu/xenial64"
    srvswarm2.vm.hostname = 'srvswarm2'
    srvswarm2.vm.box_url = "ubuntu/xenial64"
    srvswarm2.vm.network :private_network, ip: "192.168.56.11"
    srvswarm2.vm.network :forwarded_port, guest: 22, host: 10123, id: "ssh"
    config.vm.provision "shell", inline: "sudo apt update -y && sudo apt install docker.io -y && sudo apt install nginx -y && apt install -y keepalived"
    srvswarm2.vm.provision "shell", path: "scripts/svrswarm2.sh"
    srvswarm2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 756]
      v.customize ["modifyvm", :id, "--name", "srvswarm2"]
    end
  end
#instancia03
  config.vm.define "srvswarm3" do |srvswarm3|
    srvswarm3.vm.box = "ubuntu/xenial64"
    srvswarm3.vm.hostname = 'srvswarm3'
    srvswarm3.vm.box_url = "ubuntu/xenial64"
    srvswarm3.vm.network :private_network, ip: "192.168.56.12"
    srvswarm3.vm.network :forwarded_port, guest: 22, host: 10224, id: "ssh"
    config.vm.provision "shell", inline: "sudo apt update -y && sudo apt install docker.io -y && sudo apt install nginx -y && apt install -y keepalived"
    srvswarm3.vm.provision "shell", path: "scripts/svrswarm3.sh"
    srvswarm3.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 756]
      v.customize ["modifyvm", :id, "--name", "srvswarm3"]
    end
  end
end
