# puppet command to deal with typo in wp-settings.php

# Ensure Apache package is installed
package { 'apache2':
  ensure => installed,
}

# Fix wp-settings.php using sed command
exec { 'fix-wordpress':
  command     => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path        => '/usr/bin:/bin',
  refreshonly => true,
  subscribe   => Package['apache2'],
}
