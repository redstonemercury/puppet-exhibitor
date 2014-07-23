class exhibitor::config(
  $config = $exhibitor::config 
) {

  file { '/etc/default/exhibitor':
    ensure  => present,
    content => template('exhibitor/default.erb')
  }
}
