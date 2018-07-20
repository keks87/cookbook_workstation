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

file '/etc/motd' do
  content 'This server is the property of Chris'
  action :create
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end
