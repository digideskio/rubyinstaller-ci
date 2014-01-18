include_recipe "user"

users = data_bag("users")
sysadmins = []
users.each do |user_name|
  user = data_bag_item("users", user_name)
  sysadmins << user['username'] if user['admin']
  user_account user["username"] do
    comment user["comment"]
    ssh_keys user["ssh_keys"]
  end
end

group "sysadmin" do
  gid 2300
  members sysadmins
end
