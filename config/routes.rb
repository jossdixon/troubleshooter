Rails.application.routes.draw do
  root to: 'templates#index'

  # resources :templates

  resources :templates do
    resources :template_items, only: [:new, :create, :destroy, :update, :edit]
  end

  resources :checklists do
    resources :checklist_items, only: [:show, :index]
  end

end
