class ntp-hiera {
        class { 'ntp':
                 server_list => hiera('ntpservers')
        }
}
