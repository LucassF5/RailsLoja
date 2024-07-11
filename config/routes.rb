Rails.application.routes.draw do
  resources :departamentos
  root to: "produtos#index" # Rota raiz, renderiza a página index do controller produtos
  # get "produtos/new", to:"produtos#new" # Buscar a página de criação de um novo produto
  # Requisição GET => para a rota produtos => para o controller produtos => para o método/view index

  # post "produtos", to:"produtos#create" # Rota para criar um novo produto
  # Requisição POST => para a rota produtos => para o controller produtos => para o método create

  # delete "produtos/:id", to:"produtos#destroy", as: :produto
  # Requisição DELETE => para a rota produtos/:id => para o controller produtos => para o método destroy
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
end
