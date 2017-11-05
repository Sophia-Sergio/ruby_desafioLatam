# modulo
module Formula
  def perimetro
    perimetro = @lado ? @lado * 4 : @largo * 2 + @ancho * 2
  end

  def area
    area = @lado ? @lado * @lado : @largo * @ancho
  end
end

# ejercicio 2
class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts @largo
    puts @ancho
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts @lado
  end
end

cuadrado = Cuadrado.new(5)
puts cuadrado.perimetro
puts cuadrado.area

rectangulo = Rectangulo.new(4, 10)
puts rectangulo.perimetro
puts rectangulo.area
