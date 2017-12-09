Rails.application.routes.draw do
  resources :evidences
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'evidences#index'
  #devise_for :users, path: '', path_names: { sign_in: '/', sign_out: '/', sign_up: '/'}

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'static_pages#home', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
