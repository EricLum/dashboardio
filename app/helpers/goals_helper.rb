module GoalsHelper

  def goal_params
    params.require(:goal).permit(:name)
  end
end
