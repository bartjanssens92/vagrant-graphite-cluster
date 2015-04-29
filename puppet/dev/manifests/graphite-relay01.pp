node 'graphite-relay01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  class { 'graphite::relay':
    relay_destinations => ['192.168.1.102','192.168.1.104'],
  }
}
