#
# Cookbook Name:: sudoers
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/sudoers.d/chef-sudoers" do
  source "chef-sudoers.erb"
  mode 0440
  owner "root"
  group "root"
end
