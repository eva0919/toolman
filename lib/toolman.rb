require "toolman/version"
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

	class ToolmanS
		
		def initialize
			@tempPoint = 0 
			@circle = ["|","\\","-","/"]
			@circleSize = @circle.size
			@loadBarPid = 0
			@colorMechine = Color.new
		end
		
		def puts
			@colorMechine
		end
		

		def say(data)
			puts "\n>>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>"
			puts "#{data}"
			puts ">>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>\n"
		end

		def loading_bar(nowPoint,endPoint)
			read, write = IO.pipe
			@loadBarPid = fork {
					
				
				write.close
				continue = true
				sleep_time = 1.0/7.0
				index = 0 
				while(continue) do
					p = (( (nowPoint*1.0) / endPoint) * 100).floor
					print "\r"
					print "                                                  \r"
					print "%5d%s%3s%-3s" % [p,"%","#{@circle[@tempPoint]}",""]
					@tempPoint = (@tempPoint + 1) % @circleSize
					if p == 100
						print "\r"
						print "                                                  \r"
						print "%5d%s%3s%-3s" % [p,"%","",""]
						read.close
						exit(0)
					end
					sleep(sleep_time)
					s = IO.select([read],[],[],sleep_time)
					if s 
						result = read.read(1)
						if result
							if result.to_i == 1
								nowPoint += 1
							elsif result.to_i == 0
								puts ""
								puts "Early break..."
								read.close
								exit(0)
							end
						end
						index += 1
					end

					
				end

			}
			read.close
			@write = write
			# Process.wait(@loadBarPid)
			# puts "hi"
		end

		def loading_bar_add()
			@write.write(1)
		end

		def loading_bar_end()
			@write.write(0)
		end
	end

	class Color
		def red(string)
			puts colorize1(string, 31)
		end

		def green(string)
			puts colorize1(string, 32)
		end
		def blue(string)
			puts colorize1(string, 33)
		end

		def blue(string)
			puts colorize1(string, 34)
		end

		def cyan(string)
			puts colorize1(string, 36)
		end


		def colorize2(text, color_code)
		  "\e[1;#{color_code}m#{text}\e[0m"
		end
		def colorize1(text, color_code)
		  "\e[#{color_code}m#{text}\e[0m"
		end
	end

end
