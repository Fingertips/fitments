# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

task default: :test

Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/cases/**/*_test.rb']
  t.verbose = true
  t.warning = false
end
