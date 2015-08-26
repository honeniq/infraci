require 'spec_helper'

# Workaround needed for circleCI
if ENV['CIRCLECI']
  class Docker::Container
    def remove(options={}); end
    alias_method :delete, :remove
  end
end

describe "fluentd" do
  describe package("fluentd") do
    it { should be_installed.by("gem") }
  end
end
