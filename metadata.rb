name              'percona'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
chef_version      '>= 13.0'
license           'MIT'
description       'Installs Percona MySQL client and server'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url        'https://github.com/phlipper/chef-percona'
issues_url        'https://github.com/phlipper/chef-percona/issues'
version           '0.16.4'

# TODO: rm once chef_version >= 14
depends 'build-essential'
depends 'openssl'
depends 'yum-epel'
depends 'chef-vault'

supports 'debian'
supports 'ubuntu'
supports 'centos'
supports 'amazon'
supports 'scientific'
supports 'fedora'
supports 'redhat'
