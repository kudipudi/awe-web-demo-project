# install openssl package
package { 'openssl':
  ensure => installed,
}

# install httpd package
package { 'httpd':
  ensure => installed,
}

# install modssl package
package { 'mod_ssl':
  ensure => installed,
}

# ensure httpd service is running
service { 'httpd':
  ensure => running,
}

file { '/var/www/html/index.html':
          ensure => present,
          source => "/tmp/awe-web-demo-project/puppet/files/index.html",
}

file { '/etc/httpd/conf/httpd.conf':
          ensure => present,
          source => "/tmp/awe-web-demo-project/puppet/files/httpd.conf",
          notify => Service[httpd]
}

file { '/etc/httpd/conf.d/ssl.conf':
          ensure => present,
          source => "/tmp/awe-web-demo-project/puppet/files/ssl.conf",
          notify => Service[httpd]
}

