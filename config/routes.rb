OpsComm::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :users
  get 'report', to: 'report#contact'
  post 'report', to: 'report#submit'
  root to: redirect("/report")
end
