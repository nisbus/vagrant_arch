#Installs the GUI as I like it
class xmonad {
	package { 'xmonad' :			
			ensure => present;
	}
	package { 'xmonad-contrib' :
			ensure => present;
	}
	package { 'xmobar' :
			ensure => present;
	}
	package { 'trayer' :
			ensure => present;
	}
	package { 'volwheel':
		ensure => present
	}

	file { '/home/vagrant/.xmonad':
		ensure => 'directory',
		owner => 'vagrant',
		group => 'vagrant',
		mode => 750,
	}	
	file { '/home/vagrant/.xmonad/xmonad.hs':
		ensure => present,
		owner => "vagrant",
		group => "vagrant",		
		source => ["puppet:///modules/xmonad/xmonad.hs"]		
	}	
	file { '/home/vagrant/.xmobarrc':
		ensure => present,
		owner => "vagrant",
		group => "vagrant",		
		source => ["puppet:///modules/xmonad/.xmobarrc"]		
	}
	file { '/home/vagrant/.xinitrc':
		ensure => present,
		owner => "vagrant",
		group => "vagrant",		
		source => ["puppet:///modules/xmonad/.xinitrc"]		
	}
}