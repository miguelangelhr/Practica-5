# -------------------------------------------
#|  Autor: Miguel Angel Hernandez Rodriguez  |
#|  Clase: PiedraPapelTijera                 |
#|  Fecha Finalizacion: 21/10/2012           |
# -------------------------------------------

require 'ppt'
require 'test/unit'

class TestPiedraPapelTijera < Test::Unit::TestCase

	def setup
		@ppt_obj = PiedraPapelTijera.new("tijera")
	end

	def test_jugar()

		@ppt_obj.jugada_humano('piedra')
		marcador = []

		30.times do
			marcador.push(@ppt_obj.jugar())
		end

		assert(marcador.uniq.length >= 3, "---> No se han obtenido los 3 resultados esperados --> marcador.uniq.length = #{marcador.uniq.length}")

	end

	def test_variado()

		@ppt_obj.jugada_humano(@ppt_obj.tiradas.sample.to_s)
		respuestas = []

		30.times do
			respuestas.push(@ppt_obj.jugar())
		end

		assert(respuestas.uniq.length >= 3, "---> No se han obtenido los 3 tipos de respuestas esperados")

	end

	def test_erroneo()

		assert(TypeError) {@ppt_obj.jugada_humano("caja")}

	end

end
