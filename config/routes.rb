Rails.application.routes.draw do
  api_version(module: 'Api::V1', header: { name: 'Accept', value: 'application/vnd.club-tracker.json; version=1' }) do
    scope path: :api do
      scope path: :v1 do
        resources :config, module: :config
        
        resources :distances, module: :distances, only: :create
        resources :clubs, module: :clubs, only: :index
        
      end
    end
  end
end
