# A puppet installing flask, ensuring it is v2.1.0
# which is a package provider from pip3.
# By using the ensure attribute I am making
# sure that the set version will be installed.

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
