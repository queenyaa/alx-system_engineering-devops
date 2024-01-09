# Puppet script to install Nginx server

package { 'nginx':
  ensure => 'installed'
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

exec { 'command':
  command => 'sed -i "51i \\\tadd_header X-Served-By: $HOSTNAME;" /etc/nginx/sites-enabled/default && service nginx restart',
  provider => shell,
  path => '/usr/bin:/bin', # Set the PATH to include binaries
  unless => 'grep -q "add_header X-Served-By: $HOSTNAME;" /etc/nginx/sites-enabled/default',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
