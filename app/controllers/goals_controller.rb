class GoalsController < ApplicationController
include GoalsHelper
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.dashboard_id = params[:dashboard_id]
    @goal.save

    redirect_to dashboard_path(@goal.dashboard)
  end

  def index
    @goals = Goal.all
  end

  def show
    @goal =Goal.find(params[:id])
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update(goal_params)

    redirect_to dashboard_path(@goal.dashboard)
  end

end
