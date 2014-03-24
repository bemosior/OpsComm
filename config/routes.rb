OpsComm::Application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  ActiveAdmin.routes(self)
  devise_for :users
  get 'report', to: 'report#contact'
  post 'report', to: 'report#submit'
  root to: redirect("/report")
end
