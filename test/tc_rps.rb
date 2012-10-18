require 'rps'
require 'test/unit'

#ejecutar el test: ruby -Ilib test/tc_rps.rb

class TestRockPaperScissors < Test::Unit::TestCase
	def setup
	
	end
	
	def teardown
	
	end
	
	def test_wrong_play #assert que compruebe que si juega mal
		assert_raise(SyntaxError) {RockPaperScissors.play('loquesea')}
	end
	
	def test_variety
		answers = []
		resultado = ['piedra', 'papel', 'tijeras']
		20.times{
			answers.push RockPaperScissors.computer_play
		}
		final = resultado | answers
		
		assert_equal(3, final.size(), "poca variedad")
	end
end