$app= "nginx"
$version= "v3"
$content= "<h1>Welcome to nginx-$version.pp By Tsirimihanta Fandeferana on puppet server</h1>"

package { $app:
  ensure => 'present',
}

service { $app:
  ensure => running,
  enable => true,
  subscribe => [
    Package[$app],
    File['/usr/share/nginx/html/index.html']
  ],
}

file { '/usr/share/nginx/html/index.html':
  content => "$content\n",
  notify => Service[$app]
}
