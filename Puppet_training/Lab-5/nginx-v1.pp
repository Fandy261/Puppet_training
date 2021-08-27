package { 'nginx':
  ensure => 'present',
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '/usr/share/nginx/html/index.html':
  content => "<h1>Welcome to nginx-v1.pp By Tsirimihanta Fandeferana on puppet server\n</h1>",
}
