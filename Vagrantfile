# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
current_dir = File.dirname(File.expand_path(__FILE__))
vconfig = YAML.load_file("#{current_dir}/config.yaml")
TSP_API_TOKEN = vconfig['TSP_API_TOKEN']
VENV = Hash['TSP_API_TOKEN' => TSP_API_TOKEN]

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Directory of available vms
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
#  config.vm.box = "ubuntu/trusty32"
#  config.vm.box = "ubuntu/xenial32"
#  config.vm.box = "bento/centos-7.2"
  config.vm.box = "tsguru/centos64-7.3"
  config.vm.box_url ="http://truesight.guru/boxes/centos64-7.3.box"

  config.vm.define "asterix" do |asterix|
    asterix.vm.host_name = "asterix"
    asterix.vm.network "private_network", ip: "192.168.66.2"
    asterix.vm.provision "shell", env: VENV, path: "bin/inst-meter.sh"
#      curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#      apt-get install -y nodejs
#
      # apt-get install python
      # apt-get install openjdk-8-jre
      # groupadd cassandra
      # useradd -d /home/cassandra -s /bin/bash -m -g cassandra cassandra
      # adduser cassandra sudo
      # curl -O http://mirror.cc.columbia.edu/pub/software/apache/cassandra/3.9/apache-cassandra-3.9-bin.tar.gz
      # tar -xvf apache-cassandra-3.9-bin.tar.gz -C /home/cassandra --strip-components=1
      # rm apache-cassandra-3.9-bin.tar.gz
      # cd /home/cassandra
      # chown -R cassandra:cassandra *
  end

  config.vm.define "obelix" do |obelix|
    obelix.vm.host_name = "obelix"
    obelix.vm.network "private_network", ip: "192.168.66.3"
    obelix.vm.provision "shell", env: VENV, path: "bin/inst-meter.sh"
    obelix.vm.provision "shell", env: VENV, path: "bin/inst-apache.sh"
    # obelix.vm.provision "shell", inline: <<-SHELL
    # yum -y install httpd
    # htpasswd -cb /etc/httpd/conf/passwd admin admin
    # echo "<Location /server-status>" > /etc/httpd/conf.d/server-status.conf
    # echo "  SetHandler server-status" >> /etc/httpd/conf.d/server-status.conf
    # echo "  AuthType basic" >> /etc/httpd/conf.d/server-status.conf
    # echo '  AuthName "Apache status"' >> /etc/httpd/conf.d/server-status.conf
    # echo "  AuthUserFile /etc/httpd/conf/passwd" >> /etc/httpd/conf.d/server-status.conf
    # echo "  Require valid-user" >> /etc/httpd/conf.d/server-status.conf
    # echo "</Location>" >> /etc/httpd/conf.d/server-status.conf
    # chkconfig httpd on
    # service httpd start
    # SHELL
  end

  config.vm.define "idefix" do |idefix|
    idefix.vm.host_name = "idefix"
    idefix.vm.network "private_network", ip: "192.168.66.3"
    idefix.vm.provision "shell", inline: <<-SHELL
#      curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
#      apt-get install -y nodejs
#
      # apt-get install python
      # apt-get install openjdk-8-jre
      # groupadd cassandra
      # useradd -d /home/cassandra -s /bin/bash -m -g cassandra cassandra
      # adduser cassandra sudo
      # curl -O http://mirror.cc.columbia.edu/pub/software/apache/cassandra/3.9/apache-cassandra-3.9-bin.tar.gz
      # tar -xvf apache-cassandra-3.9-bin.tar.gz -C /home/cassandra --strip-components=1
      # rm apache-cassandra-3.9-bin.tar.gz
      # cd /home/cassandra
      # chown -R cassandra:cassandra *
    SHELL
  end


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
