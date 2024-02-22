# set new limit

$user = 'holberton'

# Ensure the limits.conf file exists
file { '/etc/security/limits.conf':
  ensure => file,
}

# Set the file descriptor limits using exec
exec { 'change-os-configuration-for-holberton-user':
  command => "sed -i '/$user hard/s/5/10000/; /$user soft/s/4/15000/' /etc/security/limits.conf",
  path    => '/usr/locla/bin/:/bin/'
}
