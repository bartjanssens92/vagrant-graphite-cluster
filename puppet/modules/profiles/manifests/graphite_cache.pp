# Class profiles::graphite_cache
#
#
#
#
class profiles::graphite_cache {
  include graphite
  class { 'graphite::params':
    web_allowed_hosts => hiera('graphite_web_servers'),
  }
}
