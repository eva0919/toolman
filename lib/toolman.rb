require "toolman/version"
require "toolman/color"
require "toolman/toolobject"
require "toolman/toolS"
module Toolman
	
	def self.new
		ToolObject.new
	end

	def self.new_special
		ToolmanS.new
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
	

end
