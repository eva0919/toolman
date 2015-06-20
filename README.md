# Toolman

A wrap for tool that I create by myself.

## Installation

### RubyGem
Add this line to your application's Gemfile:

    gem 'toolman'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install toolman

### Clone from github
Step1: Clone this gem to your dir

    git clone

Step2: Gem build

	gem build debugman.gemspec

Step3: Gem install

	gem install ./debugman-0.0.1.gem
	(0.0.1 is version number and will change)
## Usage

Create a instance

	man = Toolman.new
	man.say "hi"
	# => >>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>
	# => hi
	# => >>>>>>>>>>>>>>>>>Messange>>>>>>>>>>>>>>>>>

## Contributing

1. Fork it ( https://github.com/[my-github-username]/toolman/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
