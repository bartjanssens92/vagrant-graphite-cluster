node 'graphite-relay01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  class { 'graphite::relay':
    destinations => ['192.168.1.102','192.168.1.104'],
  }
}
