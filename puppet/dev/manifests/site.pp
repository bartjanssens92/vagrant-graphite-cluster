Exec {
    path => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

Package { allow_virtual => false }

Yumrepo <| |> -> User <| |> -> Package <| |>

#Stuff that every node needs like the epel repo.
stage { 'setup':
  before => Stage['main'],
}

class { 'setup':
  stage => 'setup',
}
