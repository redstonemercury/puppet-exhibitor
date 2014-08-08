class exhibitor::config(
  $opts = $exhibitor::opts,
  $properties = $exhibitor::properties,
  $install_dir = $exhibitor::install_dir
) inherits exhibitor::params {
  
  $merged_properties = merge($exhibitor::params::properties, $properties)
    
  file { '/etc/default/exhibitor':
    ensure  => present,
    content => template('exhibitor/default.erb')
  }
  
  file { "${install_dir}/exhibitor.properties":
    ensure  => present,
    content => template('exhibitor/exhibitor.properties.erb') 
  }
}
