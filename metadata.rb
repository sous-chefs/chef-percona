name              "percona"
maintainer        "Phil Cohen"
maintainer_email  "github@phlippers.net"
license           "Apache 2.0"
description       "Installs Percona MySQL client and server"
long_description  "Please refer to README.md"
version           "0.6.0"

recipe "percona",                "Default no-op recipe"
recipe "percona::package_repo",  "Sets up the package repository and installs dependent packages"
recipe "percona::client",        "Installs client libraries"
recipe "percona::server",        "Installs the server daemon"
recipe "percona::backup",        "Installs the XtraBackup hot backup software"
recipe "percona::toolkit",       "Installs the Percona Toolkit software"
recipe "percona::cluster",       "Installs the Percona XtraDB Cluster server components"
recipe "percona::replication",   "Used internally to grant permissions for replication."
recipe "percona::access_grants", "Used internally to grant permissions for recipes"

depends "apt"
depends "yum"
depends "openssl"

%w[debian ubuntu centos amazon scientific fedora redhat].each do |os|
  supports os
end
