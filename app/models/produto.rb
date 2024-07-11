class Produto < ApplicationRecord
  belongs_to :departamento, optional: true # pertence a um departamento

  validates :nome, presence: true
  validates :descricao, presence: true #, length: {minimum: 10}
  validates :preco, presence: true, numericality: {greater_than: 0}
  validates :quantidade, presence: true
end
