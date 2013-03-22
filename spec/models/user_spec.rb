require 'spec_helper'

describe User do
  context "new User" do
    subject { User.new }
    its(:workspaces){ should be_empty }
  end
end
