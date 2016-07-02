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

knife[:aws_access_key_id]     = "AKIAIJDGUBK4LWSOTWQA"
knife[:aws_secret_access_key] = "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"
knife[:region]                = "us-west-2"

# https://cloud.digitalocean.com/settings/applications

knife[:digital_ocean_access_token] = "30359accc3aa49de781c07365e4d8bd44f29db165fb41c7ccbcf979e8821d45f"

#Uncomment this line after you have created encryption secret
knife[:secret_file] = "#{current_dir}/encrypted_data_bag_secret"
