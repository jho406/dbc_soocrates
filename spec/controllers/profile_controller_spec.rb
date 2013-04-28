require 'spec_helper'

describe ProfileController do
  render_views
  let(:cohort){Cohort.create(:name=>"test")}
  let(:user){cohort.users.create(:email=>"j@j.com", :password=>'123', :password_confirmation=>'123')}

  before do
    session[:user_id] = user.id
  end

  it "should show the user profile" do
    get :show, :format=>:json
    profile = JSON.parse(response.body)
    profile["user"]["email"].should eql("j@j.com");
  end
end
