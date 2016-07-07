#
# Cookbook Name:: dbuser
# Recipe:: default
#
# Copyright 2015, Nilesh Londhe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

cookbook_file "/tmp/install_dbuser.sh" do
  source "install_dbuser.sh"
  mode '0700'
  owner 'user'
  group 'user'
end

bash 'install_dbuser' do
  user 'user'
  cwd '/tmp'
  code <<-EOH
  sh ./install_dbuser.sh
  EOH
end
