Rails.application.routes.draw do
  api_version(module: 'Api::V1', header: { name: 'Accept', value: 'application/vnd.club-tracker.json; version=1' }) do
    scope path: :api do
      scope path: :v1 do
        resources :distances, module: :distances
        
      end
    end
  end
end
