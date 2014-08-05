class exhibitor::config(
  $opts = $exhibitor::opts,
  $properties = $exhibitor::properties,
  $zk_data_dir = $exhibitor::zk_data_dir,
  $zk_quorum = $exhibitor::zk_quorum,
  $install_dir = $exhibitor::install_dir
) {

  $exhibitor_quorum = inline_template("<%- @zk_quorum.each_with_index do |server, index| -%>
S:<%= index+1 %>:<%= server -%>
  <%- if index < (@zk_quorum.length - 1) -%>,<%- end -%>
  <%- end -%>")
  
  $quorum_hash = {
    'com.netflix.exhibitor-rolling.servers-spec' => $exhibitor_quorum,
    'com.netflix.exhibitor.servers-spec'         => $exhibitor_quorum
  }
  
  $merged_properties = merge($properties, $quorum_hash)
    
  file { '/etc/default/exhibitor':
    ensure  => present,
    content => template('exhibitor/default.erb')
  }
  
  file { "${install_dir}/exhibitor.properties":
    ensure  => present,
    content => template('exhibitor/exhibitor.properties.erb') 
  }
}
