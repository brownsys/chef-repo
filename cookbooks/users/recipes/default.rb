# Searches data bag "users" for groups attribute "sysadmin".
# Places returned users in Unix group "sysadmin" with GID 2300.

users_manage "sysadmin" do
  group_id 2300
  action [ :remove, :create ]
end
