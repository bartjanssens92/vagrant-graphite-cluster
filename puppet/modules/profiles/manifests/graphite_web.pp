# Class: profiles::graphite_web.pp
#
#
class profiles::graphite_web {
  class { '::graphite::web':
    cluster_servers => hiera('graphite_cache_servers'),
  }
}
