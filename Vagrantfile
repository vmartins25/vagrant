########### Vanessa Alencar #############
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  
  config.vm.provider "virtualbox" do |vb| 
    vb.memory = "1024"
    vb.name = "mysqlserver"    
  end

  config.vm.define "mysqlserver" do |mysqlserver|
    mysqlserver.vm.network "forwarded_port", guest: 3306, host: 3306

    mysqlserver.vm.provision "shell", inline: <<-SHELL
        apt-get update
        apt-get install -y mysql-server-5.7
        mysql < /vagrant/mysql/script.sql
        cat /vagrant/mysql/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf
        service mysql restart
      SHELL
  end
end

