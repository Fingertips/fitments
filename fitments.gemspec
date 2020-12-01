# frozen_string_literal: true

require File.expand_path('lib/fitments/version', __dir__)

Gem::Specification.new do |spec|
  spec.name = 'fitments'
  spec.version = Fitments::VERSION
  spec.authors = [
    'Manfred Stienstra'
  ]
  spec.email = [
    'manfred.stienstra@fngtps.com'
  ]
  spec.summary = <<-SUMMARY
  Tools for automatically generating development and test data.
  SUMMARY
  spec.description = <<-DESCRIPTION
  Fitments provides a number of classes that help with generating development
  and test data.
  DESCRIPTION
  spec.homepage = 'https://github.com/Fingertips/fitments'
  spec.license = 'MIT'

  spec.files = Dir.glob('lib/**/*') + [
    'LICENSE.txt',
    'README.md'
  ]
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'activerecord', '>= 5'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'sqlite3', '~> 1'
end
