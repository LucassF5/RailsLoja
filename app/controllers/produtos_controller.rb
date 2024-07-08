class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all.order :nome
    @produto_com_desconto = Produto.order(:preco).limit 2
  end
end
