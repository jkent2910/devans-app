Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/welcome_message' => 'welcome#welcome_message', as: 'welcome_message'
  get '/control_center' => 'welcome#control_center', as: 'control_center'
  get '/random_quick_workout' => 'quick_workouts#random_quick_workout', as: 'random_quick_workout'
  get '/random_medium_workout' => 'medium_workouts#random_medium_workout', as: 'random_medium_workout'

  post '/decks/get_next_card' => 'decks#get_next_card'
  post 'cards/check_answer' => 'cards#check_answer'


  resources :decks do
    member do
      get :play_deck
    end
    resources :cards do
      resources :card_fronts, shallow: true
      resources :card_backs, shallow: true
    end
  end

  resources :quick_workouts
  resources :medium_workouts

end
