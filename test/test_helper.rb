# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'

require 'json'

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))
require 'fitments'

%w[support fitments].each do |path|
  Dir.glob(File.expand_path("#{path}/*.rb", __dir__)).sort.each do |filename|
    load filename
  end
end
