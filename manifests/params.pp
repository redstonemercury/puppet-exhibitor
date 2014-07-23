class exhibitor::params {
  $version = '1.5.2'

  $install_dir = '/usr/lib/exhibitor'
  $install_source = "http://search.maven.org/remotecontent?filepath=com/netflix/exhibitor/exhibitor-standalone/${version}"

  $conf_dir = '/etc/exhibitor'

  $config = {
    'configtype'            => 'file',
    'configcheckms'         => '30000',
    'defaultconfig'         => '',
    'headingtext'           => '',
    'hostname'              => '',
    'jquerystyle'           => 'black',
    'loglines'              => '1000',
    'nodemodification'      => 'true',
    'port'                  => '8080',
    'prefspath'             => '',
    'servo'                 => 'false',
    'timeout'               => '30000',
    's3credentials'         => '',
    's3region'              => '',
    's3config'              => '',
    's3configprefix'        => '',
    'zkconfigconnect'       => '',
    'zkconfigexhibitorpath' => '/',
    'zkconfigexhibitorport' => '',
    'zkconfigpollms'        => '10000',
    'zkconfigretry'         => '1000:3',
    'fsconfigdir'           => '/opt/app/grid/products/exhibitor2/bin',
    'fsconfiglockprefix'    => 'exhibitor-lock-',
    'fsconfigname'          => 'exhibitor.properties',
    'noneconfigdir'         => '',
    'filesystembackup'      => 'false',
    's3backup'              => '',
    'realm'                 => '',
    'remoteauth'            => '',
    'security'              => '',
    'aclid'                 => '',
    'aclperms'              => '',
    'aclscheme'             => ''
  }
}
