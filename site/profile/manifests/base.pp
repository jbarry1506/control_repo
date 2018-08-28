class profile::base {
  include 'docker'
  user {'admin':
    ensure => present,
  }
}
