# ssh configuration with Puppet

file { '/home/ubuntu/.ssh/':
  ensure => directory,
}

file { '/home/ubuntu/.ssh/config':
  ensure  => present,
  content => "Host *\n
               IdentityFile ~/.ssh/school\n
               PasswordAuthentication no\n",
  replace => true,
}

# augeas { 'ssh_config_password_auth':
  # context => '/files/etc/ssh/ssh_config',
  # changes => ['set Host[1]/PasswordAuthentication no'],
# }

# augeas { 'ssh_config_identity_file':
  # context => '/files/etc/ssh/ssh_config',
  # changes => ['set Host[1]/IdentityFile ~/.ssh/school'],
# }
