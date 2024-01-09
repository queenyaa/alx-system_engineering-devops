# Puppet script to install Nginx server

package { 'nginx':
  ensure => 'installed'
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

file { '/etc/nginx/sites-enabled/default':
  ensure  => 'file',
  content => template('nginx/default.erb'),
  require => Class['nginx'],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

# Custom fact to get the hostname
Facter.add('custom_hostname') do
  setcode 'hostname'
end
