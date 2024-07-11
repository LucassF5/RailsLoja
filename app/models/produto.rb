class Produto < ApplicationRecord
  belongs_to :departamento # pertence a um departamento

  validates :nome, presence: true
  validates :descricao, presence: true, length: {minimum: 10}
  validates :preco, presence: true
  validates :quantidade, presence: true
end
