require "toolman/version"
module Toolman
	
	def self.new
		ToolObject.new
	end

	def self.done
			puts "\n=============================\n   Done!\n   Every thing is good!\n=============================\n"
	end

	def self.testForNumber(beTest,testFor,say)
		if beTest == testFor
			puts "\nDeBugMan Say : #{say}\n"
		else
			puts "\nDeBugMan Say :Error!\n"
		end
	end

	def self.putValue(data)
		puts "\n>>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>"
		puts "#{data}"
		puts ">>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>\n"
	end
	

	class ToolObject
		
		def initialize
			@tempPoint = 0 
			@circle = ["|","\\","-","/"]
			@circleSize = @circle.size
		end

		

		def say(data)
			puts "\n>>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>"
			puts "#{data}"
			puts ">>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>\n"
		end

		def loading_bar(nowPoint,endPoint)
			p = (( (nowPoint*1.0) / endPoint) * 100).floor
			print "\r"
			print "                                                  \r"
			print "#{p}%#{@circle[@tempPoint]}"
			@tempPoint = (@tempPoint + 1) % @circleSize
		end
	end
end
