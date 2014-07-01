class ntp-hiera::params {
    # backwards compability
    $server_list = hiera('ntpservers', undef)

    # for other params use default of ntp class
    $interface_ignore = undef
    $interface_listen = undef
    $query_networks  = undef
}
