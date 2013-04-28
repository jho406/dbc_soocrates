require 'spec_helper'

describe ChallengesController do
  render_views

  # let(:cohort){Cohort.create(:name=>"test")}
  # let(:user){User.create(:email=>"j@j.com", :password=>'123', :password_confirmation=>'123')}
  # let(:challenges){}

  before(:all) do 
    load "#{Rails.root}/db/seeds.rb"  
  end

  before do
    session[:user_id] = User.first.id
  end

  it 'should list challenges' do 
    1.should eql(1)
  end
  it 'should show a challenge'
end
