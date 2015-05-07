# Class: profiles::graphite_relay
#
#
class profiles::graphite_relay {
  class { '::graphite::relay':
    relay_destinations => hiera('graphite_cache_servers'),
    }
}
