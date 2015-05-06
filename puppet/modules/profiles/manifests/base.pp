#
#
#
class profiles::base {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }

  class { '::collectd':
    purge        => true,
    recurse      => true,
    purge_config => true,
  }

  class { 'collectd::plugin::write_graphite':
    graphitehost => '192.168.1.103',
  }

  class { 'collectd::plugin::disk':
    disks          => ['/^dm/'],
    ignoreselected => true
  }
}
