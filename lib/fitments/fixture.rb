# frozen_string_literal: true

module Fitments
  # Include this in your generator class to transparently coerce to values.
  module Fixture
    def self.included(something)
      something.extend(ClassMethods)
    end

    def as_json
      attributes
    end

    def to_json(*_options)
      JSON.dump(as_json)
    end

    def read_attribute(name)
      if respond_to?(name)
        public_send(name)
      else
        instance_variable_get("@#{name}")
      end
    end

    def attributes
      self.class.attribute_names.each_with_object({}) do |name, attributes|
        attributes[name] = read_attribute(name)
      end.compact
    end

    module ClassMethods
      attr_reader :attribute_names

      def emits(*attributes)
        @attribute_names = attributes
      end
    end
  end
end
