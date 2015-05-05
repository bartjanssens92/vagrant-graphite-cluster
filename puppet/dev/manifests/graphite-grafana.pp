node 'graphite-grafana' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
}
