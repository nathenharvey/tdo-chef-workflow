#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

service "httpd" do
  action [ :start, :enable ]
end
