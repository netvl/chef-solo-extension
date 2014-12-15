require 'chef/config'

directory "#{Chef::Config[:node_path]}" do
  mode "0775"
  action :create
  recursive true
  owner node['current_user']
end
