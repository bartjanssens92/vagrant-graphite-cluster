node 'graphite-whisper' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

}
