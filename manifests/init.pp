class exhibitor(
  $version = $exhibitor::params::version,
  $install_dir = $exhibitor::params::install_dir,
  $install_source = $exhibitor::params::install_source,
  $conf_dir = $exhibitor::params::conf_dir,
  $config = $exhibitor::params::config
) inherits exhibitor::params {

  class { 'exhibitor::install': } ->
  class { 'exhibitor::config': } ~>
  class { 'exhibitor::service': } ->
  Class['exhibitor']
}
