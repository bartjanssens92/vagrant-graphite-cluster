node 'graphite-cache02' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  include ::graphite
}
