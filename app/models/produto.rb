class Produto < ApplicationRecord

  validates :nome, presence: true
  validates :descricao, presence: true, length: {minimum: 10}
  validates :preco, presence: true
  validates :quantidade, presence: true
end
