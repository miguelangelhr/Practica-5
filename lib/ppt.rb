# -------------------------------------------
#|  Autor: Miguel Ángel Hernández Rodríguez  |
#|  Clase: PiedraPapelTijera                 |
#|  Fecha Finalización: 19/10/2012           |
# -------------------------------------------

# encoding: UTF-8

class PiedraPapelTijera

	attr_accessor :tiradas, :ganadoras, :resultados
	attr_reader :jugador, :maquina, :resultado

	def initialize (tiradas, ganadoras, resultados, jugador, maquina)

		@tiradas = tiradas
		@ganadoras = ganadoras
		@jugador = jugador.to_sym
		@maquina = maquina.to_sym
		@resultados = resultados

	end

	def jugada_humano (jugada) 

		@jugador = jugada.to_sym
		raise TypeError unless @tiradas.include?(@jugador)

	end

	def jugada_maquina ()
		@maquina = @tiradas.sample
	end

	def jugar ()

		# Obtenemos la jugada aleatoria de la maquina
		jugada_maquina()
		
		# Si la jugada es igual a la de la maquina existe un empate		
		if (@jugador == @maquina)

			@resultado = @resultados[2]

		# Si la jugada del jugador gana a la maquina, el jugador gana
		elsif (@jugador == @ganadoras[@maquina])

			@resultado = @resultados[0]

		# Si la jugada del jugador pierde con la maquina, el jugador pierde
		else

			@resultado = @resultados[1]

		end

	end

end
