class exhibitor::config(
  $opts = $exhibitor::opts,
  $properties = $exhibitor::properties,
  $zk_data_dir = $exhibitor::zk_data_dir,
  $zk_quorum = $exhibitor::zk_quorum,
  $install_dir = $exhibitor::install_dir
) {

  file { '/etc/default/exhibitor':
    ensure  => present,
    content => template('exhibitor/default.erb')
  }
  
  file { "${install_dir}/exhibitor.properies":
    ensure  => present,
    content => template('exhibitor/exhibitor.properties.erb') 
  }
}
