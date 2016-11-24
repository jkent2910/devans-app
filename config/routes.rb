Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get '/control_center' => 'welcome#control_center', as: 'control_center'

  resources :decks do
    resources :cards do
      resources :card_fronts, shallow: true
      resources :card_backs, shallow: true
    end
  end

end
