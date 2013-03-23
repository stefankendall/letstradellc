require 'spec_helper'

describe UsersController do
  it 'should save email addresses' do
    post :create, :email => "bob@pants.com"
    User.count().should == 1
  end

  it 'should delete users' do
    post :create, :email => "bob@pants.com"
    post :create, :email => "bob2@pants.com"
    post :destroy, :id => '2'
    User.count().should == 1
    User.first().email.should == 'bob@pants.com'
  end
end