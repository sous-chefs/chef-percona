#
# Cookbook:: percona
# Recipe:: server
#

include_recipe 'percona::package_repo'
include_recipe 'percona::client'

# install packages
case node['platform_family']
when 'debian'
  package node['percona']['server']['package'] do
    options '--force-yes'
    action node['percona']['server']['package_action'].to_sym
  end
when 'rhel'
  package node['percona']['server']['package'] do
    action node['percona']['server']['package_action'].to_sym
  end

  # Work around issue with 5.7 on RHEL
  if node['percona']['version'].to_f >= 5.7
    execute 'systemctl daemon-reload' do
      action :nothing
    end

    delete_lines 'remove PIDFile from systemd.service' do
      path '/usr/lib/systemd/system/mysqld.service'
      pattern /^PIDFile=.*/
      notifies :run, 'execute[systemctl daemon-reload]', :immediately
    end
  end
end

unless node['percona']['skip_configure']
  include_recipe 'percona::configure_server'
end

# access grants
unless node['percona']['skip_passwords']
  include_recipe 'percona::access_grants'
  include_recipe 'percona::replication'
end
