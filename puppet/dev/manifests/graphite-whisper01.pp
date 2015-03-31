node 'graphite-whisper01' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

}
