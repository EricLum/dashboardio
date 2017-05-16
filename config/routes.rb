Rails.application.routes.draw do

  resources :registrations
  resources :dashboards do
    resources :goals
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'


end
