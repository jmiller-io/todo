Rails.application.routes.draw do
  get 'welcome/index'

  resources :adventures

  root 'welcome#index'
end
