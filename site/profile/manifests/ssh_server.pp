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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcPLCwI38G0ktuRLY8BCqjmMJe3l0o7/Q111VlkpuWGb/BH//hnKLphk8nM46mTSLv77ylQolewK+Lw3n5NCM7Rvfa3PzOcxFFWo25zKyS7u1YnZkeIwkZrKcfZiMOBzWpFxHm5HJve496IF7NBtRdy9gi6/DTTh/kBPGkVMpsh4QgvZDcVA5HOfQ+Fpxl83G7O8/hV4RWF8hNOqFO2ul6yj9tyIzjT9Fx1nZPmZnp+2z113Wodqu8XUA8YYV38rCMQlEGy/N8RmG77a1dKBlA5OX8ZYH3i+Ga5dpZN0Q40r7CwjLHS+DhiJxrgoiBEgwrvfUnr0ZbfUaNC+EfM1OZ',
	}  
}
