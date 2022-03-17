Rails.application.routes.draw do
  root to: 'templates#index'

  # resources :templates

  resources :templates do
    resources :template_items, only: [:new, :create, :destroy, :update, :edit]
  end

  resources :templates do
    resources :checklists, only: [:new, :create]
  end

  resources :template_items do
    resources :checklist_items, only: [:new, :create]
  end

  resources :checklists do
    resources :checklist_items, only: [:show, :index]
  end

end
