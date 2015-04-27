class setup {
  yumrepo { 'epel':
    ensure         => present,
    descr          => 'Extra Packages for Enterprise Linux 6 - $basearch',
    mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch',
    failovermethod => 'priority',
    enabled        => 1,
    gpgcheck       => 1,
    gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
  }

  $packages = ['tree']
  package { $packages:
    ensure => present,
  }
}