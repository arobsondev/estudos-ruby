class Biblioteca
  attr_reader :livros

  def initialize
    @livros = {}
  end

  def adicionar(livro)
    @livros[livro.categoria] ||= []
    @livro[livro.categoria] << livro
  end

  def livros
    @livros.values.flaten
  end

  def livros_por_categoria(categoria)
    @livros[categoria].each do |livro|
      yield livro if block_given?
    end
  end
end
