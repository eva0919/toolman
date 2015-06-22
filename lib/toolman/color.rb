class Color
	def red(string)
		puts colorize1(string, 31)
	end

	def red!(string)
		puts colorize2(string, 31)
	end

	def green(string)
		puts colorize1(string, 32)
	end

	def green!(string)
		puts colorize2(string, 32)
	end

	def yellow(string)
		puts colorize1(string, 33)
	end

	def yellow!(string)
		puts colorize2(string, 33)
	end

	def blue(string)
		puts colorize1(string, 34)
	end

	def blue!(string)
		puts colorize2(string, 34)
	end

	def cyan(string)
		puts colorize1(string, 36)
	end

	def cyan!(string)
		puts colorize2(string, 36)
	end

	def white(string)
		puts colorize2(string, 37)
	end


	def colorize2(text, color_code)
	  "\e[1;#{color_code}m#{text}\e[0m"
	end
	def colorize1(text, color_code)
	  "\e[#{color_code}m#{text}\e[0m"
	end

	def color_list
		print "puts.red \"string\" => ";red("string");
		print "puts.red! \"string\" => ";red!("string");
		print "puts.green \"string\" => ";green("string");
		print "puts.green! \"string\" => ";green!("string");
		print "puts.yellow \"string\" => ";yellow("string");
		print "puts.yellow! \"string\" => ";yellow!("string");
		print "puts.blue \"string\" => ";blue("string");
		print "puts.blue! \"string\" => ";blue!("string");
		print "puts.cyan \"string\" => ";cyan("string");
		print "puts.cyan! \"string\" => ";cyan!("string");
		print "puts.white \"string\" => ";white("string");
	end
end
