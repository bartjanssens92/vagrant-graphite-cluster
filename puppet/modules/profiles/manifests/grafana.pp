# Class: profiles::grafana
#
#
class profiles::grafana {
  yumrepo { 'grafana':
    descr         => 'grafana',
    baseurl       => 'https://packagecloud.io/grafana/stable/el/6/$basearch',
    repo_gpgcheck => 1,
    enabled       => 1,
    gpgcheck      => 1,
    gpgkey        => 'https://packagecloud.io/gpg.key https://grafanarel.s3.amazonaws.com/RPM-GPG-KEY-grafana',
  }

  class { 'grafana':
    version        => 'present',
    install_method => 'package',
    datasources    => {
      'graphite'   => {
        'type'     => 'graphite',
        'url'      => 'http://localhost:8080',
        'default'  => 'true',
      }
    }
  }
}
