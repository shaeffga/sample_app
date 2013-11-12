SampleApp::Application.routes.draw do
  match '/sign_up', to: 'users#new', via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '', to: 'static_pages#home', via: 'get'
  match '/blog', to: 'static_pages#blog', via: 'get'

  resources :users

  root to: 'static_pages#home'
end
