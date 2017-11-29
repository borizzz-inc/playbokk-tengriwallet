###NAMESERVER###
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "10.20.30.40", :mac => "000000000040"
  

  config.vm.provision "file", source: "~/.ssh/b12345679.pub", destination: "~/.ssh/b12345679.pub"
    config.vm.provision "file", source: "~/.ssh/authorized_keys", destination: "~/.ssh/authorized_keys"
end


###WWW###
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "10.20.30.41", :mac => "000000000041"
  config.vm.network "forwarded_port", guest: 80,    host: 8000
  config.vm.network "forwarded_port", guest: 443,   host: 4430


  config.vm.provision "file", source: "~/.ssh/b12345679.pub", destination: "~/.ssh/b12345679.pub"
  config.vm.provision "file", source: "~/.ssh/authorized_keys", destination: "~/.ssh/authorized_keys"
end


###BACKEND###
Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "10.20.30.42", :mac => "000000000042"
  config.vm.network "forwarded_port", guest: 5432, host: 5432


  config.vm.provision "file", source: "~/.ssh/b12345679.pub", destination: "~/.ssh/b12345679.pub"
    config.vm.provision "file", source: "~/.ssh/authorized_keys", destination: "~/.ssh/authorized_keys"
end


Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "10.20.30.43", :mac => "000000000043"


  config.vm.provision "file", source: "~/.ssh/b12345679.pub", destination: "~/.ssh/b12345679.pub"
    config.vm.provision "file", source: "~/.ssh/authorized_keys", destination: "~/.ssh/authorized_keys"
end
