#!/usr/bin/pup
# Puppet script to install Flask version 2.1.0 and its dependencies

# Ensure pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask and its dependencies using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep Version | grep -q 2.1.0',
  require => Package['python3-pip'],
}
