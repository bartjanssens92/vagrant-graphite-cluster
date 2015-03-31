node 'graphite-web' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

}
