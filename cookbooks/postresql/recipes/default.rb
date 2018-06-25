#
# Cookbook:: postresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
 package 'postresql-server' do
end
execute 'postgresql-init' do

 command 'postgresql-setup initdb'
  action :nothing
end

service 'postgresql'do
action[:enable, start]
end




