Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.provision "shell", path: "provision.sh"
    config.vm.network "forwarded_port", guest: 8080, host: 8081, host_ip: "127.0.0.1"
  end
  