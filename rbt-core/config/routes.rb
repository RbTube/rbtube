Rails.application.routes.draw do
  if Rails.env.development?
    require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :members, 
    defaults: { format: :json }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
