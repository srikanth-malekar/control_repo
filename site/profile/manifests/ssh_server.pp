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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDq24tsj3oxCm44LJwjrpVkrI6ZY0A/URP3Jvb/ekLNHbAibzcF/8qNv/yPd4yk+DXXGgduXlO6df21wXCo4IJp2p22+4LIG8WrY66m7zVTy7RdO+ZjDqwsIXSuzSFD6iRLQTLgMXEykjcjRgwMxbpNqUj7DhUJoRw/0fa+CYBLo5ZLwcrGXuxy6M07Z9qqGkLKNVzP9AFJZNxPlagyYnwHg5mzi2TYtCz6P1yGcT7zAk4BIy5PzZCrhXOf3RNNcSLDOofwgRDE62BivTo/Du3pecQ9MQNRomSrwWVsfcPG5lVW7ZZ5oOnI4ROGn9vsNyzUo0qq2VyLDONAdyoemMxF',
  }  
}
