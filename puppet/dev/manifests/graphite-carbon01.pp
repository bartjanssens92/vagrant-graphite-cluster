node 'graphite-carbon01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

  include ::graphite::carbon
}
