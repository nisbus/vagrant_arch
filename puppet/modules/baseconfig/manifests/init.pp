# == Class: baseconfig
#  Updates Arch linux on each boot
#
class baseconfig {
	exec { 'pacman update':
		command => '/usr/bin/pacman -Syu';
		}
}