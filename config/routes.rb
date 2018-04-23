Rails.application.routes.draw do
  root to: proc { [200, {}, ["Hello world!"]] }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
