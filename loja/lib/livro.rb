class Livro
  attr_accessor :preco
  attr_reader :categoria
  attr_reader :isbn
  attr_reader :autor

  def initialize(autor, isbn = "1", numero_paginas, preco, categoria)
    @autor = autor
    @isbn = isbn
    @numero_paginas = numero_paginas
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Autor: #{@autor}, ISBN: #{@isbn}, Pág: #{@numero_paginas}, Preço: #{@preco}, Categoria: #{@categoria}"
  end

  def sql?(outro_livro) 
    @isbn == outro_livro.isbn
  end
end
