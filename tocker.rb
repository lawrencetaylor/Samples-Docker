require 'json'
require 'rubygems'
require 'erb'
require 'hashie'
require 'optparse'
require 'ostruct'

class OptionsParser

	def self.parse(args)
		options = OpenStruct.new
		options.configFile = nil

		opt_parser = OptionParser.new do |opts|
			opts.on("-c", "--config CONFIG_FILE", "Config File") do |c|
				options.configFile = c
			end

			opts.on("-t", "--target TARGET_DIRECTORY", "Target Directory") do |t|
				options.targetDirectory = t
			end

			opts.on("-dt", "--docker-template DOCKER_TEMPLATE", "Docker Target") do |dt|
				options.dockerTemplate = dt
			end

		end

		opt_parser.parse!(args)
		options

	end

	def self.validate(options)

		isValid = true

		if(options.configFile.nil?)
			puts "Unspecified config file"
			isValid = false
		end

		if(options.targetDirectory.nil?)
			puts "Unspecified target directory"
			isValid = false
		end

		if(options.dockerTemplate.nil?)
			puts "Unspecified docker file template"
			isValid = false
		end

		isValid

	end

end	

options = OptionsParser.parse(ARGV)
isValid = OptionsParser.validate(options)
unless isValid
	puts "Invalid arguments.  Use --help to view options"
else
	configJson = File.open(options.configFile).read
	configMap = JSON.parse(configJson)
	config = Hashie::Mash.new configMap

	template = File.open(options.dockerTemplate).read
	renderer = ERB.new(template)

	dockerFilePath = File.join(options.targetDirectory, "Dockerfile")
	File.open(dockerFilePath, 'w') do |f|
		f.write renderer.result()
	end
end








