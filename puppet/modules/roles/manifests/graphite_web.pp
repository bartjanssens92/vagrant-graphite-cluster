# Class: roles::graphite_web
#
#
class roles::graphite_web {
  include profiles::base
  include profiles::graphite_web
  include profiles::grafana_profile
}
