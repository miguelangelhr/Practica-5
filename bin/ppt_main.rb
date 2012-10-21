# -------------------------------------------
#|  Autor: Miguel Angel Hernandez Rodriguez  |
#|  Clase: PiedraPapelTijera                 |
#|  Fecha Finalizacion: 21/10/2012           |
# -------------------------------------------

require 'ppt'

puts "\n ----------------------------- \n"
puts "| JUEGO PIEDRA PAPEL O TIJERA |\n"
puts " ----------------------------- \n"


# Obtenemos la jugada del jugador
#---------------------------------
puts " ---> Introduzca su jugada(Piedra, Papel o Tijera): "
STDOUT.flush
jugador = gets.chomp


# Empiesa el juego
#-------------------
@ppt_obj = PiedraPapelTijera.new(jugador.downcase)
resultado = @ppt_obj.jugar()


# Resultado del Juego
#----------------------
puts "\n RESULTADO: "

if (resultado == "gana".to_sym)

	puts "---> El Jugador (#{@ppt_obj.jugador}) #{resultado} a la Maquina (#{@ppt_obj.maquina})\n\n"

elsif (resultado == "pierde".to_sym)

	puts "---> El Jugador (#{@ppt_obj.jugador}) #{resultado} con la Maquina (#{@ppt_obj.maquina})\n\n"

else

	puts "---> #{resultado.capitalize} entre el Jugador (#{@ppt_obj.jugador}) y la Maquina (#{@ppt_obj.maquina})\n\n"

end

