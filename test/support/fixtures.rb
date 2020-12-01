# frozen_string_literal: true

require 'erb'
require 'yaml'

module Support
  module Fixtures
    FIXTURES_PATH = File.expand_path('../fixtures', __dir__)

    def fixture_path(name)
      File.join(FIXTURES_PATH, "#{name}.yml")
    end

    def load_fixture(name)
      # rubocop:disable Security/YAMLLoad
      YAML.load(ERB.new(File.read(fixture_path(name))).result)
      # rubocop:enable Security/YAMLLoad
    end
  end
end
