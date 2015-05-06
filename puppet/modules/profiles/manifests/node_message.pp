# Class: profiles::node_message
#
#
class profiles::node_message {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
}
