# set new limit

$user = 'holberton'

# Ensure the limits.conf file exists
file { '/etc/security/limits.conf':
  ensure => file,
}

# Set the file descriptor limits using exec
exec { 'set_hard':
  command => "/bin/echo '$user hard nofile 10000' >> /etc/security/limits.conf",
  unless  => "/bin/grep -q '^$user.*nofile.*hard.*$hard_limit' /etc/security/limits.conf",
}

exec { 'set_soft':
  command => "/bin/echo '$user soft nofile 15000' >> /etc/security/limits.conf",
  unless  => "/bin/grep -q '^$user.*nofile.*soft.*$soft_limit' /etc/security/limits.conf",
}
