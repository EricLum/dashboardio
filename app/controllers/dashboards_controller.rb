class DashboardsController < ApplicationController
include DashboardsHelper

  def new
    @dashboard = Dashboard.new
  end

  def show
    @dashboard = Dashboard.find(params[:id])
    @goal = Goal.new
    @goal.dashboard_id = @dashboard_id
  end

  def create
    @dashboard = Dashboard.new(dashboard_params)

    @dashboard.save
    redirect_to dashboard_path(@dashboard)
  end

end
