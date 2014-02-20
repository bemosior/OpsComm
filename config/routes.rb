OpsComm::Application.routes.draw do
  devise_for :users
  get "report/contact"
end
