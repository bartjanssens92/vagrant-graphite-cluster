# Class: roles::graphite_cache
#
# Setup the graphite carbon as a cache in a cluster
#
#
class roles::graphite_cache {
  include profiles::base
  include profiles::graphite_cache
}
