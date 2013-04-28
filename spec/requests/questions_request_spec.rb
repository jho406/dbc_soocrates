require 'spec_helper'

describe 'Question' do
  let(:user){User.create(:email=>"j@j.com", :password=>'123', :password_confirmation=>'123')}

  before do
    visit root_url

    fill_in 'user_email',   with: user.email
    fill_in 'user_password', with: "123"
    click_button "login"
  end


end
