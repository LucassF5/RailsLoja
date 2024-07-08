Rails.application.routes.draw do
  root to: "produtos#index"
  # get "produtos", to: "produtos#index"
  # Requisição GET => para a rota produtos => para o controller produtos => para o método/view index
end
