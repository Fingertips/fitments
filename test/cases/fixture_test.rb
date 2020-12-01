# frozen_string_literal: true

require_relative '../test_helper'

module Fitments
  class FixtureTest < Minitest::Test
    include Support::Fixtures

    def test_completes_a_top_level_fixture
      person = load_fixture(:person)
      assert_kind_of Person, person
      refute_nil person.name
    end

    def test_coerces_a_person_to_json
      attributes = JSON.parse(load_fixture(:person).to_json)
      assert_equal %w[name started_at], attributes.keys
    end

    def test_completes_fixture_attibutes
      load_fixture(:people).each do |_label, person|
        assert_kind_of Person, person
        refute_nil person.name
      end
    end
  end
end
