#
# Cookbook Name:: htop
# Recipe:: default
#
# Copyright 2011-2012, Phil Cohen
#

package "htop" do
  version node['htop']['version']
end
