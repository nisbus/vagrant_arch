# == Class: baseconfig
#  Updates Arch linux on each boot
#
class baseconfig {	
	exec { 'pacman update':
		command => '/usr/bin/pacman -Syu';
	}
	package { 'xorg-server':
		ensure => present
	}
	package { 'xorg-xinit':
		ensure => present
	}
	package { 'xorg-xclock':
		ensure => present
	}
	package { 'xterm':
		ensure => present
	}
	package { 'xorg-xrdb':
		ensure => present
	}
	package { 'xorg-xsetroot':
		ensure => present
	}
	package { 'gnome-power-manager':
		ensure => present
	}
	package { 'xf86-video-intel':
		ensure => present
	}
	package { 'alsa-lib' :
			ensure => present;
	}
	package { 'alsa-utils' :
			ensure => present;
	}
	package { 'gnome-alsamixer' :
			ensure => present;
	}
	package { 'rxvt-unicode' :
			ensure => present;
	}
}