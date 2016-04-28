require 'spec_helper'

describe 'ntp-hiera' do
  let(:facts) { {
    :hostname => 'debian7-node1',
    :osfamily => 'Debian',
    :operatingsystem => 'Debian',
    :operatingsystemrelease => 'wheezy',
    :concat_basedir => '/tmpvi',
    :lsbdistid => 'Debian'
  } }

  let (:params) {{
      :server_list => ['1.2.3.4', '4.3.2.1']
  }}

  it { is_expected.to compile.with_all_deps }
  it { is_expected.to contain_file('/etc/ntp.conf') }
  it { is_expected.to contain_service('ntp') }
  it { is_expected.to contain_package('ntp') }
end
