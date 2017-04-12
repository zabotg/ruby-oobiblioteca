require_relative "produto"

class Livro
   include Produto

   def initialize(titulo, preco, ano_lancamento, possui_reimpressao,
      editora, sobrecapa)
      @titulo = titulo
      @ano_lancamento = ano_lancamento
      @possui_reimpressao = possui_reimpressao
      @sobrecapa = sobrecapa
      @preco = calcula_preco(preco)
      @editora = editora
   end

   def matches?(query)
      ["livro", "impresso"].include?(query)
   end

   def possui_reimpressao?
      @possui_reimpressao
   end

end
