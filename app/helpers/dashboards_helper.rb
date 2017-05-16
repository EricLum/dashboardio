module DashboardsHelper

  def dashboard_params
    params.require(:dashboard).permit(:username)
  end
  
end
