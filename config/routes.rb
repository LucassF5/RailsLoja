Rails.application.routes.draw do
  root to: "produtos#index" # Rota raiz, renderiza a página index do controller produtos
  get "produtos/new", to:"produtos#new" # Buscar a página de criação de um novo produto
  # Requisição GET => para a rota produtos => para o controller produtos => para o método/view index

  post "produtos", to:"produtos#create" # Rota para criar um novo produto
  # Requisição POST => para a rota produtos => para o controller produtos => para o método create
end
