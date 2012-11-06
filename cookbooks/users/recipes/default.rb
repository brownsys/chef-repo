# Searches data bag "users" for groups attribute "sysadmin".
# Places returned users in Unix group "sysadmin" with GID 2300.

users_manage "jeffra45" do
  group_id 1002
  action [ :remove, :create ]
end
