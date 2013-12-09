#Installs programming environments
class developer {
	package { 'emacs' :			
				ensure => latest;
	}	
	package { 'erlang' :
				ensure => latest;
	}
	#need to figure out how to use packer 
	#instead of pacman for aur packages
	#package { 'quantlib-docs' :
	#			ensure => latest;
	#}	
}