# ssh configuration with Puppet

augeas { 'ssh_config_password_auth':
  context => '/files/etc/ssh/ssh_config',
  changes => ['set Host[1]/PasswordAuthentication no'],
}

augeas { 'ssh_config_identity_file':
  context => '/files/etc/ssh/ssh_config',
  changes => ['set Host[1]/IdentityFile ~/.ssh/school'],
}
