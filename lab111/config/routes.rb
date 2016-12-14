Rails.application.routes.draw do
  get 'input' => 'calc#input'

  get 'view' => 'calc#view'

  get 'db' => 'calc#xml'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
