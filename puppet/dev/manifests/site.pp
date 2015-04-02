Exec {
    path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

Package { allow_virtual => false }

Yumrepo <| |> -> User <| |> -> Package <| |>

#Stuff that every node needs like the epel repo.

stage { 'setup':
  before => Stage['main'],
}

yumrepo { 'epel':
  ensure         => present,
  stage          => 'setup',
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
