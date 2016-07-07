# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "lvnilesh"
client_key               "#{current_dir}/lvnilesh.pem"
chef_server_url          "https://api.chef.io/organizations/classroom"
cache_type                "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
verify_api_cert            true
cookbook_path ["#{current_dir}/../site-cookbooks","#{current_dir}/../cookbooks"]

cookbook_copyright        "Nilesh Londhe"
cookbook_email            "nilesh@cloudgeni.us"
cookbook_license          "apachev2"

# https://console.aws.amazon.com/iam/home?region=us-east-1#security_credential

knife[:aws_access_key_id]     = "AKIAIBQHWPR5SDWZR6EQ"
knife[:aws_secret_access_key] = "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"
knife[:region]                = "us-west-2"

# https://cloud.digitalocean.com/settings/applications

knife[:digital_ocean_access_token] = "db9f62fd684d64d5503399ce06c3aee7a2ae544579f8800006ba51fbf1e3c28f"

#Uncomment this line after you have created encryption secret
knife[:secret_file] = "#{current_dir}/encrypted_data_bag_secret"
