class ntp-hiera (
    # for backwards compability, "ntpservers" without class name
    # is understood as well (see params.pp)
    $server_list = params_lookup('server_list'),
    $interface_ignore = params_lookup('interface_ignore'),
    $interface_listen = params_lookup('interface_listen'),
    $query_networks  = params_lookup('query_networks'),
    $server_enabled = params_lookup('server_enabled'),
) inherits ntp-hiera::params {
    class { 'ntp':
                server_list => $server_list,
                interface_ignore => $interface_ignore,
                interface_listen => $interface_listen,
                query_networks => $query_networks,
                server_enabled = $server_enabled
          }
}
