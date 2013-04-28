require 'spec_helper'

describe QuestionsController do
  render_views

  let(:user){User.create(:email=>"j@j.com", :password=>'123', :password_confirmation=>'123')}

  before do
    session[:user_id] = user.id
  end

  it "should list questions" do
    result = [{"question"=>{"body"=>"test", "resolve"=>"/questions/1/resolve"}}]
    question = user.questions.create!(:body=>"test") 
    get :index, :format=>:json
    JSON.parse(response.body).should eql(result);
  end

  it "should create a question" do
    expect{
      post :create, :format=>:json, :question=>{:body=>"test1"}
      }.to change(Question,:count).by(1)
  end

  it "should resolve a question" do
    question = user.questions.create!(:body=>"test") 
    expect{
      post :resolve, :format=>:json, :question=>{:body=>"test1"}
      }.to change(Question,:count).by(1)
  end

end
