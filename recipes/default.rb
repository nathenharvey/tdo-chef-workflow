#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package_name = "httpd"

if node['platform'] == 'ubuntu'
  package_name = 'apache2'
  include_recipe 'apt::default'
end

package "#{package_name}" do
  action :install
end

service "httpd" do
  action [ :start, :enable ]
end
