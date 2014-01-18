current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "skottler"
client_key               "#{current_dir}/skottler.pem"
validation_client_name   "rubyinstaller-validator"
validation_key           "#{current_dir}/rubyinstaller-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/rubyinstaller"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:rackspace_api_username] = "#{ENV['RACKSPACE_USERNAME']}"
knife[:rackspace_api_key] = "#{ENV['RACKSPACE_API_KEY']}"
knife[:rackspace_region] = "ORD"
