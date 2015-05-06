# Class: roles::graphite_web
#
#
class roles::graphite_web {
  include profiles::node_message
  include profiles::graphite_web
  include profiles::grafana_profile
}
