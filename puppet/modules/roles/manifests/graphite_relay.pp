# Class: roles::graphite_relay
#
# Setup a carbon relay in front of the caches in cluster configuration.
#
#
class roles::graphite_relay {
  include profiles::node_message
  include profiles::graphite_relay

  package { 'nc':
    ensure => installed,
  }

}
