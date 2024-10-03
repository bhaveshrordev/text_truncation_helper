# frozen_string_literal: true

require_relative "lib/text_truncation_helper/version"

Gem::Specification.new do |s|
  s.name        = 'text_truncation_helper'
  s.version     = '0.1.0'
  s.summary     = 'A simple text truncation helper for Rails apps'
  s.description = 'A Ruby on Rails gem for truncating text and adding a Read More link'

  s.files       = Dir.glob("**/*") - Dir.glob("*.gem")  # Exclude the .gem file from packaging
  s.authors     = ['bhaveshrordev']
  s.email       = 'salujabhavesh24@gmail.com'
  
  # Add the correct URL for your gem's repo or homepage
  # s.homepage    = 'https://github.com/bhavesh/text_truncation_helper'
  
  s.license     = 'MIT'
  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rails'
  s.add_development_dependency 'rspec'
end
