# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "nisbus"
  config.vm.box_url = "http://box.nisbus.com/packer_arch_virtualbox.box"
  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.provider :virtualbox do |vb|
     vb.gui = true
     vb.customize ["modifyvm", :id, "--memory", "1024" --audio coreaudio --audiocontroller hda]
  end   
  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "puppet/manifests"
     puppet.manifest_file  = "site.pp"
	 puppet.module_path    = "puppet/modules"
	 puppet.options		   = "--debug --verbose"
  end
end
