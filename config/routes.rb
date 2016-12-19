Rails.application.routes.draw do
  root :to => "links#index"

  get 'links', to: 'links#index'
  post 'links/create'
  get ':short_key' => 'links#redirect', as: 'links_redirect'
end
