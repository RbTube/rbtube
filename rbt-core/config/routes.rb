Rails.application.routes.draw do
  if Rails.env.development?
    require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'
  end

  get '/', to: 'home#index'

  devise_for :members, 
    defaults: { format: :json }
end
