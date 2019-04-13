Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'
  mount TrackUploader.upload_endpoint(:cache) => '/tracks/upload'
end
