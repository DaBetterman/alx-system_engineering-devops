# A puppet manifest that creates a file school in /tmp.
# The file (School) has permissions 0744, belonging to the user and group
# www-data.

file { '/tmp/school':
  ensure  => present,
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
