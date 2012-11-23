#
# Cookbook Name:: nfs-client
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nfs-common" do
  action [:install]
end

template "/etc/default/nfs-common" do
  source "nfs-common.erb"
  variables({
              :need_statd => "",
              :statdops => "",
              :need_idmapd => "yes",
              :need_gssd => "no"
            })
end

mount "/mnt" do
  device "euc-nat:/"
  fstype "nfs4"
  options "_netdev,auto"
  action [:mount, :enable]
  not_if "test -d /mnt/nfs-euc"
end
