class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKjxkfkBtdI3pqWp4K9aiYiB7Q3Jc+mH0vjpA7Q60klQkgVNV3qlkzj9I1g73tqjUrY5g6AEEe+pyG8Uz1QVKskY0ADKRnSaM4Cfxcmj0Cfr5eRJZU8vMwT47BBdXQcaD7k2CldNH14/pqhA6aIfbmujaDkAYK6IMNy3OIl47wRYMZKPbLaoqxYr9JJQtD/vmJlpCXHTLtQiLaUHaIkAZ2T+zUO6KzPVTM5VMZ2/kCMZkhJB9z1RqQwkiOu+DWeUd3DAIuqcL/+SoKLsrCA16BW/PfeJ858agA5TjadpLt476SL29ppFrn6vOOwyfMoxbDVp+Cq0qw24/sOXJU2rkh',
	}  
}
