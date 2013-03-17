require 'spec_helper'

describe UsersController do
  it 'should save email addresses' do
    post :create, :email => "bob@pants.com"
    User.count().should == 1
  end
end