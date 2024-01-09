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

# Personalized 301 page
file_line { 'redirect_me':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
