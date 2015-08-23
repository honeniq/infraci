require 'spec_helper'

# Workaround needed for circleCI
if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe "nodejs" do
  describe package('nodejs') do
    it { should be_installed }
  end
end

describe "npm" do
  describe package('npm') do
    it { should be_installed }
  end
end
