class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all.order :nome
    @produto_com_desconto = Produto.order(:preco).limit 2
  end

  def new
    @produto = Produto.new
    @departamentos = Departamento.all
  end

  def create
    produto_params = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :departamento_id)
    # Estabelece os parâmetros que o método create irá receber
    @produto = Produto.new produto_params
    # Cria um novo produto com os parâmetros recebidos
    if @produto.save
      flash[:notice] = "Produto salvo com sucesso" # Adiciona uma mensagem de sucesso
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
    # Redireciona para a página raiz

    # Na ordem, o método create faz:
    # 1. Recebe os parâmetros do formulário
    # 2. Cria um novo produto com esses parâmetros
    # 3. Redireciona para a página raiz
  end

  def edit
    id = params[:id]
    @produto = Produto.find id
    @departamentos = Departamento.all # Busca todos os departamentos
    render :new
  end

  def update
    @produto = Produto.find params[:id]
    @departamentos = Departamento.all
    produto_params = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :departamento_id)
    if @produto.update produto_params
      flash[:notice] = "Produto atualizado com sucesso"
      redirect_to root_path
    else
      render :new
    end

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

  def busca
    @nome = params[:id]
    @produtos = Produto.where "nome like ?", "%#{@nome}%"
  end

  # private
  # def produto_params
  #   params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :departamento_id)
  # end
end
