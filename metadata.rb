name              'percona'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Installs Percona MySQL client and server'
source_url        'https://github.com/sous-chefs/chef-percona'
issues_url        'https://github.com/sous-chefs/chef-percona/issues'
version           '2.1.1'
chef_version      '>= 15.3'

depends 'yum-epel'
depends 'chef-vault'
depends 'line'

supports 'centos'
supports 'debian'
supports 'redhat'
supports 'ubuntu'
