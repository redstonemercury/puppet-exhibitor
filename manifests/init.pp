class exhibitor(
  $version = $exhibitor::params::version,
  $install_dir = $exhibitor::params::install_dir,
  $install_source = $exhibitor::params::install_source,
  $conf_dir = $exhibitor::params::conf_dir,
  $opts = $exhibitor::params::opts,
  $properties = $exhibitor::params::properties,
  $zk_data_dir = $exhibitor::params::zk_data_dir,
  $zk_quorum = $exhibitor::params::zk_quorum
) inherits exhibitor::params {

  class { 'exhibitor::install': } ->
  class { 'exhibitor::config': } ~>
  class { 'exhibitor::service': } ->
  Class['exhibitor']
}
