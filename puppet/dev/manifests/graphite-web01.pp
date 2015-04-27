node 'graphite-web01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  include graphite::web
}
