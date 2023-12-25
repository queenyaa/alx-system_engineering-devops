# Puppet manifest file to install a package

$packages = [ 'python3', 'python3-pip' ]

package { $packages:
  ensure => 'installed',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip']
}