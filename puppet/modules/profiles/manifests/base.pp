#
#
#
class profiles::base {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
}
