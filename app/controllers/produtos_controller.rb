class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all.order :nome
    @produto_com_desconto = Produto.order(:preco).limit 2
  end

  def create
    produto_params = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    # Estabelece os parâmetros que o método create irá receber
    Produto.create produto_params
    # Cria um novo produto com os parâmetros recebidos
    redirect_to root_path
    # Redireciona para a página raiz

    # Na ordem, o método create faz:
    # 1. Recebe os parâmetros do formulário
    # 2. Cria um novo produto com esses parâmetros
    # 3. Redireciona para a página raiz
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to root_path

    # Na ordem, o método destroy faz:
    # 1. Recebe o id do produto a ser deletado
    # 2. Deleta o produto com esse id
    # 3. Redireciona para a página raiz
  end
end
