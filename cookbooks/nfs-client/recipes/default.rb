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

template "/etc/fstab" do
  source "fstab.erb"
  variables( :new_mount => "euc-nat:/  /mnt  nfs4  _netdev,auto  0  0" )
end
