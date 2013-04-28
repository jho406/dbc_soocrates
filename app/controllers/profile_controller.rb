class ProfileController < ApplicationController
  respond_to :json
  def show
    @user = current_user
    # Rabl::Renderer.json(@user, 'profile/show')
  end
end
