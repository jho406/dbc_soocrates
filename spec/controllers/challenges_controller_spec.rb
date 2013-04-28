require 'spec_helper'

describe ChallengesController do
  render_views

  let(:cohort){Cohort.create(:name=>"test")}
  let(:user){User.create(:email=>"j@j.com", :password=>'123', :password_confirmation=>'123')}
  let(:challenges){}
  
  before do
    session[:user_id] = user.id
  end
  it 'should list challenges'
  it 'should show a challenge'
end
