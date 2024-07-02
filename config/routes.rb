Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Lister toutes les tâches
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  # Afficher les détails d'une tâche
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Ajouter une nouvelle tâche
  post 'tasks', to: 'tasks#create'
  # Editer une tâche
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # Supprimer une tâche
  delete 'tasks/:id', to: 'tasks#destroy'
end
