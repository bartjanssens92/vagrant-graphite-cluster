node 'graphite-cache01' {
  include ::roles::graphite_cache

  graphite::carbon::storage {"default_1min_for_1day":
    pattern    => ".*",
    retentions => "60s:1d",
  }
}
