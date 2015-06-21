require "toolman/color"
class ToolObject
	def initialize
		@tempPoint = 0 
		@circle = [">",">>",">>>",">>>>"," >>>","  >>","   >","    "]
		@circleSize = @circle.size
		@colorMechine = Color.new
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
		print "%5d%-3s%-5s%-3s" % [p,"%","#{@circle[@tempPoint]}",""]
		@tempPoint = (@tempPoint + 1) % @circleSize
	end

	def puts
		@colorMechine
	end
end