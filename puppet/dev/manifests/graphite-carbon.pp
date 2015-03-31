node 'graphite-carbon' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

}
