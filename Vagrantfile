Vagrant.configure("2") do |config|

	config.vm.define "emissairedev", primary: true do |emissairedev|
		emissairedev.vm.box = "ubuntu/hirsute64"
		emissairedev.vm.hostname = "emissaire"
		emissairedev.vm.network "private_network", type: "dhcp"
        
        ## Atualizando a máquina
        emissairedev.vm.provision "shell", inline: "apt update -y"
        emissairedev.vm.provision "shell", inline: "apt upgrade -y"
        
        ## Instalando o Docker
        emissairedev.vm.provision "shell", inline: "curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh"

        ## Instalando o docker-compose
        emissairedev.vm.provision "shell", inline: "sudo curl -L \"https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)\" -o /usr/local/bin/docker-compose"
        emissairedev.vm.provision "shell", inline: "chmod +x /usr/local/bin/docker-compose"

		emissairedev.vm.provider "virtualbox" do |vb|
			vb.gui = false
			vb.name = "emissaire"
			vb.memory = "2048"
			vb.cpus = "2"
		end

	end

  end