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
