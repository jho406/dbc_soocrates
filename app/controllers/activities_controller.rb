class ActivitiesController < ApplicationController
  def index
    @activity = current_user.activities.new()
    @activities = Activity.all
  end

  def create
    @activity = current_user.activities.create(params[:activity])
  end
end
