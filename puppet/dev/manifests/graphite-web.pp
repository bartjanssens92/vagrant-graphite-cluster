node 'graphite-web' {
  notify { 'Alive notify':
    message => "Node ${::hostname} is alive!",
  }
  class { 'graphite::web':
    cluster_servers => ['192.168.1.102','192.168.1.104'],
  }
  yumrepo { 'grafana':
    descr         => 'grafana',
    baseurl       => 'https://packagecloud.io/grafana/stable/el/6/$basearch',
    repo_gpgcheck => 1,
    enabled       => 1,
    gpgcheck      => 1,
    gpgkey        => 'https://packagecloud.io/gpg.key https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana',
  }

}
