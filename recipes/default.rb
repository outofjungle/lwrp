#
# Cookbook Name:: lwrp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

custom_file '/tmp/custom' do
  content 'this is a test'
  link '/tmp/link'
  owner 'vagrant'
  group 'users'
  mode 00777
end
