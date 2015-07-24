class setup {
  include epel

  $packages = ['tree']
  package { $packages:
    ensure => present,
  }

  service { 'iptables':
    ensure => stopped,
  }
}
