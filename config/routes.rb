Rails.application.routes.draw do
  resources :generic_models
  resources :matriculas

  #resources :aluno
  get 'alunos', to: 'alunos#index'
  get 'alunos/:id', to: 'alunos#show', as: 'aluno_especifico'

  root 'matriculas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
