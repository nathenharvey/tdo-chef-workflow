#
# Cookbook Name:: web
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'web::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs httpd' do
      expect(chef_run).to install_package 'httpd'
    end

    it 'starts httpd' do
      expect(chef_run).to start_service 'httpd'
    end
  end

  context 'When all attributes are default, on an ubuntu platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new.({:platform => "ubuntu", :version => "14.04"})
      runner.converge(described_recipe)
    end

    it 'installs apache' do
      expect(chef_run).to install_package 'apache2'
    end
  end

end
