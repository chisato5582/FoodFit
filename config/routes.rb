Rails.application.routes.draw do
  get 'external_pages/show'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  get 'password_resets/new'
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  get 'question_tops/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "tops#index"

  get "login", to: "user_sessions#new"
  post "login", to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy"


  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]

  resources :password_resets, only: %i[new create edit update]

  namespace :admin do
    root to: 'questions#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'

    resources :questions
    post 'questions/create', to: 'questions#create', as: :create_question
  end

  resources :questions do
    collection do
      get 'nutrition_display'
      post 'nutrition_answer'
      get 'nutrition_explanation'
      get 'compound_display'
      post 'compound_answer'
      get 'compound_explanation'
    end
  end

  resources :external_pages, only: %i[show]

end
