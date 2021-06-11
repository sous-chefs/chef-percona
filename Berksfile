source 'https://supermarket.chef.io'

# XXX: Remove after this has been merged/released upstream
cookbook 'chef-vault', github: 'ramereth/chef-vault-1', branch: 'chef-17'

metadata

group :integration do
  cookbook 'test', path: 'test/fixtures/cookbooks/test'
end
