node 'graphite-web' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

  file { 'Fix for permission error':
    ensure  => directory,
    path    => '/home/vagrant/.ssh',
    mode    => '0700',
    recurse => true,
  }
}
