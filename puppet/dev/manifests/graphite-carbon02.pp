node 'graphite-carbon02' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  include ::graphite
}
