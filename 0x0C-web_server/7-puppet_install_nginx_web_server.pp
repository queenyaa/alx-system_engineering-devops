# Using puppet install nginx

package { 'nginx':
  ensure => 'present',
}

exec { 'update-package-lists':
  command     => 'sudo apt-get update',
  refreshonly => true,
}

file ( '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "# Nginx Server Configuration\n\nserver {\n\tlisten 80 default_server;\n\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/;\n\t}\n}\n",
  notify  => Service['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}

file { '/var/www/html/index.nginx-debian.html':
  ensure  => file,
  content => 'Hello World!',
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
