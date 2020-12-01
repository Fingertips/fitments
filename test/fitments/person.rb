# frozen_string_literal: true

# A person fitment.
class Person
  include Fitments::Fixture

  emits :name, :email, :started_at

  NAMES = [
    'Marcy Abbott',
    'Wai Simonis',
    'Alisia Walker',
    'Romeo Pouros'
  ].freeze

  def name
    NAMES.sample
  end

  def started_at
    Time.now
  end
end
