class exhibitor::install(
  $version = $exhibitor::version,
  $install_source = $exhibitor::install_source,
  $install_dir = $exhibitor::install_dir
) {

  file { $install_dir:
    ensure => directory
  }

  exec { 'download-exhibitor':
    command => "/usr/bin/wget -O ${install_dir}/exhibitor-${version}-jar-with-dependencies.jar ${install_source}/exhibitor-${version}-jar-with-dependencies.jar",
    creates => "${install_dir}/exhibitor-${version}-jar-with-dependencies.jar",
    require => File[$install_dir]
  }
}
