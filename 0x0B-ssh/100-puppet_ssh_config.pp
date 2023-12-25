#!/usr/bin/env bash
# using Puppet to make changes to configuration file

augeas { 'ssh_config':
  context => '/etc/ssh/ssh_config',
  changes => [
    'set Host/* SendEnv LANG LC_*',
    'set Host/* HashKnownHosts yes',
    'set Host/* GSSAPIAuthentication yes',
    'set Host/* GSSAPIDelegateCredentials no',
    'set Host/* IdentityFile ~/.ssh/school',
    'set Host/* PasswordAuthentication no',
  ],
 }
