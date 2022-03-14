Rails.application.routes.draw do
  resources :checklist_items
  resources :checklists
  resources :template_items
  resources :templates
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
