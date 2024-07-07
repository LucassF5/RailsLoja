Rails.application.routes.draw do
  get "produtos", to: "produtos#index"
  # Requisição GET => para a rota produtos => para o controller produtos => para o método/view index
end
