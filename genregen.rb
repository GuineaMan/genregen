#!/usr/bin/env ruby

require 'yaml'

module GenreGen
	DATA = YAML::load_file('data.yml')

	def self.generate
		template = DATA['templates'].sample
		fill_template(template)
	end

	def self.fill_template(template)
		template % {
			adjective: adjective,
			genre: genre,
			prefix: prefix,
			suffix: suffix
		}
	end

	def self.adjective
		# todo: chains of adjectives
		DATA['adjectives'].sample
	end

	def self.genre
		DATA['genres'].sample
	end

	def self.prefix
		DATA['prefixes'].sample
	end

	def self.suffix
		DATA['suffixes'].sample
	end
end

puts GenreGen.generate
