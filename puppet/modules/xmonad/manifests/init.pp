#Installs the GUI as I like it
class xmonad {
	package { 'xmonad' :			
			ensure => latest;
	}
	package { 'xmobar' :			
			ensure => latest;
	}	
}