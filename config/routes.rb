Haml2slim::Application.routes.draw do
  resources :conversions,
    only: [:new, :create],
    path: '',
    path_names: {:new => ''}
end
