#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'npt'

template '/etc/ntp.conf' dosource 'ntp.conf.erb' do
    source    'ntp.conf.erb'
    notifies :restart, 'service[ntp]'
end

service 'ntp' do
    action [:enable, :start]
end
