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
	
	#def test_variety
		#answers = []
		#20.times.do
		#	answers.push RockPaperScissors.throw
		#end
		#assert(answers)
			
	#end
			
end

