#Installs programming environments
class developer {
	package { 'emacs' :			
				ensure => 'present';
	}	
	package { 'erlang' :
				ensure => 'present';
	}
	#need to figure out how to use packer 
	#instead of pacman for aur packages
	#package { 'quantlib-docs' :
	#			ensure => 'present';
	#}	
}