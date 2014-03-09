OpsComm::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'report', to: 'report#contact'
  post 'report', to: 'report#submit'
  root to: redirect("/report")
end
