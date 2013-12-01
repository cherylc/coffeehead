Coffeehead::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get '/unauthorized', to: 'application#unauthorized'
end
