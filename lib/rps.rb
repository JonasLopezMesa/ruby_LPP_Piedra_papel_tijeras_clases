

class RockPaperScissors

	opciones = { :piedra => :tijeras, :papel => :piedra, :tijeras => :papel }
	tirada = opciones.keys

	def play(player_throw)

		puts "Escoje uno de #{tirada.join(', ')}: "
		tirada_jugador = gets.chomp.to_sym 

		raise ScriptError, "Tu debes ejecutar: ''#{$0}'' seguido por uno de los siguientes '#{tirada.join(', ')}'" unless tirada.include? tirada_jugador


		aleatorio = rand(2)
		tirada_maquina = tirada[aleatorio]

		#tirada_maquina = tirada.sample #tirada aleatoria

		if tirada_jugador == tirada_maquina
			answer = "Empate"
		elsif tirada_jugador == opciones[tirada_maquina]
			answer = "Gana la máquina; #{tirada_maquina} gana a #{tirada_jugador}"
		else
		answer = "Bien hecho. #{tirada_jugador} gana a #{tirada_maquina}"
		end
	end #play
	
	
	def computer_play
		aleatorio = rand(2)
		tirada_maquina = tirada[aleatorio]
	end
	
	
end #RockPaperScissors

