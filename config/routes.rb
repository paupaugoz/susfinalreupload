Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/index", to: "pages#home"
  get "/about", to: "pages#about"
  get "/user_profile", to: "votes#user_profile"
  get "/delete/:id", to: "pages#archive_user"
  get "/users", to: "pages#users_summary"
  get "/users_summary", to: "users#users_summary"
  resources :candidates
  get "/positions/:id", to: "positions#show"

  get '/candidates_list', to: 'votes#index', as: :candidates_list
  get '/vote', to: 'votes#vote', as: :vote
  post '/confirm_vote', to: 'votes#confirm_vote', as: :confirm_vote
  get '/vote_history', to: 'votes#vote_history', as: :vote_history
  

  namespace :admin do 
    resources :candidates
    get "/positions/:id", to: "positions#show"

  end
end
