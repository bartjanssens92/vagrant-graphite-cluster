node 'graphite-relay01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  class { 'graphite::relay':
    relay_destinations => ['10.0.2.112','10.0.2.114'],
  }
}
