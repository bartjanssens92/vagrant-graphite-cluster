node 'graphite-relay01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

}
