require 'spec_helper'

describe User do

  before { @user = User.new name: "algo", lastname: "apellido" }

  subject { @user }

  describe 'when try to create a user' do
	it { should be_valid }
	
	describe 'when try to create a user' do
	  before { @user.save }
	  
	  it { @user.office.name.should == Office::DEFAULT_VALUES[:name] }
	  
	  it { @user.office.name.should == Office::DEFAULT_VALUES[:name] }
	end
	
  end
  
end
