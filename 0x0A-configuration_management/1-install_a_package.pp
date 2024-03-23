#!/usr/bin/pup
# A puppet installing flask, ensuring it is v2.1.0
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
