class profile::base {
  include 'docker'
  user {'admin':
    ensure => present,
  }
  include profile::ssh_server
}
