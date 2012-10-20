# -------------------------------------------
#|  Autor: Miguel Angel Hernandez Rodriguez  |
#|  Clase: PiedraPapelTijera                 |
#|  Fecha Finalizacion: 19/10/2012           |
# -------------------------------------------

require 'ppt'

tiradas = [:piedra, :papel, :tijera]
ganadoras = {tiradas[0] => tiradas[2], tiradas[1] => tiradas[0], tiradas[2] => tiradas[1]}
resultados = [:gana, :pierde, :empate]

@ppt_obj = PiedraPapelTijera.new(tiradas, ganadoras, resultados, "tijera", "papel")

puts @ppt_obj.jugar()

