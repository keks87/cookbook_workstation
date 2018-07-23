package 'tree' do
  action:install
end

package 'ntp' do
  action:install
end

package 'git' do
  action:install
end

package 'nano'
package 'vim'

#file '/etc/motd' do
# content "This server is the property of Chris
#  HOSTNAME: #{node['hostname']}
#  IPADDRESS: #{node['ipaddress']}
#  CPU: #{node['cpu']['0']['mhz']}
#  MEMORY: #{node['memory']['total']}" 
#  action :create
#  owner 'root'
#  group 'root'
#end

template '/etc/motd' do
  source 'motd.erb'
  action:create
end

service 'ntpd' do
  action [ :enable, :start ]
end
