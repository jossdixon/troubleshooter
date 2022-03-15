Rails.application.routes.draw do
  root to: 'templates#index'

  resources :templates

  resources :templates do
    resources :template_items, only: [:new, :create, :index]
  end

  resources :template_items do
    resources :checklist_items, only: [:new, :create]
  end

  resources :template_items, only: [:destroy]

  resources :checklists do
    resources :checklist_items, only: [:show, :index]
  end

end
